param(
    [Parameter(Mandatory = $false)]
    [string]$SpecPath = "openapi/openapi.json",

    [Parameter(Mandatory = $false)]
    [string]$ConfigPath = "openapi/psopenapi.yaml",

    [Parameter(Mandatory = $false)]
    [string]$ModulePath = "PSLoginEnterprise",

    [Parameter(Mandatory = $false)]
    [bool]$SkipValidateSpec = $true
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

if (-not (Test-Path -LiteralPath $SpecPath)) {
    throw "OpenAPI spec not found at '$SpecPath'."
}

if (-not (Test-Path -LiteralPath $ConfigPath)) {
    throw "Generator config not found at '$ConfigPath'."
}

if (-not (Test-Path -LiteralPath $ModulePath)) {
    throw "Module path not found at '$ModulePath'."
}

$toolsDir = Join-Path -Path (Get-Location) -ChildPath ".tools/openapi-generator"
New-Item -Path $toolsDir -ItemType Directory -Force | Out-Null

$metadataUrl = "https://repo1.maven.org/maven2/org/openapitools/openapi-generator-cli/maven-metadata.xml"
Write-Host "Resolving latest openapi-generator-cli version from Maven metadata..."
$metadataXml = Invoke-RestMethod -Method Get -Uri $metadataUrl
$latestVersion = [string]$metadataXml.metadata.versioning.release

if ([string]::IsNullOrWhiteSpace($latestVersion)) {
    throw "Could not resolve latest openapi-generator-cli release version."
}

$jarName = "openapi-generator-cli-$latestVersion.jar"
$jarPath = Join-Path -Path $toolsDir -ChildPath $jarName
$jarUrl = "https://repo1.maven.org/maven2/org/openapitools/openapi-generator-cli/$latestVersion/$jarName"

Write-Host "Downloading openapi-generator-cli $latestVersion..."
Invoke-WebRequest -Uri $jarUrl -OutFile $jarPath

Write-Host "Generating PowerShell module to '$ModulePath'..."
$generatorArgs = @(
    "generate",
    "-i", $SpecPath,
    "-g", "powershell",
    "-o", $ModulePath,
    "-c", $ConfigPath
)

if ($SkipValidateSpec) {
    $generatorArgs += "--skip-validate-spec"
}

& java -jar $jarPath @generatorArgs

if ($LASTEXITCODE -ne 0) {
    throw "OpenAPI generation failed with exit code $LASTEXITCODE."
}

Write-Host "Applying post-processing steps..."
& "$PSScriptRoot/postprocess-generated-module.ps1" -ModulePath $ModulePath

if ($LASTEXITCODE -ne 0) {
    throw "Post-processing failed with exit code $LASTEXITCODE."
}

# Keep repository-level docs in sync with generated module docs.
$generatedReadme = Join-Path -Path $ModulePath -ChildPath "README.md"
$generatedDocsDir = Join-Path -Path $ModulePath -ChildPath "docs"
$repoDocsDir = "docs"
$repoReadme = "README.md"

if (Test-Path -LiteralPath $generatedReadme) {
    Copy-Item -LiteralPath $generatedReadme -Destination $repoReadme -Force
}

if (Test-Path -LiteralPath $generatedDocsDir) {
    if (-not (Test-Path -LiteralPath $repoDocsDir)) {
        New-Item -Path $repoDocsDir -ItemType Directory -Force | Out-Null
    }

    Get-ChildItem -Path $repoDocsDir -Filter "*.md" -File | Remove-Item -Force

    Get-ChildItem -Path $generatedDocsDir -File | ForEach-Object {
        Copy-Item -LiteralPath $_.FullName -Destination (Join-Path $repoDocsDir $_.Name) -Force
    }
}

Write-Host "Regeneration complete using openapi-generator-cli $latestVersion."

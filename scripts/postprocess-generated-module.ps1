param(
    [Parameter(Mandatory = $false)]
    [string]$ModulePath = "PSLoginEnterprise"
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

if (-not (Test-Path -LiteralPath $ModulePath)) {
    throw "Module path not found at '$ModulePath'."
}

function Replace-InFile {
    param(
        [Parameter(Mandatory = $true)]
        [string]$Path,

        [Parameter(Mandatory = $true)]
        [string]$Pattern,

        [Parameter(Mandatory = $false)]
        [string]$Replacement = "",

        [Parameter(Mandatory = $false)]
        [switch]$Regex
    )

    if (-not (Test-Path -LiteralPath $Path)) {
        return
    }

    $content = Get-Content -LiteralPath $Path -Raw
    $updated = if ($Regex) {
        [regex]::Replace($content, $Pattern, $Replacement)
    } else {
        $content.Replace($Pattern, $Replacement)
    }

    if ($updated -ne $content) {
        Set-Content -LiteralPath $Path -Value $updated -NoNewline
    }
}

$moduleReadmePath = Join-Path -Path $ModulePath -ChildPath "README.md"
$privateClientPath = Join-Path -Path $ModulePath -ChildPath "src/PSLoginEnterprise/Private/LEApiClient.ps1"
$docsPath = Join-Path -Path $ModulePath -ChildPath "docs"

# Amend 1: tolerate empty response content in LEApiClient (idempotent).
if (Test-Path -LiteralPath $privateClientPath) {
    $clientContent = Get-Content -LiteralPath $privateClientPath -Raw

    if ($clientContent -notmatch 'if \(\[string\]::IsNullOrEmpty\(\$Response\.Content\)\)') {
        $emptyResponsePatch = @'
        if ([string]::IsNullOrEmpty($Response.Content)) {
            return "OK"
        }

        return @{
            Response = DeserializeResponse -Response $Response.Content -ReturnType $ReturnType -ContentTypes $Response.Headers["Content-Type"]
            StatusCode = $Response.StatusCode
            Headers = $Response.Headers
        }
'@

        $clientContent = [regex]::Replace(
            $clientContent,
            '        return \@\{\r?\n            Response = DeserializeResponse -Response \$Response\.Content -ReturnType \$ReturnType -ContentTypes \$Response\.Headers\["Content-Type"\]\r?\n            StatusCode = \$Response\.StatusCode\r?\n            Headers = \$Response\.Headers\r?\n        \}',
            $emptyResponsePatch
        )
        Set-Content -LiteralPath $privateClientPath -Value $clientContent -NoNewline
    }
}

# Amend 2: bulk docs/readme text fixes.
$textFilePaths = @()
if (Test-Path -LiteralPath $docsPath) {
    $textFilePaths += Get-ChildItem -LiteralPath $docsPath -Filter "*.md" -File | Select-Object -ExpandProperty FullName
}
if (Test-Path -LiteralPath $moduleReadmePath) {
    $textFilePaths += $moduleReadmePath
}

foreach ($filePath in $textFilePaths) {
    Replace-InFile -Path $filePath -Pattern "Get-Configuration" -Replacement "Get-LEConfiguration"
    Replace-InFile -Path $filePath -Pattern "Set-Configuration" -Replacement "Set-LEConfiguration"
    Replace-InFile -Path $filePath -Pattern 'Initialize-(?!LE)' -Replacement "Initialize-LE" -Regex
    Replace-InFile -Path $filePath -Pattern '$Configuration = Get-LEConfiguration' -Replacement '$accessToken = "YOUR_ACCESS_TOKEN"'
    Replace-InFile -Path $filePath -Pattern "Configure API key authorization: Bearer" -Replacement '$applianceName = "YOUR_APPLIANCE_HOSTNAME"'
    Replace-InFile -Path $filePath -Pattern '$Configuration.ApiKey.Authorization = "YOUR_API_KEY"' -Replacement '$bearerToken = @{"Authorization"="Bearer $accessToken"}'
    Replace-InFile -Path $filePath -Pattern "Uncomment below to setup prefix (e.g. Bearer) for API key, if needed" -Replacement 'Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken'
    Replace-InFile -Path $filePath -Pattern '#$Configuration.ApiKeyPrefix.Authorization = "Bearer"' -Replacement '""'
    Replace-InFile -Path $filePath -Pattern "Configure OAuth2 access token for authorization: oauth2" -Replacement "Configure your appliance name"
    Replace-InFile -Path $filePath -Pattern '$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"' -Replacement '$applianceName = "YOUR_APPLIANCE_HOSTNAME"'
    Replace-InFile -Path $filePath -Pattern 'Set-LEConfiguration -BaseUrl " 	" -ApiKey $bearerToken' -Replacement 'Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken'
}

# Amend 3: README cleanup for generated noise sections.
if (Test-Path -LiteralPath $moduleReadmePath) {
    Replace-InFile `
        -Path $moduleReadmePath `
        -Pattern '^# v8\.0-preview.*$' `
        -Replacement '# v7.0 [API Console (Swagger)](/publicApi/swagger/index.html?urls.primaryName=Login%20Enterprise%20API%20v7), [Documentation (ReDoc)](/publicApi/v7/docs/index.html)' `
        -Regex

    Replace-InFile `
        -Path $moduleReadmePath `
        -Pattern '<br><b>API v8 \(preview\).*</b></br>\s*<br><b>API v7.*</b></br>\s*<br><b>API v6.*</b></br>\s*<br><b>API v5 and v4.*</b></br>' `
        -Replacement '<br><b>API v7 - Actively developed version starting with Login Enterprise v6.0.</b></br>' `
        -Regex

    Replace-InFile `
        -Path $moduleReadmePath `
        -Pattern '(?s)## Pester Tests.*?(?=^## |\z)' `
        -Replacement '' `
        -Regex
}

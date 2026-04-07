param(
    [Parameter(Mandatory = $false)]
    [string]$ConfigPath = "openapi/psopenapi.yaml"
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

if (-not (Test-Path -LiteralPath $ConfigPath)) {
    throw "Config file not found at '$ConfigPath'."
}

$content = Get-Content -LiteralPath $ConfigPath -Raw
$match = [regex]::Match($content, '(?m)^packageVersion:\s*(?<version>\d+\.\d+\.\d+)\s*$')

if (-not $match.Success) {
    throw "Could not find a valid 'packageVersion: X.Y.Z' line in '$ConfigPath'."
}

$currentVersion = [version]$match.Groups["version"].Value
$nextVersion = [version]::new($currentVersion.Major, $currentVersion.Minor, $currentVersion.Build + 1)
$updatedContent = [regex]::Replace(
    $content,
    '(?m)^packageVersion:\s*\d+\.\d+\.\d+\s*$',
    "packageVersion: $($nextVersion.ToString())",
    1
)

if ($updatedContent -ne $content) {
    Set-Content -LiteralPath $ConfigPath -Value $updatedContent -NoNewline
}

Write-Host "Bumped packageVersion: $currentVersion -> $nextVersion"

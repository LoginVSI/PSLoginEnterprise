#
# Login Enterprise
# v7.0-preview [API Console (Swagger)](/publicApi/swagger/index.html?urls.primaryName=Login%20Enterprise%20API%20v7-preview), [Documentation (ReDoc)](/publicApi/v7-preview/docs/index.html)  v6.0 [API Console (Swagger)](/publicApi/swagger/index.html?urls.primaryName=Login%20Enterprise%20API%20v6), [Documentation (ReDoc)](/publicApi/v6/docs/index.html)  v5.0 [API Console (Swagger)](/publicApi/swagger/index.html?urls.primaryName=Login%20Enterprise%20API%20v5), [Documentation (ReDoc)](/publicApi/v5/docs/index.html)  v4.0 [API Console (Swagger)](/publicApi/swagger/index.html?urls.primaryName=Login%20Enterprise%20API%20v4), [Documentation (ReDoc)](/publicApi/v4/docs/index.html)    <br><b>API v7 (preview) – Introduced in Login Enterprise v5.0 and subject to breaking changes when API v7 becomes generally available.</b></br> <br><b>API v6 – is the recommended version to use. It is the actively developed version starting with Login Enterprise v4.10.</b></br> <br><b>API v5 – is currently supported but unmaintained as of v4.10.</b></br> <br><b>API v4 – is deprecated starting with v4.10. Will be removed in Q3 2023.</b></br>   The Login Enterprise Public API provides documentation and Swagger per version within the product. For additional information please refer to the [documentation](https://support.loginvsi.com/hc/en-us/articles/360009534760) on our website. 
# Version: 6.0
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

Web Driver Statuses

.PARAMETER Browser
No description available.
.PARAMETER Current
List of the the current web automation driver versions
.PARAMETER AvailableForDownload
List of the latest web automation driver versions available for download
.PARAMETER VarError
Error Description
.PARAMETER IsSuccessful
Success flag to determine whether fetching update information for a web driver was successful
.OUTPUTS

WebDriverStatus<PSCustomObject>
#>

function Initialize-LEWebDriverStatus {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("chrome", "edge42", "edge44", "edgeChromium", "firefox")]
        [PSCustomObject]
        ${Browser},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Current},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${AvailableForDownload},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${VarError},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${IsSuccessful}
    )

    Process {
        'Creating PSCustomObject: PSLoginEnterprise => LEWebDriverStatus' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "browser" = ${Browser}
            "current" = ${Current}
            "availableForDownload" = ${AvailableForDownload}
            "error" = ${VarError}
            "isSuccessful" = ${IsSuccessful}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to WebDriverStatus<PSCustomObject>

.DESCRIPTION

Convert from JSON to WebDriverStatus<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

WebDriverStatus<PSCustomObject>
#>
function ConvertFrom-LEJsonToWebDriverStatus {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSLoginEnterprise => LEWebDriverStatus' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in LEWebDriverStatus
        $AllProperties = ("browser", "current", "availableForDownload", "error", "isSuccessful")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "browser"))) { #optional property not found
            $Browser = $null
        } else {
            $Browser = $JsonParameters.PSobject.Properties["browser"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "current"))) { #optional property not found
            $Current = $null
        } else {
            $Current = $JsonParameters.PSobject.Properties["current"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "availableForDownload"))) { #optional property not found
            $AvailableForDownload = $null
        } else {
            $AvailableForDownload = $JsonParameters.PSobject.Properties["availableForDownload"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "error"))) { #optional property not found
            $VarError = $null
        } else {
            $VarError = $JsonParameters.PSobject.Properties["error"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "isSuccessful"))) { #optional property not found
            $IsSuccessful = $null
        } else {
            $IsSuccessful = $JsonParameters.PSobject.Properties["isSuccessful"].value
        }

        $PSO = [PSCustomObject]@{
            "browser" = ${Browser}
            "current" = ${Current}
            "availableForDownload" = ${AvailableForDownload}
            "error" = ${VarError}
            "isSuccessful" = ${IsSuccessful}
        }

        return $PSO
    }

}


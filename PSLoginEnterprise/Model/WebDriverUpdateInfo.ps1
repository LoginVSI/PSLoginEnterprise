#
# Login Enterprise
# v8.0-preview [API Console (Swagger)](/publicApi/swagger/index.html?urls.primaryName=Login%20Enterprise%20API%20v8-preview), [Documentation (ReDoc)](/publicApi/v8-preview/docs/index.html)  v7.0 [API Console (Swagger)](/publicApi/swagger/index.html?urls.primaryName=Login%20Enterprise%20API%20v7), [Documentation (ReDoc)](/publicApi/v7/docs/index.html)  v6.0 [API Console (Swagger)](/publicApi/swagger/index.html?urls.primaryName=Login%20Enterprise%20API%20v6), [Documentation (ReDoc)](/publicApi/v6/docs/index.html)    <br><b>API v8 (preview) – Introduced in Login Enterprise v6.0 and subject to breaking changes.</b></br> <br><b>API v7 – is the recommended version to use. It is the actively developed version starting with Login Enterprise v6.0.</b></br> <br><b>API v6 – is currently supported, but unmaintained as of v6.0.</b></br> <br><b>API v5 and v4 - These versions are removed in v6.0.</b></br>   The Login Enterprise Public API provides documentation and Swagger per version within the product. For additional information please refer to the [documentation](https://support.loginvsi.com/hc/en-us/articles/360009534760) on our website. 
# Version: 7.0
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

Web Driver Update

.PARAMETER AutoUpdateEnabled
Auto Update Enabled
.PARAMETER LastUpdateTime
Last Update Time
.PARAMETER UpdateState
No description available.
.OUTPUTS

WebDriverUpdateInfo<PSCustomObject>
#>

function Initialize-LEWebDriverUpdateInfo {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${AutoUpdateEnabled},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${LastUpdateTime},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("ready", "updatingDrivers")]
        [PSCustomObject]
        ${UpdateState}
    )

    Process {
        'Creating PSCustomObject: PSLoginEnterprise => LEWebDriverUpdateInfo' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "autoUpdateEnabled" = ${AutoUpdateEnabled}
            "lastUpdateTime" = ${LastUpdateTime}
            "updateState" = ${UpdateState}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to WebDriverUpdateInfo<PSCustomObject>

.DESCRIPTION

Convert from JSON to WebDriverUpdateInfo<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

WebDriverUpdateInfo<PSCustomObject>
#>
function ConvertFrom-LEJsonToWebDriverUpdateInfo {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSLoginEnterprise => LEWebDriverUpdateInfo' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in LEWebDriverUpdateInfo
        $AllProperties = ("autoUpdateEnabled", "lastUpdateTime", "updateState")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "autoUpdateEnabled"))) { #optional property not found
            $AutoUpdateEnabled = $null
        } else {
            $AutoUpdateEnabled = $JsonParameters.PSobject.Properties["autoUpdateEnabled"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "lastUpdateTime"))) { #optional property not found
            $LastUpdateTime = $null
        } else {
            $LastUpdateTime = $JsonParameters.PSobject.Properties["lastUpdateTime"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "updateState"))) { #optional property not found
            $UpdateState = $null
        } else {
            $UpdateState = $JsonParameters.PSobject.Properties["updateState"].value
        }

        $PSO = [PSCustomObject]@{
            "autoUpdateEnabled" = ${AutoUpdateEnabled}
            "lastUpdateTime" = ${LastUpdateTime}
            "updateState" = ${UpdateState}
        }

        return $PSO
    }

}


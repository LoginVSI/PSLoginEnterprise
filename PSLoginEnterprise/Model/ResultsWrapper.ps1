#
# Login Enterprise
# v7.0-preview [API Console (Swagger)](/publicApi/swagger/index.html?urls.primaryName=Login%20Enterprise%20API%20v7-preview), [Documentation (ReDoc)](/publicApi/v7-preview/docs/index.html)  v6.0 [API Console (Swagger)](/publicApi/swagger/index.html?urls.primaryName=Login%20Enterprise%20API%20v6), [Documentation (ReDoc)](/publicApi/v6/docs/index.html)  v5.0 [API Console (Swagger)](/publicApi/swagger/index.html?urls.primaryName=Login%20Enterprise%20API%20v5), [Documentation (ReDoc)](/publicApi/v5/docs/index.html)  v4.0 [API Console (Swagger)](/publicApi/swagger/index.html?urls.primaryName=Login%20Enterprise%20API%20v4), [Documentation (ReDoc)](/publicApi/v4/docs/index.html)    <br><b>API v7 (preview) – Introduced in Login Enterprise v5.0 and subject to breaking changes when API v7 becomes generally available.</b></br> <br><b>API v6 – is the recommended version to use. It is the actively developed version starting with Login Enterprise v4.10.</b></br> <br><b>API v5 – is currently supported but unmaintained as of v4.10.</b></br> <br><b>API v4 – is deprecated starting with v4.10. Will be removed in Q3 2023.</b></br>   The Login Enterprise Public API provides documentation and Swagger per version within the product. For additional information please refer to the [documentation](https://support.loginvsi.com/hc/en-us/articles/360009534760) on our website. 
# Version: 7.0-preview
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

Wrapper for results

.PARAMETER LoginTime
Login time
.PARAMETER Performance
No description available.
.PARAMETER AppPerformanceResult
No description available.
.OUTPUTS

ResultsWrapper<PSCustomObject>
#>

function Initialize-LEResultsWrapper {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${LoginTime},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Performance},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${AppPerformanceResult}
    )

    Process {
        'Creating PSCustomObject: PSLoginEnterprise => LEResultsWrapper' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "loginTime" = ${LoginTime}
            "performance" = ${Performance}
            "appPerformanceResult" = ${AppPerformanceResult}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ResultsWrapper<PSCustomObject>

.DESCRIPTION

Convert from JSON to ResultsWrapper<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ResultsWrapper<PSCustomObject>
#>
function ConvertFrom-LEJsonToResultsWrapper {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSLoginEnterprise => LEResultsWrapper' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in LEResultsWrapper
        $AllProperties = ("loginTime", "performance", "appPerformanceResult")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "loginTime"))) { #optional property not found
            $LoginTime = $null
        } else {
            $LoginTime = $JsonParameters.PSobject.Properties["loginTime"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "performance"))) { #optional property not found
            $Performance = $null
        } else {
            $Performance = $JsonParameters.PSobject.Properties["performance"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "appPerformanceResult"))) { #optional property not found
            $AppPerformanceResult = $null
        } else {
            $AppPerformanceResult = $JsonParameters.PSobject.Properties["appPerformanceResult"].value
        }

        $PSO = [PSCustomObject]@{
            "loginTime" = ${LoginTime}
            "performance" = ${Performance}
            "appPerformanceResult" = ${AppPerformanceResult}
        }

        return $PSO
    }

}

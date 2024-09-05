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

Application performance result

.PARAMETER AppResponseTime
Application response time
.PARAMETER TotalAppPerformance
No description available.
.OUTPUTS

AppPerformanceResult<PSCustomObject>
#>

function Initialize-LEAppPerformanceResult {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${AppResponseTime},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${TotalAppPerformance}
    )

    Process {
        'Creating PSCustomObject: PSLoginEnterprise => LEAppPerformanceResult' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "appResponseTime" = ${AppResponseTime}
            "totalAppPerformance" = ${TotalAppPerformance}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to AppPerformanceResult<PSCustomObject>

.DESCRIPTION

Convert from JSON to AppPerformanceResult<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AppPerformanceResult<PSCustomObject>
#>
function ConvertFrom-LEJsonToAppPerformanceResult {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSLoginEnterprise => LEAppPerformanceResult' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in LEAppPerformanceResult
        $AllProperties = ("appResponseTime", "totalAppPerformance")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "appResponseTime"))) { #optional property not found
            $AppResponseTime = $null
        } else {
            $AppResponseTime = $JsonParameters.PSobject.Properties["appResponseTime"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "totalAppPerformance"))) { #optional property not found
            $TotalAppPerformance = $null
        } else {
            $TotalAppPerformance = $JsonParameters.PSobject.Properties["totalAppPerformance"].value
        }

        $PSO = [PSCustomObject]@{
            "appResponseTime" = ${AppResponseTime}
            "totalAppPerformance" = ${TotalAppPerformance}
        }

        return $PSO
    }

}


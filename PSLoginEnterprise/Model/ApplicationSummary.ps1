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

Application summary

.PARAMETER ApplicationId
Application id
.PARAMETER ApplicationName
Application name
.PARAMETER ResultStatus
No description available.
.PARAMETER AppExecutionSuccessful
Application execution successful
.PARAMETER PerformanceSuccessful
Performance successful
.PARAMETER TimerResults
Application timer results
.PARAMETER Screenshots
Screenshots
.OUTPUTS

ApplicationSummary<PSCustomObject>
#>

function Initialize-LEApplicationSummary {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ApplicationId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ApplicationName},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("successful", "overThreshold", "error")]
        [PSCustomObject]
        ${ResultStatus},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${AppExecutionSuccessful},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${PerformanceSuccessful},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${TimerResults},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Screenshots}
    )

    Process {
        'Creating PSCustomObject: PSLoginEnterprise => LEApplicationSummary' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "applicationId" = ${ApplicationId}
            "applicationName" = ${ApplicationName}
            "resultStatus" = ${ResultStatus}
            "appExecutionSuccessful" = ${AppExecutionSuccessful}
            "performanceSuccessful" = ${PerformanceSuccessful}
            "timerResults" = ${TimerResults}
            "screenshots" = ${Screenshots}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ApplicationSummary<PSCustomObject>

.DESCRIPTION

Convert from JSON to ApplicationSummary<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ApplicationSummary<PSCustomObject>
#>
function ConvertFrom-LEJsonToApplicationSummary {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSLoginEnterprise => LEApplicationSummary' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in LEApplicationSummary
        $AllProperties = ("applicationId", "applicationName", "resultStatus", "appExecutionSuccessful", "performanceSuccessful", "timerResults", "screenshots")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "applicationId"))) { #optional property not found
            $ApplicationId = $null
        } else {
            $ApplicationId = $JsonParameters.PSobject.Properties["applicationId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "applicationName"))) { #optional property not found
            $ApplicationName = $null
        } else {
            $ApplicationName = $JsonParameters.PSobject.Properties["applicationName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "resultStatus"))) { #optional property not found
            $ResultStatus = $null
        } else {
            $ResultStatus = $JsonParameters.PSobject.Properties["resultStatus"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "appExecutionSuccessful"))) { #optional property not found
            $AppExecutionSuccessful = $null
        } else {
            $AppExecutionSuccessful = $JsonParameters.PSobject.Properties["appExecutionSuccessful"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "performanceSuccessful"))) { #optional property not found
            $PerformanceSuccessful = $null
        } else {
            $PerformanceSuccessful = $JsonParameters.PSobject.Properties["performanceSuccessful"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "timerResults"))) { #optional property not found
            $TimerResults = $null
        } else {
            $TimerResults = $JsonParameters.PSobject.Properties["timerResults"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "screenshots"))) { #optional property not found
            $Screenshots = $null
        } else {
            $Screenshots = $JsonParameters.PSobject.Properties["screenshots"].value
        }

        $PSO = [PSCustomObject]@{
            "applicationId" = ${ApplicationId}
            "applicationName" = ${ApplicationName}
            "resultStatus" = ${ResultStatus}
            "appExecutionSuccessful" = ${AppExecutionSuccessful}
            "performanceSuccessful" = ${PerformanceSuccessful}
            "timerResults" = ${TimerResults}
            "screenshots" = ${Screenshots}
        }

        return $PSO
    }

}


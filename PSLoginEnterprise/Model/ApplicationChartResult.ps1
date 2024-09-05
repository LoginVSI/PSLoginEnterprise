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

Application chart result

.PARAMETER ApplicationId
Application id
.PARAMETER ApplicationName
Application name
.PARAMETER TestRunsInfo
Test runs info
.PARAMETER TimeSlots
Time slots
.OUTPUTS

ApplicationChartResult<PSCustomObject>
#>

function Initialize-LEApplicationChartResult {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ApplicationId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ApplicationName},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${TestRunsInfo},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${TimeSlots}
    )

    Process {
        'Creating PSCustomObject: PSLoginEnterprise => LEApplicationChartResult' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "applicationId" = ${ApplicationId}
            "applicationName" = ${ApplicationName}
            "testRunsInfo" = ${TestRunsInfo}
            "timeSlots" = ${TimeSlots}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ApplicationChartResult<PSCustomObject>

.DESCRIPTION

Convert from JSON to ApplicationChartResult<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ApplicationChartResult<PSCustomObject>
#>
function ConvertFrom-LEJsonToApplicationChartResult {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSLoginEnterprise => LEApplicationChartResult' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in LEApplicationChartResult
        $AllProperties = ("applicationId", "applicationName", "testRunsInfo", "timeSlots")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "testRunsInfo"))) { #optional property not found
            $TestRunsInfo = $null
        } else {
            $TestRunsInfo = $JsonParameters.PSobject.Properties["testRunsInfo"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "timeSlots"))) { #optional property not found
            $TimeSlots = $null
        } else {
            $TimeSlots = $JsonParameters.PSobject.Properties["timeSlots"].value
        }

        $PSO = [PSCustomObject]@{
            "applicationId" = ${ApplicationId}
            "applicationName" = ${ApplicationName}
            "testRunsInfo" = ${TestRunsInfo}
            "timeSlots" = ${TimeSlots}
        }

        return $PSO
    }

}

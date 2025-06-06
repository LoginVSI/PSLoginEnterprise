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

No description available.

.PARAMETER OffsetInMinutes
Offset in minutes
.PARAMETER TestRunResults
Test run results
.OUTPUTS

TimeSlot<PSCustomObject>
#>

function Initialize-LETimeSlot {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${OffsetInMinutes},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${TestRunResults}
    )

    Process {
        'Creating PSCustomObject: PSLoginEnterprise => LETimeSlot' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "offsetInMinutes" = ${OffsetInMinutes}
            "testRunResults" = ${TestRunResults}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to TimeSlot<PSCustomObject>

.DESCRIPTION

Convert from JSON to TimeSlot<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

TimeSlot<PSCustomObject>
#>
function ConvertFrom-LEJsonToTimeSlot {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSLoginEnterprise => LETimeSlot' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in LETimeSlot
        $AllProperties = ("offsetInMinutes", "testRunResults")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "offsetInMinutes"))) { #optional property not found
            $OffsetInMinutes = $null
        } else {
            $OffsetInMinutes = $JsonParameters.PSobject.Properties["offsetInMinutes"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "testRunResults"))) { #optional property not found
            $TestRunResults = $null
        } else {
            $TestRunResults = $JsonParameters.PSobject.Properties["testRunResults"].value
        }

        $PSO = [PSCustomObject]@{
            "offsetInMinutes" = ${OffsetInMinutes}
            "testRunResults" = ${TestRunResults}
        }

        return $PSO
    }

}


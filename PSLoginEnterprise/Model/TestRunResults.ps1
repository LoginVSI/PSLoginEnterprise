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

Results of a test run

.PARAMETER TestRunId
ID of the test run
.PARAMETER TestName
Name of the test
.PARAMETER Counter
Counter
.PARAMETER IsBase
Indicates whether this is base
.PARAMETER State
No description available.
.PARAMETER TestResult
No description available.
.PARAMETER Results
No description available.
.OUTPUTS

TestRunResults<PSCustomObject>
#>

function Initialize-LETestRunResults {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${TestRunId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${TestName},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Counter},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${IsBase},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("allocateResource", "rampingUp", "running", "rampingDown", "freeResources", "completed")]
        [PSCustomObject]
        ${State},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("completed", "aborted", "abandoned")]
        [PSCustomObject]
        ${TestResult},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Results}
    )

    Process {
        'Creating PSCustomObject: PSLoginEnterprise => LETestRunResults' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "testRunId" = ${TestRunId}
            "testName" = ${TestName}
            "counter" = ${Counter}
            "isBase" = ${IsBase}
            "state" = ${State}
            "testResult" = ${TestResult}
            "results" = ${Results}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to TestRunResults<PSCustomObject>

.DESCRIPTION

Convert from JSON to TestRunResults<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

TestRunResults<PSCustomObject>
#>
function ConvertFrom-LEJsonToTestRunResults {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSLoginEnterprise => LETestRunResults' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in LETestRunResults
        $AllProperties = ("testRunId", "testName", "counter", "isBase", "state", "testResult", "results")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "testRunId"))) { #optional property not found
            $TestRunId = $null
        } else {
            $TestRunId = $JsonParameters.PSobject.Properties["testRunId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "testName"))) { #optional property not found
            $TestName = $null
        } else {
            $TestName = $JsonParameters.PSobject.Properties["testName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "counter"))) { #optional property not found
            $Counter = $null
        } else {
            $Counter = $JsonParameters.PSobject.Properties["counter"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "isBase"))) { #optional property not found
            $IsBase = $null
        } else {
            $IsBase = $JsonParameters.PSobject.Properties["isBase"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "state"))) { #optional property not found
            $State = $null
        } else {
            $State = $JsonParameters.PSobject.Properties["state"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "testResult"))) { #optional property not found
            $TestResult = $null
        } else {
            $TestResult = $JsonParameters.PSobject.Properties["testResult"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "results"))) { #optional property not found
            $Results = $null
        } else {
            $Results = $JsonParameters.PSobject.Properties["results"].value
        }

        $PSO = [PSCustomObject]@{
            "testRunId" = ${TestRunId}
            "testName" = ${TestName}
            "counter" = ${Counter}
            "isBase" = ${IsBase}
            "state" = ${State}
            "testResult" = ${TestResult}
            "results" = ${Results}
        }

        return $PSO
    }

}


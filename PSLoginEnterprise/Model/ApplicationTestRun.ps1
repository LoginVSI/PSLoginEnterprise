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

Application test run

.PARAMETER Type
No description available.
.PARAMETER Id
Test run id
.PARAMETER TestId
Test id
.PARAMETER Created
Created date-time
.PARAMETER Started
Started date-time
.PARAMETER Finished
Finished date-time
.PARAMETER Counter
Test run counter
.PARAMETER NumberOfEvents
Number of events
.PARAMETER TestRunConfigurationSnapshot
No description available.
.PARAMETER State
No description available.
.PARAMETER Result
No description available.
.PARAMETER ProductVersion
Product version
.PARAMETER AppFailureResults
No description available.
.PARAMETER AppPerformanceResults
No description available.
.PARAMETER Properties
Application test run properties
.PARAMETER Comment
Comment
.OUTPUTS

ApplicationTestRun<PSCustomObject>
#>

function Initialize-LEApplicationTestRun {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Type},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${TestId},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Created},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Started},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Finished},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Counter},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${NumberOfEvents},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${TestRunConfigurationSnapshot},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("created", "testRunEnded", "completed")]
        [PSCustomObject]
        ${State},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("successful", "internalError", "cancelled", "incomplete")]
        [PSCustomObject]
        ${Result},
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ProductVersion},
        [Parameter(Position = 12, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${AppFailureResults},
        [Parameter(Position = 13, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${AppPerformanceResults},
        [Parameter(Position = 14, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Properties},
        [Parameter(Position = 15, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Comment}
    )

    Process {
        'Creating PSCustomObject: PSLoginEnterprise => LEApplicationTestRun' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Type) {
            throw "invalid value for 'Type', 'Type' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "id" = ${Id}
            "testId" = ${TestId}
            "created" = ${Created}
            "started" = ${Started}
            "finished" = ${Finished}
            "counter" = ${Counter}
            "numberOfEvents" = ${NumberOfEvents}
            "testRunConfigurationSnapshot" = ${TestRunConfigurationSnapshot}
            "state" = ${State}
            "result" = ${Result}
            "productVersion" = ${ProductVersion}
            "appFailureResults" = ${AppFailureResults}
            "appPerformanceResults" = ${AppPerformanceResults}
            "properties" = ${Properties}
            "comment" = ${Comment}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ApplicationTestRun<PSCustomObject>

.DESCRIPTION

Convert from JSON to ApplicationTestRun<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ApplicationTestRun<PSCustomObject>
#>
function ConvertFrom-LEJsonToApplicationTestRun {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSLoginEnterprise => LEApplicationTestRun' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in LEApplicationTestRun
        $AllProperties = ("type", "id", "testId", "created", "started", "finished", "counter", "numberOfEvents", "testRunConfigurationSnapshot", "state", "result", "productVersion", "appFailureResults", "appPerformanceResults", "properties", "comment")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'type' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) {
            throw "Error! JSON cannot be serialized due to the required property 'type' missing."
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "testId"))) { #optional property not found
            $TestId = $null
        } else {
            $TestId = $JsonParameters.PSobject.Properties["testId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "created"))) { #optional property not found
            $Created = $null
        } else {
            $Created = $JsonParameters.PSobject.Properties["created"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "started"))) { #optional property not found
            $Started = $null
        } else {
            $Started = $JsonParameters.PSobject.Properties["started"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "finished"))) { #optional property not found
            $Finished = $null
        } else {
            $Finished = $JsonParameters.PSobject.Properties["finished"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "counter"))) { #optional property not found
            $Counter = $null
        } else {
            $Counter = $JsonParameters.PSobject.Properties["counter"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "numberOfEvents"))) { #optional property not found
            $NumberOfEvents = $null
        } else {
            $NumberOfEvents = $JsonParameters.PSobject.Properties["numberOfEvents"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "testRunConfigurationSnapshot"))) { #optional property not found
            $TestRunConfigurationSnapshot = $null
        } else {
            $TestRunConfigurationSnapshot = $JsonParameters.PSobject.Properties["testRunConfigurationSnapshot"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "state"))) { #optional property not found
            $State = $null
        } else {
            $State = $JsonParameters.PSobject.Properties["state"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "result"))) { #optional property not found
            $Result = $null
        } else {
            $Result = $JsonParameters.PSobject.Properties["result"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "productVersion"))) { #optional property not found
            $ProductVersion = $null
        } else {
            $ProductVersion = $JsonParameters.PSobject.Properties["productVersion"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "appFailureResults"))) { #optional property not found
            $AppFailureResults = $null
        } else {
            $AppFailureResults = $JsonParameters.PSobject.Properties["appFailureResults"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "appPerformanceResults"))) { #optional property not found
            $AppPerformanceResults = $null
        } else {
            $AppPerformanceResults = $JsonParameters.PSobject.Properties["appPerformanceResults"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "properties"))) { #optional property not found
            $Properties = $null
        } else {
            $Properties = $JsonParameters.PSobject.Properties["properties"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "comment"))) { #optional property not found
            $Comment = $null
        } else {
            $Comment = $JsonParameters.PSobject.Properties["comment"].value
        }

        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "id" = ${Id}
            "testId" = ${TestId}
            "created" = ${Created}
            "started" = ${Started}
            "finished" = ${Finished}
            "counter" = ${Counter}
            "numberOfEvents" = ${NumberOfEvents}
            "testRunConfigurationSnapshot" = ${TestRunConfigurationSnapshot}
            "state" = ${State}
            "result" = ${Result}
            "productVersion" = ${ProductVersion}
            "appFailureResults" = ${AppFailureResults}
            "appPerformanceResults" = ${AppPerformanceResults}
            "properties" = ${Properties}
            "comment" = ${Comment}
        }

        return $PSO
    }

}


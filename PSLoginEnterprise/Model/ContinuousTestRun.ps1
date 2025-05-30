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

Continuous test run

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
.PARAMETER TestName
Test name
.PARAMETER SessionMetricGroupKey
Session metric group key
.PARAMETER EnvironmentKey
Environment key
.PARAMETER ScheduleType
No description available.
.PARAMETER Description
Description
.PARAMETER ConnectorId
Connector id
.OUTPUTS

ContinuousTestRun<PSCustomObject>
#>

function Initialize-LEContinuousTestRun {
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
        [String]
        ${TestName},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SessionMetricGroupKey},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${EnvironmentKey},
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("desktop", "interval", "concurrentSessions", "intervalPerLauncher")]
        [PSCustomObject]
        ${ScheduleType},
        [Parameter(Position = 12, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(Position = 13, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ConnectorId}
    )

    Process {
        'Creating PSCustomObject: PSLoginEnterprise => LEContinuousTestRun' | Write-Debug
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
            "testName" = ${TestName}
            "sessionMetricGroupKey" = ${SessionMetricGroupKey}
            "environmentKey" = ${EnvironmentKey}
            "scheduleType" = ${ScheduleType}
            "description" = ${Description}
            "connectorId" = ${ConnectorId}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ContinuousTestRun<PSCustomObject>

.DESCRIPTION

Convert from JSON to ContinuousTestRun<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ContinuousTestRun<PSCustomObject>
#>
function ConvertFrom-LEJsonToContinuousTestRun {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSLoginEnterprise => LEContinuousTestRun' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in LEContinuousTestRun
        $AllProperties = ("type", "id", "testId", "created", "started", "finished", "counter", "numberOfEvents", "testName", "sessionMetricGroupKey", "environmentKey", "scheduleType", "description", "connectorId")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "testName"))) { #optional property not found
            $TestName = $null
        } else {
            $TestName = $JsonParameters.PSobject.Properties["testName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sessionMetricGroupKey"))) { #optional property not found
            $SessionMetricGroupKey = $null
        } else {
            $SessionMetricGroupKey = $JsonParameters.PSobject.Properties["sessionMetricGroupKey"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "environmentKey"))) { #optional property not found
            $EnvironmentKey = $null
        } else {
            $EnvironmentKey = $JsonParameters.PSobject.Properties["environmentKey"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "scheduleType"))) { #optional property not found
            $ScheduleType = $null
        } else {
            $ScheduleType = $JsonParameters.PSobject.Properties["scheduleType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "connectorId"))) { #optional property not found
            $ConnectorId = $null
        } else {
            $ConnectorId = $JsonParameters.PSobject.Properties["connectorId"].value
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
            "testName" = ${TestName}
            "sessionMetricGroupKey" = ${SessionMetricGroupKey}
            "environmentKey" = ${EnvironmentKey}
            "scheduleType" = ${ScheduleType}
            "description" = ${Description}
            "connectorId" = ${ConnectorId}
        }

        return $PSO
    }

}


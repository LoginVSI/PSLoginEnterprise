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

Test configuration at the time of the load test-run execution

.PARAMETER EnvironmentKey
Environment key
.PARAMETER NumberOfSessions
Number of sessions
.PARAMETER RampUpDurationInMinutes
Ramp up duration in minutes
.PARAMETER RampDownDurationInMinutes
Ramp down duration in minutes
.PARAMETER TestDurationInMinutes
Test duration in minutes
.PARAMETER EuxEnabled
Enable Eux Analysis
.PARAMETER ApplicationDebugModeEnabled
Run application scripts in debug mode to capture the error line for scripts failures
.PARAMETER SessionMetricsEnabled
Enable Session Metrics Collection
.PARAMETER SessionMetricScheduleRate
Session Metric Schedule Rate
.PARAMETER TestId
Test configuration Id
.PARAMETER Name
Test name
.PARAMETER Workload
No description available.
.PARAMETER Connector
No description available.
.PARAMETER LauncherGroups
Launcher groups
.PARAMETER AccountGroups
Account groups
.PARAMETER SessionMetricDefinition
Session metric definition
.OUTPUTS

LoadTestRunConfigurationSnapshot<PSCustomObject>
#>

function Initialize-LELoadTestRunConfigurationSnapshot {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${EnvironmentKey},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${NumberOfSessions},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${RampUpDurationInMinutes},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${RampDownDurationInMinutes},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${TestDurationInMinutes},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${EuxEnabled},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${ApplicationDebugModeEnabled},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${SessionMetricsEnabled},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${SessionMetricScheduleRate},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${TestId},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Workload},
        [Parameter(Position = 12, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Connector},
        [Parameter(Position = 13, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${LauncherGroups},
        [Parameter(Position = 14, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${AccountGroups},
        [Parameter(Position = 15, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${SessionMetricDefinition}
    )

    Process {
        'Creating PSCustomObject: PSLoginEnterprise => LELoadTestRunConfigurationSnapshot' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "environmentKey" = ${EnvironmentKey}
            "numberOfSessions" = ${NumberOfSessions}
            "rampUpDurationInMinutes" = ${RampUpDurationInMinutes}
            "rampDownDurationInMinutes" = ${RampDownDurationInMinutes}
            "testDurationInMinutes" = ${TestDurationInMinutes}
            "euxEnabled" = ${EuxEnabled}
            "applicationDebugModeEnabled" = ${ApplicationDebugModeEnabled}
            "sessionMetricsEnabled" = ${SessionMetricsEnabled}
            "sessionMetricScheduleRate" = ${SessionMetricScheduleRate}
            "testId" = ${TestId}
            "name" = ${Name}
            "workload" = ${Workload}
            "connector" = ${Connector}
            "launcherGroups" = ${LauncherGroups}
            "accountGroups" = ${AccountGroups}
            "sessionMetricDefinition" = ${SessionMetricDefinition}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to LoadTestRunConfigurationSnapshot<PSCustomObject>

.DESCRIPTION

Convert from JSON to LoadTestRunConfigurationSnapshot<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

LoadTestRunConfigurationSnapshot<PSCustomObject>
#>
function ConvertFrom-LEJsonToLoadTestRunConfigurationSnapshot {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSLoginEnterprise => LELoadTestRunConfigurationSnapshot' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in LELoadTestRunConfigurationSnapshot
        $AllProperties = ("environmentKey", "numberOfSessions", "rampUpDurationInMinutes", "rampDownDurationInMinutes", "testDurationInMinutes", "euxEnabled", "applicationDebugModeEnabled", "sessionMetricsEnabled", "sessionMetricScheduleRate", "testId", "name", "workload", "connector", "launcherGroups", "accountGroups", "sessionMetricDefinition")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "environmentKey"))) { #optional property not found
            $EnvironmentKey = $null
        } else {
            $EnvironmentKey = $JsonParameters.PSobject.Properties["environmentKey"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "numberOfSessions"))) { #optional property not found
            $NumberOfSessions = $null
        } else {
            $NumberOfSessions = $JsonParameters.PSobject.Properties["numberOfSessions"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "rampUpDurationInMinutes"))) { #optional property not found
            $RampUpDurationInMinutes = $null
        } else {
            $RampUpDurationInMinutes = $JsonParameters.PSobject.Properties["rampUpDurationInMinutes"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "rampDownDurationInMinutes"))) { #optional property not found
            $RampDownDurationInMinutes = $null
        } else {
            $RampDownDurationInMinutes = $JsonParameters.PSobject.Properties["rampDownDurationInMinutes"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "testDurationInMinutes"))) { #optional property not found
            $TestDurationInMinutes = $null
        } else {
            $TestDurationInMinutes = $JsonParameters.PSobject.Properties["testDurationInMinutes"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "euxEnabled"))) { #optional property not found
            $EuxEnabled = $null
        } else {
            $EuxEnabled = $JsonParameters.PSobject.Properties["euxEnabled"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "applicationDebugModeEnabled"))) { #optional property not found
            $ApplicationDebugModeEnabled = $null
        } else {
            $ApplicationDebugModeEnabled = $JsonParameters.PSobject.Properties["applicationDebugModeEnabled"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sessionMetricsEnabled"))) { #optional property not found
            $SessionMetricsEnabled = $null
        } else {
            $SessionMetricsEnabled = $JsonParameters.PSobject.Properties["sessionMetricsEnabled"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sessionMetricScheduleRate"))) { #optional property not found
            $SessionMetricScheduleRate = $null
        } else {
            $SessionMetricScheduleRate = $JsonParameters.PSobject.Properties["sessionMetricScheduleRate"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "testId"))) { #optional property not found
            $TestId = $null
        } else {
            $TestId = $JsonParameters.PSobject.Properties["testId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "workload"))) { #optional property not found
            $Workload = $null
        } else {
            $Workload = $JsonParameters.PSobject.Properties["workload"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "connector"))) { #optional property not found
            $Connector = $null
        } else {
            $Connector = $JsonParameters.PSobject.Properties["connector"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "launcherGroups"))) { #optional property not found
            $LauncherGroups = $null
        } else {
            $LauncherGroups = $JsonParameters.PSobject.Properties["launcherGroups"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "accountGroups"))) { #optional property not found
            $AccountGroups = $null
        } else {
            $AccountGroups = $JsonParameters.PSobject.Properties["accountGroups"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sessionMetricDefinition"))) { #optional property not found
            $SessionMetricDefinition = $null
        } else {
            $SessionMetricDefinition = $JsonParameters.PSobject.Properties["sessionMetricDefinition"].value
        }

        $PSO = [PSCustomObject]@{
            "environmentKey" = ${EnvironmentKey}
            "numberOfSessions" = ${NumberOfSessions}
            "rampUpDurationInMinutes" = ${RampUpDurationInMinutes}
            "rampDownDurationInMinutes" = ${RampDownDurationInMinutes}
            "testDurationInMinutes" = ${TestDurationInMinutes}
            "euxEnabled" = ${EuxEnabled}
            "applicationDebugModeEnabled" = ${ApplicationDebugModeEnabled}
            "sessionMetricsEnabled" = ${SessionMetricsEnabled}
            "sessionMetricScheduleRate" = ${SessionMetricScheduleRate}
            "testId" = ${TestId}
            "name" = ${Name}
            "workload" = ${Workload}
            "connector" = ${Connector}
            "launcherGroups" = ${LauncherGroups}
            "accountGroups" = ${AccountGroups}
            "sessionMetricDefinition" = ${SessionMetricDefinition}
        }

        return $PSO
    }

}


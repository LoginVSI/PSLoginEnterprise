#
# Login Enterprise
# v7.0-preview [API Console (Swagger)](/publicApi/swagger/index.html?urls.primaryName=Login%20Enterprise%20API%20v7-preview), [Documentation (ReDoc)](/publicApi/v7-preview/docs/index.html)  v6.0 [API Console (Swagger)](/publicApi/swagger/index.html?urls.primaryName=Login%20Enterprise%20API%20v6), [Documentation (ReDoc)](/publicApi/v6/docs/index.html)  v5.0 [API Console (Swagger)](/publicApi/swagger/index.html?urls.primaryName=Login%20Enterprise%20API%20v5), [Documentation (ReDoc)](/publicApi/v5/docs/index.html)  v4.0 [API Console (Swagger)](/publicApi/swagger/index.html?urls.primaryName=Login%20Enterprise%20API%20v4), [Documentation (ReDoc)](/publicApi/v4/docs/index.html)    <br><b>API v7 (preview) – Introduced in Login Enterprise v5.0 and subject to breaking changes when API v7 becomes generally available.</b></br> <br><b>API v6 – is the recommended version to use. It is the actively developed version starting with Login Enterprise v4.10.</b></br> <br><b>API v5 – is currently supported but unmaintained as of v4.10.</b></br> <br><b>API v4 – is deprecated starting with v4.10. Will be removed in Q3 2023.</b></br>   The Login Enterprise Public API provides documentation and Swagger per version within the product. For additional information please refer to the [documentation](https://support.loginvsi.com/hc/en-us/articles/360009534760) on our website. 
# Version: 6.0
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

Continuous test update data

.PARAMETER Type
No description available.
.PARAMETER ScheduleType
No description available.
.PARAMETER IntervalInMinutes
Schedule interval in minutes
.PARAMETER NumberOfSessions
Number of sessions
.PARAMETER EnableCustomScreenshots
Enable script screenshots
.PARAMETER RepeatCount
Number of times the schedule is repeated
.PARAMETER IsRepeatEnabled
Enable schedule repeating
.PARAMETER IsEnabled
Enable schedule
.PARAMETER RestartOnComplete
Enable restarting on completion
.PARAMETER EuxEnabled
Enable Eux Analysis
.PARAMETER Name
Test name
.PARAMETER Description
Test description
.PARAMETER EnvironmentUpdate
No description available.
.PARAMETER Steps
Workload steps creation data
.OUTPUTS

ContinuousTestUpdate<PSCustomObject>
#>

function Initialize-LEContinuousTestUpdate {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Type},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("desktop", "interval", "concurrentSessions", "intervalPerLauncher")]
        [PSCustomObject]
        ${ScheduleType},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [Int32]
        ${IntervalInMinutes},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [Int32]
        ${NumberOfSessions},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [Boolean]
        ${EnableCustomScreenshots},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [Int32]
        ${RepeatCount},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [Boolean]
        ${IsRepeatEnabled},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [Boolean]
        ${IsEnabled},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [Boolean]
        ${RestartOnComplete},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [Boolean]
        ${EuxEnabled},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(Position = 12, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${EnvironmentUpdate},
        [Parameter(Position = 13, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Steps}
    )

    Process {
        'Creating PSCustomObject: PSLoginEnterprise => LEContinuousTestUpdate' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Type) {
            throw "invalid value for 'Type', 'Type' cannot be null."
        }

        if ($null -eq $ScheduleType) {
            throw "invalid value for 'ScheduleType', 'ScheduleType' cannot be null."
        }

        if ($null -eq $IntervalInMinutes) {
            throw "invalid value for 'IntervalInMinutes', 'IntervalInMinutes' cannot be null."
        }

        if ($null -eq $NumberOfSessions) {
            throw "invalid value for 'NumberOfSessions', 'NumberOfSessions' cannot be null."
        }

        if ($null -eq $EnableCustomScreenshots) {
            throw "invalid value for 'EnableCustomScreenshots', 'EnableCustomScreenshots' cannot be null."
        }

        if ($null -eq $RepeatCount) {
            throw "invalid value for 'RepeatCount', 'RepeatCount' cannot be null."
        }

        if ($null -eq $IsRepeatEnabled) {
            throw "invalid value for 'IsRepeatEnabled', 'IsRepeatEnabled' cannot be null."
        }

        if ($null -eq $IsEnabled) {
            throw "invalid value for 'IsEnabled', 'IsEnabled' cannot be null."
        }

        if ($null -eq $RestartOnComplete) {
            throw "invalid value for 'RestartOnComplete', 'RestartOnComplete' cannot be null."
        }

        if ($null -eq $EuxEnabled) {
            throw "invalid value for 'EuxEnabled', 'EuxEnabled' cannot be null."
        }

        if ($null -eq $Name) {
            throw "invalid value for 'Name', 'Name' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "scheduleType" = ${ScheduleType}
            "intervalInMinutes" = ${IntervalInMinutes}
            "numberOfSessions" = ${NumberOfSessions}
            "enableCustomScreenshots" = ${EnableCustomScreenshots}
            "repeatCount" = ${RepeatCount}
            "isRepeatEnabled" = ${IsRepeatEnabled}
            "isEnabled" = ${IsEnabled}
            "restartOnComplete" = ${RestartOnComplete}
            "euxEnabled" = ${EuxEnabled}
            "name" = ${Name}
            "description" = ${Description}
            "environmentUpdate" = ${EnvironmentUpdate}
            "steps" = ${Steps}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ContinuousTestUpdate<PSCustomObject>

.DESCRIPTION

Convert from JSON to ContinuousTestUpdate<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ContinuousTestUpdate<PSCustomObject>
#>
function ConvertFrom-LEJsonToContinuousTestUpdate {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSLoginEnterprise => LEContinuousTestUpdate' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in LEContinuousTestUpdate
        $AllProperties = ("type", "scheduleType", "intervalInMinutes", "numberOfSessions", "enableCustomScreenshots", "repeatCount", "isRepeatEnabled", "isEnabled", "restartOnComplete", "euxEnabled", "name", "description", "environmentUpdate", "steps")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "scheduleType"))) {
            throw "Error! JSON cannot be serialized due to the required property 'scheduleType' missing."
        } else {
            $ScheduleType = $JsonParameters.PSobject.Properties["scheduleType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "intervalInMinutes"))) {
            throw "Error! JSON cannot be serialized due to the required property 'intervalInMinutes' missing."
        } else {
            $IntervalInMinutes = $JsonParameters.PSobject.Properties["intervalInMinutes"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "numberOfSessions"))) {
            throw "Error! JSON cannot be serialized due to the required property 'numberOfSessions' missing."
        } else {
            $NumberOfSessions = $JsonParameters.PSobject.Properties["numberOfSessions"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "enableCustomScreenshots"))) {
            throw "Error! JSON cannot be serialized due to the required property 'enableCustomScreenshots' missing."
        } else {
            $EnableCustomScreenshots = $JsonParameters.PSobject.Properties["enableCustomScreenshots"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "repeatCount"))) {
            throw "Error! JSON cannot be serialized due to the required property 'repeatCount' missing."
        } else {
            $RepeatCount = $JsonParameters.PSobject.Properties["repeatCount"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "isRepeatEnabled"))) {
            throw "Error! JSON cannot be serialized due to the required property 'isRepeatEnabled' missing."
        } else {
            $IsRepeatEnabled = $JsonParameters.PSobject.Properties["isRepeatEnabled"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "isEnabled"))) {
            throw "Error! JSON cannot be serialized due to the required property 'isEnabled' missing."
        } else {
            $IsEnabled = $JsonParameters.PSobject.Properties["isEnabled"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "restartOnComplete"))) {
            throw "Error! JSON cannot be serialized due to the required property 'restartOnComplete' missing."
        } else {
            $RestartOnComplete = $JsonParameters.PSobject.Properties["restartOnComplete"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "euxEnabled"))) {
            throw "Error! JSON cannot be serialized due to the required property 'euxEnabled' missing."
        } else {
            $EuxEnabled = $JsonParameters.PSobject.Properties["euxEnabled"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) {
            throw "Error! JSON cannot be serialized due to the required property 'name' missing."
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "environmentUpdate"))) { #optional property not found
            $EnvironmentUpdate = $null
        } else {
            $EnvironmentUpdate = $JsonParameters.PSobject.Properties["environmentUpdate"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "steps"))) { #optional property not found
            $Steps = $null
        } else {
            $Steps = $JsonParameters.PSobject.Properties["steps"].value
        }

        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "scheduleType" = ${ScheduleType}
            "intervalInMinutes" = ${IntervalInMinutes}
            "numberOfSessions" = ${NumberOfSessions}
            "enableCustomScreenshots" = ${EnableCustomScreenshots}
            "repeatCount" = ${RepeatCount}
            "isRepeatEnabled" = ${IsRepeatEnabled}
            "isEnabled" = ${IsEnabled}
            "restartOnComplete" = ${RestartOnComplete}
            "euxEnabled" = ${EuxEnabled}
            "name" = ${Name}
            "description" = ${Description}
            "environmentUpdate" = ${EnvironmentUpdate}
            "steps" = ${Steps}
        }

        return $PSO
    }

}


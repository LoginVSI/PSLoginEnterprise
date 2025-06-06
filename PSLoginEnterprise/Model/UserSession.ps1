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

User session

.PARAMETER Id
User session id
.PARAMETER TestId
Test id
.PARAMETER TestRunId
Test run id
.PARAMETER Created
Created date-time
.PARAMETER LoginState
No description available.
.PARAMETER SessionState
No description available.
.PARAMETER StateLastModified
State last modified date-time
.PARAMETER TestType
No description available.
.PARAMETER AccountId
Account id
.PARAMETER LauncherName
Launcher name
.PARAMETER LoginStartTime
Login start date-time
.PARAMETER LoginEndTime
Login end date-time
.PARAMETER SessionEndTime
Session end date-time
.PARAMETER SessionMetricEnabled
User Session Metrics Enabled
.PARAMETER Properties
Session properties
.OUTPUTS

UserSession<PSCustomObject>
#>

function Initialize-LEUserSession {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${TestId},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${TestRunId},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Created},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("undefined", "inprogress", "failed", "aborted", "abandoned", "succeeded")]
        [PSCustomObject]
        ${LoginState},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("undefined", "connected", "abandoned", "running", "faulted", "abortRequested", "aborted", "loggingOff", "completed")]
        [PSCustomObject]
        ${SessionState},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${StateLastModified},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("applicationTest", "loadTest", "continuousTest")]
        [PSCustomObject]
        ${TestType},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AccountId},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${LauncherName},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${LoginStartTime},
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${LoginEndTime},
        [Parameter(Position = 12, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${SessionEndTime},
        [Parameter(Position = 13, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${SessionMetricEnabled},
        [Parameter(Position = 14, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Properties}
    )

    Process {
        'Creating PSCustomObject: PSLoginEnterprise => LEUserSession' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "testId" = ${TestId}
            "testRunId" = ${TestRunId}
            "created" = ${Created}
            "loginState" = ${LoginState}
            "sessionState" = ${SessionState}
            "stateLastModified" = ${StateLastModified}
            "testType" = ${TestType}
            "accountId" = ${AccountId}
            "launcherName" = ${LauncherName}
            "loginStartTime" = ${LoginStartTime}
            "loginEndTime" = ${LoginEndTime}
            "sessionEndTime" = ${SessionEndTime}
            "sessionMetricEnabled" = ${SessionMetricEnabled}
            "properties" = ${Properties}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to UserSession<PSCustomObject>

.DESCRIPTION

Convert from JSON to UserSession<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

UserSession<PSCustomObject>
#>
function ConvertFrom-LEJsonToUserSession {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSLoginEnterprise => LEUserSession' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in LEUserSession
        $AllProperties = ("id", "testId", "testRunId", "created", "loginState", "sessionState", "stateLastModified", "testType", "accountId", "launcherName", "loginStartTime", "loginEndTime", "sessionEndTime", "sessionMetricEnabled", "properties")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "testRunId"))) { #optional property not found
            $TestRunId = $null
        } else {
            $TestRunId = $JsonParameters.PSobject.Properties["testRunId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "created"))) { #optional property not found
            $Created = $null
        } else {
            $Created = $JsonParameters.PSobject.Properties["created"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "loginState"))) { #optional property not found
            $LoginState = $null
        } else {
            $LoginState = $JsonParameters.PSobject.Properties["loginState"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sessionState"))) { #optional property not found
            $SessionState = $null
        } else {
            $SessionState = $JsonParameters.PSobject.Properties["sessionState"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "stateLastModified"))) { #optional property not found
            $StateLastModified = $null
        } else {
            $StateLastModified = $JsonParameters.PSobject.Properties["stateLastModified"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "testType"))) { #optional property not found
            $TestType = $null
        } else {
            $TestType = $JsonParameters.PSobject.Properties["testType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "accountId"))) { #optional property not found
            $AccountId = $null
        } else {
            $AccountId = $JsonParameters.PSobject.Properties["accountId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "launcherName"))) { #optional property not found
            $LauncherName = $null
        } else {
            $LauncherName = $JsonParameters.PSobject.Properties["launcherName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "loginStartTime"))) { #optional property not found
            $LoginStartTime = $null
        } else {
            $LoginStartTime = $JsonParameters.PSobject.Properties["loginStartTime"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "loginEndTime"))) { #optional property not found
            $LoginEndTime = $null
        } else {
            $LoginEndTime = $JsonParameters.PSobject.Properties["loginEndTime"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sessionEndTime"))) { #optional property not found
            $SessionEndTime = $null
        } else {
            $SessionEndTime = $JsonParameters.PSobject.Properties["sessionEndTime"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sessionMetricEnabled"))) { #optional property not found
            $SessionMetricEnabled = $null
        } else {
            $SessionMetricEnabled = $JsonParameters.PSobject.Properties["sessionMetricEnabled"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "properties"))) { #optional property not found
            $Properties = $null
        } else {
            $Properties = $JsonParameters.PSobject.Properties["properties"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "testId" = ${TestId}
            "testRunId" = ${TestRunId}
            "created" = ${Created}
            "loginState" = ${LoginState}
            "sessionState" = ${SessionState}
            "stateLastModified" = ${StateLastModified}
            "testType" = ${TestType}
            "accountId" = ${AccountId}
            "launcherName" = ${LauncherName}
            "loginStartTime" = ${LoginStartTime}
            "loginEndTime" = ${LoginEndTime}
            "sessionEndTime" = ${SessionEndTime}
            "sessionMetricEnabled" = ${SessionMetricEnabled}
            "properties" = ${Properties}
        }

        return $PSO
    }

}


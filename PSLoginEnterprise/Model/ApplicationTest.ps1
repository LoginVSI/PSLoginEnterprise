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

Application Test

.PARAMETER IsEmailEnabled
Enable email notification
.PARAMETER EmailRecipient
Notification email address
.PARAMETER IncludeSuccessfulApplications
Include successful applications in report
.PARAMETER RestartOnComplete
Enable restarting on completion
.PARAMETER State
No description available.
.PARAMETER Thresholds
Application test thresholds
.PARAMETER Type
No description available.
.PARAMETER Id
Test id
.PARAMETER EnvironmentKey
Environment key
.PARAMETER Name
Test name
.PARAMETER Description
Test description
.PARAMETER Created
Created date-time
.PARAMETER ConnectionResources
No description available.
.PARAMETER Workload
No description available.
.PARAMETER LogonTimeTrackingProcess
Specify the application to track user login time session and session initiation. The default value is explorer.exe (Windows shell). You can customize it to Citrix, VMWare, or another platform that you're using. Common values are wfshell.exe (Citrix), mware-view-usbd.exe (VMWare), or rdpshell.exe (Microsoft RDP).
.PARAMETER EngineStartTimeout
Engine start timeout
.PARAMETER ApplicationDebugModeEnabled
Run application scripts in debug mode to capture the error line for scripts failures
.OUTPUTS

ApplicationTest<PSCustomObject>
#>

function Initialize-LEApplicationTest {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${IsEmailEnabled},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${EmailRecipient},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${IncludeSuccessfulApplications},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${RestartOnComplete},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("disabled", "enabled", "running", "stopping")]
        [PSCustomObject]
        ${State},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Thresholds},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Type},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${EnvironmentKey},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Created},
        [Parameter(Position = 12, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${ConnectionResources},
        [Parameter(Position = 13, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Workload},
        [Parameter(Position = 14, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${LogonTimeTrackingProcess},
        [Parameter(Position = 15, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${EngineStartTimeout},
        [Parameter(Position = 16, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${ApplicationDebugModeEnabled}
    )

    Process {
        'Creating PSCustomObject: PSLoginEnterprise => LEApplicationTest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Type) {
            throw "invalid value for 'Type', 'Type' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "isEmailEnabled" = ${IsEmailEnabled}
            "emailRecipient" = ${EmailRecipient}
            "includeSuccessfulApplications" = ${IncludeSuccessfulApplications}
            "restartOnComplete" = ${RestartOnComplete}
            "state" = ${State}
            "thresholds" = ${Thresholds}
            "type" = ${Type}
            "id" = ${Id}
            "environmentKey" = ${EnvironmentKey}
            "name" = ${Name}
            "description" = ${Description}
            "created" = ${Created}
            "connectionResources" = ${ConnectionResources}
            "workload" = ${Workload}
            "logonTimeTrackingProcess" = ${LogonTimeTrackingProcess}
            "engineStartTimeout" = ${EngineStartTimeout}
            "applicationDebugModeEnabled" = ${ApplicationDebugModeEnabled}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ApplicationTest<PSCustomObject>

.DESCRIPTION

Convert from JSON to ApplicationTest<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ApplicationTest<PSCustomObject>
#>
function ConvertFrom-LEJsonToApplicationTest {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSLoginEnterprise => LEApplicationTest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in LEApplicationTest
        $AllProperties = ("isEmailEnabled", "emailRecipient", "includeSuccessfulApplications", "restartOnComplete", "state", "thresholds", "type", "id", "environmentKey", "name", "description", "created", "connectionResources", "workload", "logonTimeTrackingProcess", "engineStartTimeout", "applicationDebugModeEnabled")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "isEmailEnabled"))) { #optional property not found
            $IsEmailEnabled = $null
        } else {
            $IsEmailEnabled = $JsonParameters.PSobject.Properties["isEmailEnabled"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "emailRecipient"))) { #optional property not found
            $EmailRecipient = $null
        } else {
            $EmailRecipient = $JsonParameters.PSobject.Properties["emailRecipient"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "includeSuccessfulApplications"))) { #optional property not found
            $IncludeSuccessfulApplications = $null
        } else {
            $IncludeSuccessfulApplications = $JsonParameters.PSobject.Properties["includeSuccessfulApplications"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "restartOnComplete"))) { #optional property not found
            $RestartOnComplete = $null
        } else {
            $RestartOnComplete = $JsonParameters.PSobject.Properties["restartOnComplete"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "state"))) { #optional property not found
            $State = $null
        } else {
            $State = $JsonParameters.PSobject.Properties["state"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "thresholds"))) { #optional property not found
            $Thresholds = $null
        } else {
            $Thresholds = $JsonParameters.PSobject.Properties["thresholds"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "environmentKey"))) { #optional property not found
            $EnvironmentKey = $null
        } else {
            $EnvironmentKey = $JsonParameters.PSobject.Properties["environmentKey"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "created"))) { #optional property not found
            $Created = $null
        } else {
            $Created = $JsonParameters.PSobject.Properties["created"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "connectionResources"))) { #optional property not found
            $ConnectionResources = $null
        } else {
            $ConnectionResources = $JsonParameters.PSobject.Properties["connectionResources"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "workload"))) { #optional property not found
            $Workload = $null
        } else {
            $Workload = $JsonParameters.PSobject.Properties["workload"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "logonTimeTrackingProcess"))) { #optional property not found
            $LogonTimeTrackingProcess = $null
        } else {
            $LogonTimeTrackingProcess = $JsonParameters.PSobject.Properties["logonTimeTrackingProcess"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "engineStartTimeout"))) { #optional property not found
            $EngineStartTimeout = $null
        } else {
            $EngineStartTimeout = $JsonParameters.PSobject.Properties["engineStartTimeout"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "applicationDebugModeEnabled"))) { #optional property not found
            $ApplicationDebugModeEnabled = $null
        } else {
            $ApplicationDebugModeEnabled = $JsonParameters.PSobject.Properties["applicationDebugModeEnabled"].value
        }

        $PSO = [PSCustomObject]@{
            "isEmailEnabled" = ${IsEmailEnabled}
            "emailRecipient" = ${EmailRecipient}
            "includeSuccessfulApplications" = ${IncludeSuccessfulApplications}
            "restartOnComplete" = ${RestartOnComplete}
            "state" = ${State}
            "thresholds" = ${Thresholds}
            "type" = ${Type}
            "id" = ${Id}
            "environmentKey" = ${EnvironmentKey}
            "name" = ${Name}
            "description" = ${Description}
            "created" = ${Created}
            "connectionResources" = ${ConnectionResources}
            "workload" = ${Workload}
            "logonTimeTrackingProcess" = ${LogonTimeTrackingProcess}
            "engineStartTimeout" = ${EngineStartTimeout}
            "applicationDebugModeEnabled" = ${ApplicationDebugModeEnabled}
        }

        return $PSO
    }

}


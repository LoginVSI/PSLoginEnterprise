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

Test configuration at the time of the app test-run execution

.PARAMETER RestartOnComplete
Restart on complete
.PARAMETER IncludeSuccessfulApplications
Include successful applications in report
.PARAMETER IsEmailEnabled
Enable email notification
.PARAMETER EmailRecipient
Notification email address
.PARAMETER Thresholds
Application test thresholds
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

AppTestRunConfigurationSnapshot<PSCustomObject>
#>

function Initialize-LEAppTestRunConfigurationSnapshot {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${RestartOnComplete},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${IncludeSuccessfulApplications},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${IsEmailEnabled},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${EmailRecipient},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Thresholds},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${TestId},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Workload},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Connector},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${LauncherGroups},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${AccountGroups},
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${SessionMetricDefinition}
    )

    Process {
        'Creating PSCustomObject: PSLoginEnterprise => LEAppTestRunConfigurationSnapshot' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "restartOnComplete" = ${RestartOnComplete}
            "includeSuccessfulApplications" = ${IncludeSuccessfulApplications}
            "isEmailEnabled" = ${IsEmailEnabled}
            "emailRecipient" = ${EmailRecipient}
            "thresholds" = ${Thresholds}
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

Convert from JSON to AppTestRunConfigurationSnapshot<PSCustomObject>

.DESCRIPTION

Convert from JSON to AppTestRunConfigurationSnapshot<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AppTestRunConfigurationSnapshot<PSCustomObject>
#>
function ConvertFrom-LEJsonToAppTestRunConfigurationSnapshot {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSLoginEnterprise => LEAppTestRunConfigurationSnapshot' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in LEAppTestRunConfigurationSnapshot
        $AllProperties = ("restartOnComplete", "includeSuccessfulApplications", "isEmailEnabled", "emailRecipient", "thresholds", "testId", "name", "workload", "connector", "launcherGroups", "accountGroups", "sessionMetricDefinition")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "restartOnComplete"))) { #optional property not found
            $RestartOnComplete = $null
        } else {
            $RestartOnComplete = $JsonParameters.PSobject.Properties["restartOnComplete"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "includeSuccessfulApplications"))) { #optional property not found
            $IncludeSuccessfulApplications = $null
        } else {
            $IncludeSuccessfulApplications = $JsonParameters.PSobject.Properties["includeSuccessfulApplications"].value
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "thresholds"))) { #optional property not found
            $Thresholds = $null
        } else {
            $Thresholds = $JsonParameters.PSobject.Properties["thresholds"].value
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
            "restartOnComplete" = ${RestartOnComplete}
            "includeSuccessfulApplications" = ${IncludeSuccessfulApplications}
            "isEmailEnabled" = ${IsEmailEnabled}
            "emailRecipient" = ${EmailRecipient}
            "thresholds" = ${Thresholds}
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


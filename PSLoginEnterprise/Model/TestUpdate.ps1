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

Test update data

.PARAMETER Type
No description available.
.PARAMETER Name
Test name
.PARAMETER Description
Test description
.PARAMETER ConnectionResourcesUpdate
No description available.
.PARAMETER EnvironmentKey
Environment key
.PARAMETER Steps
Workload steps creation data
.PARAMETER LogonTimeTrackingProcess
Specify the application to track user login time session and session initiation. The default value is explorer.exe (Windows shell). You can customize it to Citrix, VMWare, or another platform that you're using. Common values are wfshell.exe (Citrix), mware-view-usbd.exe (VMWare), or rdpshell.exe (Microsoft RDP).
.PARAMETER EngineStartTimeout
Engine start timeout
.PARAMETER ApplicationDebugModeEnabled
Run application scripts in debug mode to capture the error line for scripts failures
.OUTPUTS

TestUpdate<PSCustomObject>
#>

function Initialize-LETestUpdate {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Type},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${ConnectionResourcesUpdate},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${EnvironmentKey},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Steps},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${LogonTimeTrackingProcess},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${EngineStartTimeout},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${ApplicationDebugModeEnabled}
    )

    Process {
        'Creating PSCustomObject: PSLoginEnterprise => LETestUpdate' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Type) {
            throw "invalid value for 'Type', 'Type' cannot be null."
        }

        if ($null -eq $Name) {
            throw "invalid value for 'Name', 'Name' cannot be null."
        }

        if ($Name.length -lt 1) {
            throw "invalid value for 'Name', the character length must be great than or equal to 1."
        }


        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "name" = ${Name}
            "description" = ${Description}
            "connectionResourcesUpdate" = ${ConnectionResourcesUpdate}
            "environmentKey" = ${EnvironmentKey}
            "steps" = ${Steps}
            "logonTimeTrackingProcess" = ${LogonTimeTrackingProcess}
            "engineStartTimeout" = ${EngineStartTimeout}
            "applicationDebugModeEnabled" = ${ApplicationDebugModeEnabled}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to TestUpdate<PSCustomObject>

.DESCRIPTION

Convert from JSON to TestUpdate<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

TestUpdate<PSCustomObject>
#>
function ConvertFrom-LEJsonToTestUpdate {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSLoginEnterprise => LETestUpdate' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in LETestUpdate
        $AllProperties = ("type", "name", "description", "connectionResourcesUpdate", "environmentKey", "steps", "logonTimeTrackingProcess", "engineStartTimeout", "applicationDebugModeEnabled")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "connectionResourcesUpdate"))) { #optional property not found
            $ConnectionResourcesUpdate = $null
        } else {
            $ConnectionResourcesUpdate = $JsonParameters.PSobject.Properties["connectionResourcesUpdate"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "environmentKey"))) { #optional property not found
            $EnvironmentKey = $null
        } else {
            $EnvironmentKey = $JsonParameters.PSobject.Properties["environmentKey"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "steps"))) { #optional property not found
            $Steps = $null
        } else {
            $Steps = $JsonParameters.PSobject.Properties["steps"].value
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
            "type" = ${Type}
            "name" = ${Name}
            "description" = ${Description}
            "connectionResourcesUpdate" = ${ConnectionResourcesUpdate}
            "environmentKey" = ${EnvironmentKey}
            "steps" = ${Steps}
            "logonTimeTrackingProcess" = ${LogonTimeTrackingProcess}
            "engineStartTimeout" = ${EngineStartTimeout}
            "applicationDebugModeEnabled" = ${ApplicationDebugModeEnabled}
        }

        return $PSO
    }

}


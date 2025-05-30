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

App invocation step creation data

.PARAMETER Type
No description available.
.PARAMETER IsEnabled
Enable step
.PARAMETER ApplicationId
Application id
.PARAMETER RunOnce
Run the application only once
.PARAMETER LeaveRunning
Do not close the application
.OUTPUTS

AppInvocationCreate<PSCustomObject>
#>

function Initialize-LEAppInvocationCreate {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Type},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [Boolean]
        ${IsEnabled},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ApplicationId},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [Boolean]
        ${RunOnce},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [Boolean]
        ${LeaveRunning}
    )

    Process {
        'Creating PSCustomObject: PSLoginEnterprise => LEAppInvocationCreate' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Type) {
            throw "invalid value for 'Type', 'Type' cannot be null."
        }

        if ($null -eq $IsEnabled) {
            throw "invalid value for 'IsEnabled', 'IsEnabled' cannot be null."
        }

        if ($null -eq $ApplicationId) {
            throw "invalid value for 'ApplicationId', 'ApplicationId' cannot be null."
        }

        if ($null -eq $RunOnce) {
            throw "invalid value for 'RunOnce', 'RunOnce' cannot be null."
        }

        if ($null -eq $LeaveRunning) {
            throw "invalid value for 'LeaveRunning', 'LeaveRunning' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "isEnabled" = ${IsEnabled}
            "applicationId" = ${ApplicationId}
            "runOnce" = ${RunOnce}
            "leaveRunning" = ${LeaveRunning}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to AppInvocationCreate<PSCustomObject>

.DESCRIPTION

Convert from JSON to AppInvocationCreate<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AppInvocationCreate<PSCustomObject>
#>
function ConvertFrom-LEJsonToAppInvocationCreate {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSLoginEnterprise => LEAppInvocationCreate' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in LEAppInvocationCreate
        $AllProperties = ("type", "isEnabled", "applicationId", "runOnce", "leaveRunning")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "isEnabled"))) {
            throw "Error! JSON cannot be serialized due to the required property 'isEnabled' missing."
        } else {
            $IsEnabled = $JsonParameters.PSobject.Properties["isEnabled"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "applicationId"))) {
            throw "Error! JSON cannot be serialized due to the required property 'applicationId' missing."
        } else {
            $ApplicationId = $JsonParameters.PSobject.Properties["applicationId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "runOnce"))) {
            throw "Error! JSON cannot be serialized due to the required property 'runOnce' missing."
        } else {
            $RunOnce = $JsonParameters.PSobject.Properties["runOnce"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "leaveRunning"))) {
            throw "Error! JSON cannot be serialized due to the required property 'leaveRunning' missing."
        } else {
            $LeaveRunning = $JsonParameters.PSobject.Properties["leaveRunning"].value
        }

        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "isEnabled" = ${IsEnabled}
            "applicationId" = ${ApplicationId}
            "runOnce" = ${RunOnce}
            "leaveRunning" = ${LeaveRunning}
        }

        return $PSO
    }

}


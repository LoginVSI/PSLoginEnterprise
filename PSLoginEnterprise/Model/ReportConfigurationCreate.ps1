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

Report configuration creation data

.PARAMETER Frequency
No description available.
.PARAMETER LatencyThreshold
No description available.
.PARAMETER LoginTimeThreshold
No description available.
.PARAMETER TimeZoneOffset
Time zone offset
.PARAMETER Name
Report configuration name
.PARAMETER Description
Report configuration description
.PARAMETER IsEnabled
Enable report configuration
.PARAMETER Notification
No description available.
.OUTPUTS

ReportConfigurationCreate<PSCustomObject>
#>

function Initialize-LEReportConfigurationCreate {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("daily", "monthly", "weekly")]
        [PSCustomObject]
        ${Frequency},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${LatencyThreshold},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${LoginTimeThreshold},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${TimeZoneOffset},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [Boolean]
        ${IsEnabled},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Notification}
    )

    Process {
        'Creating PSCustomObject: PSLoginEnterprise => LEReportConfigurationCreate' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Frequency) {
            throw "invalid value for 'Frequency', 'Frequency' cannot be null."
        }

        if ($null -eq $Name) {
            throw "invalid value for 'Name', 'Name' cannot be null."
        }

        if ($Name.length -lt 1) {
            throw "invalid value for 'Name', the character length must be great than or equal to 1."
        }

        if ($null -eq $IsEnabled) {
            throw "invalid value for 'IsEnabled', 'IsEnabled' cannot be null."
        }

        if ($null -eq $Notification) {
            throw "invalid value for 'Notification', 'Notification' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "frequency" = ${Frequency}
            "latencyThreshold" = ${LatencyThreshold}
            "loginTimeThreshold" = ${LoginTimeThreshold}
            "timeZoneOffset" = ${TimeZoneOffset}
            "name" = ${Name}
            "description" = ${Description}
            "isEnabled" = ${IsEnabled}
            "notification" = ${Notification}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ReportConfigurationCreate<PSCustomObject>

.DESCRIPTION

Convert from JSON to ReportConfigurationCreate<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ReportConfigurationCreate<PSCustomObject>
#>
function ConvertFrom-LEJsonToReportConfigurationCreate {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSLoginEnterprise => LEReportConfigurationCreate' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in LEReportConfigurationCreate
        $AllProperties = ("frequency", "latencyThreshold", "loginTimeThreshold", "timeZoneOffset", "name", "description", "isEnabled", "notification")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'frequency' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "frequency"))) {
            throw "Error! JSON cannot be serialized due to the required property 'frequency' missing."
        } else {
            $Frequency = $JsonParameters.PSobject.Properties["frequency"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) {
            throw "Error! JSON cannot be serialized due to the required property 'name' missing."
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "isEnabled"))) {
            throw "Error! JSON cannot be serialized due to the required property 'isEnabled' missing."
        } else {
            $IsEnabled = $JsonParameters.PSobject.Properties["isEnabled"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "notification"))) {
            throw "Error! JSON cannot be serialized due to the required property 'notification' missing."
        } else {
            $Notification = $JsonParameters.PSobject.Properties["notification"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "latencyThreshold"))) { #optional property not found
            $LatencyThreshold = $null
        } else {
            $LatencyThreshold = $JsonParameters.PSobject.Properties["latencyThreshold"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "loginTimeThreshold"))) { #optional property not found
            $LoginTimeThreshold = $null
        } else {
            $LoginTimeThreshold = $JsonParameters.PSobject.Properties["loginTimeThreshold"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "timeZoneOffset"))) { #optional property not found
            $TimeZoneOffset = $null
        } else {
            $TimeZoneOffset = $JsonParameters.PSobject.Properties["timeZoneOffset"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        $PSO = [PSCustomObject]@{
            "frequency" = ${Frequency}
            "latencyThreshold" = ${LatencyThreshold}
            "loginTimeThreshold" = ${LoginTimeThreshold}
            "timeZoneOffset" = ${TimeZoneOffset}
            "name" = ${Name}
            "description" = ${Description}
            "isEnabled" = ${IsEnabled}
            "notification" = ${Notification}
        }

        return $PSO
    }

}


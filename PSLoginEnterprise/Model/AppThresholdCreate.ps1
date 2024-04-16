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

App threshold creation data

.PARAMETER ApplicationId
Application id
.PARAMETER Timer
Application timer
.PARAMETER IsEnabled
Enable threshold
.PARAMETER Value
Threshold value
.OUTPUTS

AppThresholdCreate<PSCustomObject>
#>

function Initialize-LEAppThresholdCreate {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ApplicationId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Timer},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [Boolean]
        ${IsEnabled},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [Double]
        ${Value}
    )

    Process {
        'Creating PSCustomObject: PSLoginEnterprise => LEAppThresholdCreate' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $ApplicationId) {
            throw "invalid value for 'ApplicationId', 'ApplicationId' cannot be null."
        }

        if ($null -eq $Timer) {
            throw "invalid value for 'Timer', 'Timer' cannot be null."
        }

        if ($null -eq $IsEnabled) {
            throw "invalid value for 'IsEnabled', 'IsEnabled' cannot be null."
        }

        if ($null -eq $Value) {
            throw "invalid value for 'Value', 'Value' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "applicationId" = ${ApplicationId}
            "timer" = ${Timer}
            "isEnabled" = ${IsEnabled}
            "value" = ${Value}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to AppThresholdCreate<PSCustomObject>

.DESCRIPTION

Convert from JSON to AppThresholdCreate<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AppThresholdCreate<PSCustomObject>
#>
function ConvertFrom-LEJsonToAppThresholdCreate {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSLoginEnterprise => LEAppThresholdCreate' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in LEAppThresholdCreate
        $AllProperties = ("applicationId", "timer", "isEnabled", "value")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'applicationId' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "applicationId"))) {
            throw "Error! JSON cannot be serialized due to the required property 'applicationId' missing."
        } else {
            $ApplicationId = $JsonParameters.PSobject.Properties["applicationId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "timer"))) {
            throw "Error! JSON cannot be serialized due to the required property 'timer' missing."
        } else {
            $Timer = $JsonParameters.PSobject.Properties["timer"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "isEnabled"))) {
            throw "Error! JSON cannot be serialized due to the required property 'isEnabled' missing."
        } else {
            $IsEnabled = $JsonParameters.PSobject.Properties["isEnabled"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "value"))) {
            throw "Error! JSON cannot be serialized due to the required property 'value' missing."
        } else {
            $Value = $JsonParameters.PSobject.Properties["value"].value
        }

        $PSO = [PSCustomObject]@{
            "applicationId" = ${ApplicationId}
            "timer" = ${Timer}
            "isEnabled" = ${IsEnabled}
            "value" = ${Value}
        }

        return $PSO
    }

}


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

VMware Horizon View

.PARAMETER ServerUrl
Server Url
.PARAMETER Resource
Resource
.PARAMETER CommandLine
Connection command line
.PARAMETER Type
No description available.
.OUTPUTS

HorizonConnector<PSCustomObject>
#>

function Initialize-LEHorizonConnector {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ServerUrl},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Resource},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${CommandLine},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Type}
    )

    Process {
        'Creating PSCustomObject: PSLoginEnterprise => LEHorizonConnector' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $ServerUrl) {
            throw "invalid value for 'ServerUrl', 'ServerUrl' cannot be null."
        }

        if ($ServerUrl.length -lt 1) {
            throw "invalid value for 'ServerUrl', the character length must be great than or equal to 1."
        }

        if ($null -eq $Resource) {
            throw "invalid value for 'Resource', 'Resource' cannot be null."
        }

        if ($Resource.length -lt 1) {
            throw "invalid value for 'Resource', the character length must be great than or equal to 1."
        }

        if ($null -eq $CommandLine) {
            throw "invalid value for 'CommandLine', 'CommandLine' cannot be null."
        }

        if ($CommandLine.length -lt 1) {
            throw "invalid value for 'CommandLine', the character length must be great than or equal to 1."
        }

        if ($null -eq $Type) {
            throw "invalid value for 'Type', 'Type' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "serverUrl" = ${ServerUrl}
            "resource" = ${Resource}
            "commandLine" = ${CommandLine}
            "type" = ${Type}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to HorizonConnector<PSCustomObject>

.DESCRIPTION

Convert from JSON to HorizonConnector<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

HorizonConnector<PSCustomObject>
#>
function ConvertFrom-LEJsonToHorizonConnector {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSLoginEnterprise => LEHorizonConnector' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in LEHorizonConnector
        $AllProperties = ("serverUrl", "resource", "commandLine", "type")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'serverUrl' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "serverUrl"))) {
            throw "Error! JSON cannot be serialized due to the required property 'serverUrl' missing."
        } else {
            $ServerUrl = $JsonParameters.PSobject.Properties["serverUrl"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "resource"))) {
            throw "Error! JSON cannot be serialized due to the required property 'resource' missing."
        } else {
            $Resource = $JsonParameters.PSobject.Properties["resource"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "commandLine"))) {
            throw "Error! JSON cannot be serialized due to the required property 'commandLine' missing."
        } else {
            $CommandLine = $JsonParameters.PSobject.Properties["commandLine"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) {
            throw "Error! JSON cannot be serialized due to the required property 'type' missing."
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        $PSO = [PSCustomObject]@{
            "serverUrl" = ${ServerUrl}
            "resource" = ${Resource}
            "commandLine" = ${CommandLine}
            "type" = ${Type}
        }

        return $PSO
    }

}


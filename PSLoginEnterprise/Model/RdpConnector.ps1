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

Microsoft RDS

.PARAMETER Type
No description available.
.PARAMETER HostList
Host list
.PARAMETER Resource
Resource
.PARAMETER Gateway
RDS Gateway
.PARAMETER SuppressCertWarn
Suppress Certificate Warning
.PARAMETER DisplayResolution
No description available.
.OUTPUTS

RdpConnector<PSCustomObject>
#>

function Initialize-LERdpConnector {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Type},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${HostList},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Resource},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Gateway},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [Boolean]
        ${SuppressCertWarn},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${DisplayResolution}
    )

    Process {
        'Creating PSCustomObject: PSLoginEnterprise => LERdpConnector' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Type) {
            throw "invalid value for 'Type', 'Type' cannot be null."
        }

        if ($null -eq $HostList) {
            throw "invalid value for 'HostList', 'HostList' cannot be null."
        }

        if ($null -eq $SuppressCertWarn) {
            throw "invalid value for 'SuppressCertWarn', 'SuppressCertWarn' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "hostList" = ${HostList}
            "resource" = ${Resource}
            "gateway" = ${Gateway}
            "suppressCertWarn" = ${SuppressCertWarn}
            "displayResolution" = ${DisplayResolution}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to RdpConnector<PSCustomObject>

.DESCRIPTION

Convert from JSON to RdpConnector<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

RdpConnector<PSCustomObject>
#>
function ConvertFrom-LEJsonToRdpConnector {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSLoginEnterprise => LERdpConnector' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in LERdpConnector
        $AllProperties = ("type", "hostList", "resource", "gateway", "suppressCertWarn", "displayResolution")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "hostList"))) {
            throw "Error! JSON cannot be serialized due to the required property 'hostList' missing."
        } else {
            $HostList = $JsonParameters.PSobject.Properties["hostList"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "suppressCertWarn"))) {
            throw "Error! JSON cannot be serialized due to the required property 'suppressCertWarn' missing."
        } else {
            $SuppressCertWarn = $JsonParameters.PSobject.Properties["suppressCertWarn"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "resource"))) { #optional property not found
            $Resource = $null
        } else {
            $Resource = $JsonParameters.PSobject.Properties["resource"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "gateway"))) { #optional property not found
            $Gateway = $null
        } else {
            $Gateway = $JsonParameters.PSobject.Properties["gateway"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "displayResolution"))) { #optional property not found
            $DisplayResolution = $null
        } else {
            $DisplayResolution = $JsonParameters.PSobject.Properties["displayResolution"].value
        }

        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "hostList" = ${HostList}
            "resource" = ${Resource}
            "gateway" = ${Gateway}
            "suppressCertWarn" = ${SuppressCertWarn}
            "displayResolution" = ${DisplayResolution}
        }

        return $PSO
    }

}


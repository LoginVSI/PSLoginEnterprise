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

Target Host

.PARAMETER Enabled
Enable the
.PARAMETER Endpoint
RDS Broker / RDP Host
.OUTPUTS

TargetHost<PSCustomObject>
#>

function Initialize-LETargetHost {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Enabled},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Endpoint}
    )

    Process {
        'Creating PSCustomObject: PSLoginEnterprise => LETargetHost' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Endpoint) {
            throw "invalid value for 'Endpoint', 'Endpoint' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "enabled" = ${Enabled}
            "endpoint" = ${Endpoint}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to TargetHost<PSCustomObject>

.DESCRIPTION

Convert from JSON to TargetHost<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

TargetHost<PSCustomObject>
#>
function ConvertFrom-LEJsonToTargetHost {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSLoginEnterprise => LETargetHost' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in LETargetHost
        $AllProperties = ("enabled", "endpoint")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'endpoint' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "endpoint"))) {
            throw "Error! JSON cannot be serialized due to the required property 'endpoint' missing."
        } else {
            $Endpoint = $JsonParameters.PSobject.Properties["endpoint"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "enabled"))) { #optional property not found
            $Enabled = $null
        } else {
            $Enabled = $JsonParameters.PSobject.Properties["enabled"].value
        }

        $PSO = [PSCustomObject]@{
            "enabled" = ${Enabled}
            "endpoint" = ${Endpoint}
        }

        return $PSO
    }

}


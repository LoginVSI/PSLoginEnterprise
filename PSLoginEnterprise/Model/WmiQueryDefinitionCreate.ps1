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

Wmi query definition creation data

.PARAMETER Type
No description available.
.PARAMETER Name
Name
.PARAMETER Description
Description
.PARAMETER Tag
Tag
.PARAMETER WmiQuery
Wmi Query
.PARAMETER Namespace
Query namespace
.PARAMETER InstanceField
Name of field to identify intended instance from query result
.PARAMETER Measurements
Measurements
.OUTPUTS

WmiQueryDefinitionCreate<PSCustomObject>
#>

function Initialize-LEWmiQueryDefinitionCreate {
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
        [String]
        ${Tag},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${WmiQuery},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Namespace},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${InstanceField},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Measurements}
    )

    Process {
        'Creating PSCustomObject: PSLoginEnterprise => LEWmiQueryDefinitionCreate' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Type) {
            throw "invalid value for 'Type', 'Type' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "name" = ${Name}
            "description" = ${Description}
            "tag" = ${Tag}
            "wmiQuery" = ${WmiQuery}
            "namespace" = ${Namespace}
            "instanceField" = ${InstanceField}
            "measurements" = ${Measurements}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to WmiQueryDefinitionCreate<PSCustomObject>

.DESCRIPTION

Convert from JSON to WmiQueryDefinitionCreate<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

WmiQueryDefinitionCreate<PSCustomObject>
#>
function ConvertFrom-LEJsonToWmiQueryDefinitionCreate {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSLoginEnterprise => LEWmiQueryDefinitionCreate' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in LEWmiQueryDefinitionCreate
        $AllProperties = ("type", "name", "description", "tag", "wmiQuery", "namespace", "instanceField", "measurements")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "tag"))) { #optional property not found
            $Tag = $null
        } else {
            $Tag = $JsonParameters.PSobject.Properties["tag"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "wmiQuery"))) { #optional property not found
            $WmiQuery = $null
        } else {
            $WmiQuery = $JsonParameters.PSobject.Properties["wmiQuery"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "namespace"))) { #optional property not found
            $Namespace = $null
        } else {
            $Namespace = $JsonParameters.PSobject.Properties["namespace"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "instanceField"))) { #optional property not found
            $InstanceField = $null
        } else {
            $InstanceField = $JsonParameters.PSobject.Properties["instanceField"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "measurements"))) { #optional property not found
            $Measurements = $null
        } else {
            $Measurements = $JsonParameters.PSobject.Properties["measurements"].value
        }

        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "name" = ${Name}
            "description" = ${Description}
            "tag" = ${Tag}
            "wmiQuery" = ${WmiQuery}
            "namespace" = ${Namespace}
            "instanceField" = ${InstanceField}
            "measurements" = ${Measurements}
        }

        return $PSO
    }

}


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

Session metric definition group creation data

.PARAMETER Name
Session metric definition group name
.PARAMETER Description
Session metric definition group description
.PARAMETER DefinitionKeys
Session metric definition keys
.OUTPUTS

SessionMetricDefinitionGroupCreate<PSCustomObject>
#>

function Initialize-LESessionMetricDefinitionGroupCreate {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${DefinitionKeys}
    )

    Process {
        'Creating PSCustomObject: PSLoginEnterprise => LESessionMetricDefinitionGroupCreate' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "description" = ${Description}
            "definitionKeys" = ${DefinitionKeys}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to SessionMetricDefinitionGroupCreate<PSCustomObject>

.DESCRIPTION

Convert from JSON to SessionMetricDefinitionGroupCreate<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

SessionMetricDefinitionGroupCreate<PSCustomObject>
#>
function ConvertFrom-LEJsonToSessionMetricDefinitionGroupCreate {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSLoginEnterprise => LESessionMetricDefinitionGroupCreate' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in LESessionMetricDefinitionGroupCreate
        $AllProperties = ("name", "description", "definitionKeys")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "definitionKeys"))) { #optional property not found
            $DefinitionKeys = $null
        } else {
            $DefinitionKeys = $JsonParameters.PSobject.Properties["definitionKeys"].value
        }

        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "description" = ${Description}
            "definitionKeys" = ${DefinitionKeys}
        }

        return $PSO
    }

}

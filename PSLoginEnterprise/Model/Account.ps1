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

Account

.PARAMETER Id
Account id
.PARAMETER Username
Account username
.PARAMETER Domain
Account domain
.PARAMETER Email
Account email
.PARAMETER Created
Created date-time
.PARAMETER Groups
Account Groups
.PARAMETER Fields
Account Custom Fields
.PARAMETER InUse
Account is in use
.PARAMETER Enabled
Account is enabled
.OUTPUTS

Account<PSCustomObject>
#>

function Initialize-LEAccount {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Username},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Domain},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Email},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Created},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Groups},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Fields},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${InUse},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Enabled}
    )

    Process {
        'Creating PSCustomObject: PSLoginEnterprise => LEAccount' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "username" = ${Username}
            "domain" = ${Domain}
            "email" = ${Email}
            "created" = ${Created}
            "groups" = ${Groups}
            "fields" = ${Fields}
            "inUse" = ${InUse}
            "enabled" = ${Enabled}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to Account<PSCustomObject>

.DESCRIPTION

Convert from JSON to Account<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

Account<PSCustomObject>
#>
function ConvertFrom-LEJsonToAccount {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSLoginEnterprise => LEAccount' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in LEAccount
        $AllProperties = ("id", "username", "domain", "email", "created", "groups", "fields", "inUse", "enabled")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "username"))) { #optional property not found
            $Username = $null
        } else {
            $Username = $JsonParameters.PSobject.Properties["username"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "domain"))) { #optional property not found
            $Domain = $null
        } else {
            $Domain = $JsonParameters.PSobject.Properties["domain"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "email"))) { #optional property not found
            $Email = $null
        } else {
            $Email = $JsonParameters.PSobject.Properties["email"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "created"))) { #optional property not found
            $Created = $null
        } else {
            $Created = $JsonParameters.PSobject.Properties["created"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "groups"))) { #optional property not found
            $Groups = $null
        } else {
            $Groups = $JsonParameters.PSobject.Properties["groups"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "fields"))) { #optional property not found
            $Fields = $null
        } else {
            $Fields = $JsonParameters.PSobject.Properties["fields"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "inUse"))) { #optional property not found
            $InUse = $null
        } else {
            $InUse = $JsonParameters.PSobject.Properties["inUse"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "enabled"))) { #optional property not found
            $Enabled = $null
        } else {
            $Enabled = $JsonParameters.PSobject.Properties["enabled"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "username" = ${Username}
            "domain" = ${Domain}
            "email" = ${Email}
            "created" = ${Created}
            "groups" = ${Groups}
            "fields" = ${Fields}
            "inUse" = ${InUse}
            "enabled" = ${Enabled}
        }

        return $PSO
    }

}


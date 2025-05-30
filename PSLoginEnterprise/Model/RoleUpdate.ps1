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

Role

.PARAMETER Name
Name
.PARAMETER UserIds
user id list
.PARAMETER LdapGroupIds
Ldap group id list
.PARAMETER Permissions
Permissions to assign to the role
.OUTPUTS

RoleUpdate<PSCustomObject>
#>

function Initialize-LERoleUpdate {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${UserIds},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${LdapGroupIds},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Permissions}
    )

    Process {
        'Creating PSCustomObject: PSLoginEnterprise => LERoleUpdate' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "userIds" = ${UserIds}
            "ldapGroupIds" = ${LdapGroupIds}
            "permissions" = ${Permissions}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to RoleUpdate<PSCustomObject>

.DESCRIPTION

Convert from JSON to RoleUpdate<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

RoleUpdate<PSCustomObject>
#>
function ConvertFrom-LEJsonToRoleUpdate {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSLoginEnterprise => LERoleUpdate' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in LERoleUpdate
        $AllProperties = ("name", "userIds", "ldapGroupIds", "permissions")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "userIds"))) { #optional property not found
            $UserIds = $null
        } else {
            $UserIds = $JsonParameters.PSobject.Properties["userIds"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ldapGroupIds"))) { #optional property not found
            $LdapGroupIds = $null
        } else {
            $LdapGroupIds = $JsonParameters.PSobject.Properties["ldapGroupIds"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "permissions"))) { #optional property not found
            $Permissions = $null
        } else {
            $Permissions = $JsonParameters.PSobject.Properties["permissions"].value
        }

        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "userIds" = ${UserIds}
            "ldapGroupIds" = ${LdapGroupIds}
            "permissions" = ${Permissions}
        }

        return $PSO
    }

}


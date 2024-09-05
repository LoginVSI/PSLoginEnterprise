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

Represents the configuration parameters for connecting to an LDAP server.

.PARAMETER VarHost
Gets or sets the LDAP server host.
.PARAMETER Port
Gets or sets the LDAP server port.
.PARAMETER Secured
Gets or sets a value indicating whether the LDAP server connection is secured (SSL/TLS).
.PARAMETER IgnoreSslErrors
Gets or sets a value indicating whether SSL/TLS errors should be ignored when connecting to the LDAP server.
.PARAMETER Username
Gets or sets the username for the LDAP server connection.
.PARAMETER Password
Gets or sets the password for the LDAP server connection.
.PARAMETER Domain
Gets or sets the domain for the LDAP server connection.
.PARAMETER AdminGroupName
Gets or sets the name of the admin group in the LDAP server.
.PARAMETER ReadOnlyGroupName
Gets or sets the name of the read-only group in the LDAP server.
.PARAMETER ConnectionTimeout
ConnectionTimeout value in milliseconds.
.OUTPUTS

LdapConfigModel<PSCustomObject>
#>

function Initialize-LELdapConfigModel {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${VarHost},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Port},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Secured},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${IgnoreSslErrors},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Username},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Password},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Domain},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AdminGroupName},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ReadOnlyGroupName},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${ConnectionTimeout}
    )

    Process {
        'Creating PSCustomObject: PSLoginEnterprise => LELdapConfigModel' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "host" = ${VarHost}
            "port" = ${Port}
            "secured" = ${Secured}
            "ignoreSslErrors" = ${IgnoreSslErrors}
            "username" = ${Username}
            "password" = ${Password}
            "domain" = ${Domain}
            "adminGroupName" = ${AdminGroupName}
            "readOnlyGroupName" = ${ReadOnlyGroupName}
            "connectionTimeout" = ${ConnectionTimeout}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to LdapConfigModel<PSCustomObject>

.DESCRIPTION

Convert from JSON to LdapConfigModel<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

LdapConfigModel<PSCustomObject>
#>
function ConvertFrom-LEJsonToLdapConfigModel {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSLoginEnterprise => LELdapConfigModel' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in LELdapConfigModel
        $AllProperties = ("host", "port", "secured", "ignoreSslErrors", "username", "password", "domain", "adminGroupName", "readOnlyGroupName", "connectionTimeout")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "host"))) { #optional property not found
            $VarHost = $null
        } else {
            $VarHost = $JsonParameters.PSobject.Properties["host"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "port"))) { #optional property not found
            $Port = $null
        } else {
            $Port = $JsonParameters.PSobject.Properties["port"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "secured"))) { #optional property not found
            $Secured = $null
        } else {
            $Secured = $JsonParameters.PSobject.Properties["secured"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ignoreSslErrors"))) { #optional property not found
            $IgnoreSslErrors = $null
        } else {
            $IgnoreSslErrors = $JsonParameters.PSobject.Properties["ignoreSslErrors"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "username"))) { #optional property not found
            $Username = $null
        } else {
            $Username = $JsonParameters.PSobject.Properties["username"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "password"))) { #optional property not found
            $Password = $null
        } else {
            $Password = $JsonParameters.PSobject.Properties["password"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "domain"))) { #optional property not found
            $Domain = $null
        } else {
            $Domain = $JsonParameters.PSobject.Properties["domain"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "adminGroupName"))) { #optional property not found
            $AdminGroupName = $null
        } else {
            $AdminGroupName = $JsonParameters.PSobject.Properties["adminGroupName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "readOnlyGroupName"))) { #optional property not found
            $ReadOnlyGroupName = $null
        } else {
            $ReadOnlyGroupName = $JsonParameters.PSobject.Properties["readOnlyGroupName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "connectionTimeout"))) { #optional property not found
            $ConnectionTimeout = $null
        } else {
            $ConnectionTimeout = $JsonParameters.PSobject.Properties["connectionTimeout"].value
        }

        $PSO = [PSCustomObject]@{
            "host" = ${VarHost}
            "port" = ${Port}
            "secured" = ${Secured}
            "ignoreSslErrors" = ${IgnoreSslErrors}
            "username" = ${Username}
            "password" = ${Password}
            "domain" = ${Domain}
            "adminGroupName" = ${AdminGroupName}
            "readOnlyGroupName" = ${ReadOnlyGroupName}
            "connectionTimeout" = ${ConnectionTimeout}
        }

        return $PSO
    }

}

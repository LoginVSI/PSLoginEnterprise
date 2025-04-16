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

No description available.

.PARAMETER NumberOfDigits
Number of Digits
.PARAMETER NumberOfAccounts
Number of Accounts
.PARAMETER Username
Username
.PARAMETER Domain
Domain id
.PARAMETER Email
Email
.PARAMETER Password
Password
.PARAMETER Fields
Account Custom Fields
.OUTPUTS

AccountBulkCreate<PSCustomObject>
#>

function Initialize-LEAccountBulkCreate {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${NumberOfDigits},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${NumberOfAccounts},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Username},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Domain},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Email},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Password},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Fields}
    )

    Process {
        'Creating PSCustomObject: PSLoginEnterprise => LEAccountBulkCreate' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "numberOfDigits" = ${NumberOfDigits}
            "numberOfAccounts" = ${NumberOfAccounts}
            "username" = ${Username}
            "domain" = ${Domain}
            "email" = ${Email}
            "password" = ${Password}
            "fields" = ${Fields}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to AccountBulkCreate<PSCustomObject>

.DESCRIPTION

Convert from JSON to AccountBulkCreate<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AccountBulkCreate<PSCustomObject>
#>
function ConvertFrom-LEJsonToAccountBulkCreate {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSLoginEnterprise => LEAccountBulkCreate' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in LEAccountBulkCreate
        $AllProperties = ("numberOfDigits", "numberOfAccounts", "username", "domain", "email", "password", "fields")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "numberOfDigits"))) { #optional property not found
            $NumberOfDigits = $null
        } else {
            $NumberOfDigits = $JsonParameters.PSobject.Properties["numberOfDigits"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "numberOfAccounts"))) { #optional property not found
            $NumberOfAccounts = $null
        } else {
            $NumberOfAccounts = $JsonParameters.PSobject.Properties["numberOfAccounts"].value
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "password"))) { #optional property not found
            $Password = $null
        } else {
            $Password = $JsonParameters.PSobject.Properties["password"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "fields"))) { #optional property not found
            $Fields = $null
        } else {
            $Fields = $JsonParameters.PSobject.Properties["fields"].value
        }

        $PSO = [PSCustomObject]@{
            "numberOfDigits" = ${NumberOfDigits}
            "numberOfAccounts" = ${NumberOfAccounts}
            "username" = ${Username}
            "domain" = ${Domain}
            "email" = ${Email}
            "password" = ${Password}
            "fields" = ${Fields}
        }

        return $PSO
    }

}


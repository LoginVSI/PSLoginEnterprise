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

Account filter group

.PARAMETER Type
No description available.
.PARAMETER GroupId
Account group id
.PARAMETER Name
Account group name
.PARAMETER MemberCount
Account group member count
.PARAMETER Description
Account group description
.PARAMETER Created
Created date-time
.PARAMETER LastModified
Last modified date-time
.PARAMETER Members
Account group members
.PARAMETER VarFilter
Filter condition (Wildcards available: ""?"" and ""*"")
.OUTPUTS

AccountFilterGroup<PSCustomObject>
#>

function Initialize-LEAccountFilterGroup {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Type},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${GroupId},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${MemberCount},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Created},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${LastModified},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Members},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${VarFilter}
    )

    Process {
        'Creating PSCustomObject: PSLoginEnterprise => LEAccountFilterGroup' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Type) {
            throw "invalid value for 'Type', 'Type' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "groupId" = ${GroupId}
            "name" = ${Name}
            "memberCount" = ${MemberCount}
            "description" = ${Description}
            "created" = ${Created}
            "lastModified" = ${LastModified}
            "members" = ${Members}
            "filter" = ${VarFilter}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to AccountFilterGroup<PSCustomObject>

.DESCRIPTION

Convert from JSON to AccountFilterGroup<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AccountFilterGroup<PSCustomObject>
#>
function ConvertFrom-LEJsonToAccountFilterGroup {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSLoginEnterprise => LEAccountFilterGroup' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in LEAccountFilterGroup
        $AllProperties = ("type", "groupId", "name", "memberCount", "description", "created", "lastModified", "members", "filter")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "groupId"))) { #optional property not found
            $GroupId = $null
        } else {
            $GroupId = $JsonParameters.PSobject.Properties["groupId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "memberCount"))) { #optional property not found
            $MemberCount = $null
        } else {
            $MemberCount = $JsonParameters.PSobject.Properties["memberCount"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "created"))) { #optional property not found
            $Created = $null
        } else {
            $Created = $JsonParameters.PSobject.Properties["created"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "lastModified"))) { #optional property not found
            $LastModified = $null
        } else {
            $LastModified = $JsonParameters.PSobject.Properties["lastModified"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "members"))) { #optional property not found
            $Members = $null
        } else {
            $Members = $JsonParameters.PSobject.Properties["members"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "filter"))) { #optional property not found
            $VarFilter = $null
        } else {
            $VarFilter = $JsonParameters.PSobject.Properties["filter"].value
        }

        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "groupId" = ${GroupId}
            "name" = ${Name}
            "memberCount" = ${MemberCount}
            "description" = ${Description}
            "created" = ${Created}
            "lastModified" = ${LastModified}
            "members" = ${Members}
            "filter" = ${VarFilter}
        }

        return $PSO
    }

}


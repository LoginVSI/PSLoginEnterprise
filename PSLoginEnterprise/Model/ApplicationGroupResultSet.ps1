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

Paginated result-set

.PARAMETER Items
Requested items
.PARAMETER TotalCount
Total item count (if requested)
.PARAMETER Offset
Offset requested
.OUTPUTS

ApplicationGroupResultSet<PSCustomObject>
#>

function Initialize-LEApplicationGroupResultSet {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Items},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${TotalCount},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Offset}
    )

    Process {
        'Creating PSCustomObject: PSLoginEnterprise => LEApplicationGroupResultSet' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "items" = ${Items}
            "totalCount" = ${TotalCount}
            "offset" = ${Offset}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ApplicationGroupResultSet<PSCustomObject>

.DESCRIPTION

Convert from JSON to ApplicationGroupResultSet<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ApplicationGroupResultSet<PSCustomObject>
#>
function ConvertFrom-LEJsonToApplicationGroupResultSet {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSLoginEnterprise => LEApplicationGroupResultSet' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in LEApplicationGroupResultSet
        $AllProperties = ("items", "totalCount", "offset")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "items"))) { #optional property not found
            $Items = $null
        } else {
            $Items = $JsonParameters.PSobject.Properties["items"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "totalCount"))) { #optional property not found
            $TotalCount = $null
        } else {
            $TotalCount = $JsonParameters.PSobject.Properties["totalCount"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "offset"))) { #optional property not found
            $Offset = $null
        } else {
            $Offset = $JsonParameters.PSobject.Properties["offset"].value
        }

        $PSO = [PSCustomObject]@{
            "items" = ${Items}
            "totalCount" = ${TotalCount}
            "offset" = ${Offset}
        }

        return $PSO
    }

}


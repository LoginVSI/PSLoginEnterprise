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

No description available.

.PARAMETER Errors
No description available.
.PARAMETER Type
No description available.
.PARAMETER Title
No description available.
.PARAMETER Status
No description available.
.PARAMETER Detail
No description available.
.PARAMETER Instance
No description available.
.OUTPUTS

ValidationProblemDetails<PSCustomObject>
#>

function Initialize-LEValidationProblemDetails {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${Errors},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Type},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Title},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Status},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Detail},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Instance}
    )

    Process {
        'Creating PSCustomObject: PSLoginEnterprise => LEValidationProblemDetails' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "errors" = ${Errors}
            "type" = ${Type}
            "title" = ${Title}
            "status" = ${Status}
            "detail" = ${Detail}
            "instance" = ${Instance}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ValidationProblemDetails<PSCustomObject>

.DESCRIPTION

Convert from JSON to ValidationProblemDetails<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ValidationProblemDetails<PSCustomObject>
#>
function ConvertFrom-LEJsonToValidationProblemDetails {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSLoginEnterprise => LEValidationProblemDetails' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json
        $LEValidationProblemDetailsAdditionalProperties = @{}

        # check if Json contains properties not defined in LEValidationProblemDetails
        $AllProperties = ("errors", "type", "title", "status", "detail", "instance")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            # store undefined properties in additionalProperties
            if (!($AllProperties.Contains($name))) {
                $LEValidationProblemDetailsAdditionalProperties[$name] = $JsonParameters.PSobject.Properties[$name].value
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "errors"))) { #optional property not found
            $Errors = $null
        } else {
            $Errors = $JsonParameters.PSobject.Properties["errors"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) { #optional property not found
            $Type = $null
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "title"))) { #optional property not found
            $Title = $null
        } else {
            $Title = $JsonParameters.PSobject.Properties["title"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "status"))) { #optional property not found
            $Status = $null
        } else {
            $Status = $JsonParameters.PSobject.Properties["status"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "detail"))) { #optional property not found
            $Detail = $null
        } else {
            $Detail = $JsonParameters.PSobject.Properties["detail"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "instance"))) { #optional property not found
            $Instance = $null
        } else {
            $Instance = $JsonParameters.PSobject.Properties["instance"].value
        }

        $PSO = [PSCustomObject]@{
            "errors" = ${Errors}
            "type" = ${Type}
            "title" = ${Title}
            "status" = ${Status}
            "detail" = ${Detail}
            "instance" = ${Instance}
            "AdditionalProperties" = $LEValidationProblemDetailsAdditionalProperties
        }

        return $PSO
    }

}


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

ProblemDetails<PSCustomObject>
#>

function Initialize-LEProblemDetails {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Type},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Title},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Status},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Detail},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Instance}
    )

    Process {
        'Creating PSCustomObject: PSLoginEnterprise => LEProblemDetails' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
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

Convert from JSON to ProblemDetails<PSCustomObject>

.DESCRIPTION

Convert from JSON to ProblemDetails<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ProblemDetails<PSCustomObject>
#>
function ConvertFrom-LEJsonToProblemDetails {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSLoginEnterprise => LEProblemDetails' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json
        $LEProblemDetailsAdditionalProperties = @{}

        # check if Json contains properties not defined in LEProblemDetails
        $AllProperties = ("type", "title", "status", "detail", "instance")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            # store undefined properties in additionalProperties
            if (!($AllProperties.Contains($name))) {
                $LEProblemDetailsAdditionalProperties[$name] = $JsonParameters.PSobject.Properties[$name].value
            }
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
            "type" = ${Type}
            "title" = ${Title}
            "status" = ${Status}
            "detail" = ${Detail}
            "instance" = ${Instance}
            "AdditionalProperties" = $LEProblemDetailsAdditionalProperties
        }

        return $PSO
    }

}


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

Connector configuration

.PARAMETER Json

JSON object

.OUTPUTS

ApplicationTestCreateConnector<PSCustomObject>
#>
function ConvertFrom-LEJsonToApplicationTestCreateConnector {
    [CmdletBinding()]
    Param (
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        $match = 0
        $matchType = $null
        $matchInstance = $null

        # try to match CustomConnector defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-LEJsonToCustomConnector $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "CustomConnector"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'CustomConnector' defined in oneOf (LEApplicationTestCreateConnector). Proceeding to the next one if any."
        }

        # try to match DesktopConnector defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-LEJsonToDesktopConnector $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "DesktopConnector"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'DesktopConnector' defined in oneOf (LEApplicationTestCreateConnector). Proceeding to the next one if any."
        }

        # try to match HorizonConnector defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-LEJsonToHorizonConnector $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "HorizonConnector"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'HorizonConnector' defined in oneOf (LEApplicationTestCreateConnector). Proceeding to the next one if any."
        }

        # try to match NetscalerConnector defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-LEJsonToNetscalerConnector $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "NetscalerConnector"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'NetscalerConnector' defined in oneOf (LEApplicationTestCreateConnector). Proceeding to the next one if any."
        }

        # try to match RdpConnector defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-LEJsonToRdpConnector $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "RdpConnector"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'RdpConnector' defined in oneOf (LEApplicationTestCreateConnector). Proceeding to the next one if any."
        }

        # try to match StorefrontConnector defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-LEJsonToStorefrontConnector $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "StorefrontConnector"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'StorefrontConnector' defined in oneOf (LEApplicationTestCreateConnector). Proceeding to the next one if any."
        }

        if ($match -gt 1) {
            throw "Error! The JSON payload matches more than one type defined in oneOf schemas ([CustomConnector, DesktopConnector, HorizonConnector, NetscalerConnector, RdpConnector, StorefrontConnector]). JSON Payload: $($Json)"
        } elseif ($match -eq 1) {
            return [PSCustomObject]@{
                "ActualType" = ${matchType}
                "ActualInstance" = ${matchInstance}
                "OneOfSchemas" = @("CustomConnector", "DesktopConnector", "HorizonConnector", "NetscalerConnector", "RdpConnector", "StorefrontConnector")
            }
        } else {
            throw "Error! The JSON payload doesn't matches any type defined in oneOf schemas ([CustomConnector, DesktopConnector, HorizonConnector, NetscalerConnector, RdpConnector, StorefrontConnector]). JSON Payload: $($Json)"
        }
    }
}


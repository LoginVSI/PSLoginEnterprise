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

Test

.PARAMETER Json

JSON object

.OUTPUTS

ConfigurationGetTest200Response<PSCustomObject>
#>
function ConvertFrom-LEJsonToConfigurationGetTest200Response {
    [CmdletBinding()]
    Param (
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        $match = 0
        $matchType = $null
        $matchInstance = $null

        # try to match ApplicationTest defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-LEJsonToApplicationTest $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "ApplicationTest"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'ApplicationTest' defined in oneOf (LEConfigurationGetTest200Response). Proceeding to the next one if any."
        }

        # try to match ContinuousTest defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-LEJsonToContinuousTest $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "ContinuousTest"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'ContinuousTest' defined in oneOf (LEConfigurationGetTest200Response). Proceeding to the next one if any."
        }

        # try to match LoadTest defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-LEJsonToLoadTest $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "LoadTest"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'LoadTest' defined in oneOf (LEConfigurationGetTest200Response). Proceeding to the next one if any."
        }

        if ($match -gt 1) {
            throw "Error! The JSON payload matches more than one type defined in oneOf schemas ([ApplicationTest, ContinuousTest, LoadTest]). JSON Payload: $($Json)"
        } elseif ($match -eq 1) {
            return [PSCustomObject]@{
                "ActualType" = ${matchType}
                "ActualInstance" = ${matchInstance}
                "OneOfSchemas" = @("ApplicationTest", "ContinuousTest", "LoadTest")
            }
        } else {
            throw "Error! The JSON payload doesn't matches any type defined in oneOf schemas ([ApplicationTest, ContinuousTest, LoadTest]). JSON Payload: $($Json)"
        }
    }
}


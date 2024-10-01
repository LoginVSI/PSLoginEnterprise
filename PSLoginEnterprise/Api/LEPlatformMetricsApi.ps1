#
# Login Enterprise
# v7.0-preview [API Console (Swagger)](/publicApi/swagger/index.html?urls.primaryName=Login%20Enterprise%20API%20v7-preview), [Documentation (ReDoc)](/publicApi/v7-preview/docs/index.html)  v6.0 [API Console (Swagger)](/publicApi/swagger/index.html?urls.primaryName=Login%20Enterprise%20API%20v6), [Documentation (ReDoc)](/publicApi/v6/docs/index.html)  v5.0 [API Console (Swagger)](/publicApi/swagger/index.html?urls.primaryName=Login%20Enterprise%20API%20v5), [Documentation (ReDoc)](/publicApi/v5/docs/index.html)  v4.0 [API Console (Swagger)](/publicApi/swagger/index.html?urls.primaryName=Login%20Enterprise%20API%20v4), [Documentation (ReDoc)](/publicApi/v4/docs/index.html)    <br><b>API v7 (preview) – Introduced in Login Enterprise v5.0 and subject to breaking changes when API v7 becomes generally available.</b></br> <br><b>API v6 – is the recommended version to use. It is the actively developed version starting with Login Enterprise v4.10.</b></br> <br><b>API v5 – is currently supported but unmaintained as of v4.10.</b></br> <br><b>API v4 – is deprecated starting with v4.10. Will be removed in Q3 2023.</b></br>   The Login Enterprise Public API provides documentation and Swagger per version within the product. For additional information please refer to the [documentation](https://support.loginvsi.com/hc/en-us/articles/360009534760) on our website. 
# Version: 7.0-preview
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

Adds a collection of platform metrics for a specified environment.

.DESCRIPTION

No description available.

.PARAMETER PlatformMetric
An array of PlatformMetric objects containing the metrics to be added.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

AddPlatformMetricsResult
#>
function Add-LEPlatformMetrics {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject[]]
        ${PlatformMetric},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Add-LEPlatformMetrics' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-LEConfiguration
        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json')

        # HTTP header 'Content-Type'
        $LocalVarContentTypes = @('application/json')

        $LocalVarUri = '/v7-preview/platform-metrics'

        if (!$PlatformMetric) {
            throw "Error! The required parameter `PlatformMetric` missing when calling addPlatformMetrics."
        }

        $LocalVarBodyParameter = ,$PlatformMetric | ConvertTo-Json -Depth 100



        if ($Configuration["ApiKeyPrefix"] -and $Configuration["ApiKeyPrefix"]["Authorization"]) {
            $apiKeyPrefix = $Configuration["ApiKeyPrefix"]["Authorization"]
        } else {
            $apiKeyPrefix = ""
        }
        if ($Configuration["ApiKey"] -and $Configuration["ApiKey"]["Authorization"]) {
            $LocalVarHeaderParameters['Authorization'] = $apiKeyPrefix + $Configuration["ApiKey"]["Authorization"]
            Write-Verbose ("Using API key 'Authorization' in the header for authentication in {0}" -f $MyInvocation.MyCommand)
        }

        $LocalVarResult = Invoke-LEApiClient -Method 'POST' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "AddPlatformMetricsResult" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

<#
.SYNOPSIS

Retrieves a collection of platform metrics based on the specified filters.

.DESCRIPTION

No description available.

.PARAMETER From
The start date and time for the metrics to be retrieved. (Defaults to 24 hours before the current time if null)

.PARAMETER To
The end date and time for the metrics to be retrieved. (Defaults to 24 hours after the 'from' date if null)

.PARAMETER EnvironmentIds
An array of unique identifiers of the environment to filter the metrics.

.PARAMETER MetricIds
An array of metric identifiers to filter the results.

.PARAMETER MetricGroups
An array of strings representing the groups or categories of metrics to filter the results.

.PARAMETER Instances
An array of strings representing the specific instances or sources associated with the metrics to filter the results.

.PARAMETER ComponentTypes
An array of strings representing the type of the components associated with the metrics to filter the results.

.PARAMETER AggregationWindowEvery
The time interval at which the metrics should be aggregated (e.g., ""10m"", ""1h"", ""30m"").

.PARAMETER AggregationWindowFn
The aggregation function to be applied to the metrics within each aggregation window (e.g., ""mean"", ""median"", ""min).

.PARAMETER GroupColumns
A list of columns used for grouping the metrics. This parameter allows customization of how metrics are grouped in the results.  When specified, the grouping will always include '_measurement' (representing the metric ID) and 'environment_key'.  Available options for grouping include:  - '_measurement': The metric ID. (always included)  - 'environment_key': The key identifying the environment. (always included)  - 'instance': The specific instance or source associated with the metrics.  - 'group': The group or category of the metrics.  - 'component_type': The type of the components associated with the metrics.  - '{user_defined_custom_tag}': Any user-defined custom tags.

.PARAMETER CustomTagsFilters
Filters for custom tags. The expected format can be one of the following:  - ""tagKey=tagValue1;tagValue2;tagValue3"": Selects metrics where 'tagKey' is equal to 'tagValue1', 'tagValue2' OR 'tagValue3'.  - ""tagKey=*"": Selects metrics where 'tagKey' is present in the collection of custom tags.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

PlatformMetricSeries[]
#>
function Get-LEPlatformMetrics {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[System.DateTime]]
        ${From},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[System.DateTime]]
        ${To},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String[]]
        ${EnvironmentIds},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String[]]
        ${MetricIds},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String[]]
        ${MetricGroups},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String[]]
        ${Instances},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String[]]
        ${ComponentTypes},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${AggregationWindowEvery},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${AggregationWindowFn},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String[]]
        ${GroupColumns},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String[]]
        ${CustomTagsFilters},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Get-LEPlatformMetrics' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-LEConfiguration
        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json')

        $LocalVarUri = '/v7-preview/platform-metrics'

        $LocalVarQueryParameters['from'] = $From

        $LocalVarQueryParameters['to'] = $To

        if ($EnvironmentIds) {
            $LocalVarQueryParameters['environmentIds'] = $EnvironmentIds
        }

        if ($MetricIds) {
            $LocalVarQueryParameters['metricIds'] = $MetricIds
        }

        if ($MetricGroups) {
            $LocalVarQueryParameters['metricGroups'] = $MetricGroups
        }

        if ($Instances) {
            $LocalVarQueryParameters['instances'] = $Instances
        }

        if ($ComponentTypes) {
            $LocalVarQueryParameters['componentTypes'] = $ComponentTypes
        }

        if ($AggregationWindowEvery) {
            $LocalVarQueryParameters['aggregationWindowEvery'] = $AggregationWindowEvery
        }

        if ($AggregationWindowFn) {
            $LocalVarQueryParameters['aggregationWindowFn'] = $AggregationWindowFn
        }

        if ($GroupColumns) {
            $LocalVarQueryParameters['groupColumns'] = $GroupColumns
        }

        if ($CustomTagsFilters) {
            $LocalVarQueryParameters['customTagsFilters'] = $CustomTagsFilters
        }



        if ($Configuration["ApiKeyPrefix"] -and $Configuration["ApiKeyPrefix"]["Authorization"]) {
            $apiKeyPrefix = $Configuration["ApiKeyPrefix"]["Authorization"]
        } else {
            $apiKeyPrefix = ""
        }
        if ($Configuration["ApiKey"] -and $Configuration["ApiKey"]["Authorization"]) {
            $LocalVarHeaderParameters['Authorization'] = $apiKeyPrefix + $Configuration["ApiKey"]["Authorization"]
            Write-Verbose ("Using API key 'Authorization' in the header for authentication in {0}" -f $MyInvocation.MyCommand)
        }

        $LocalVarResult = Invoke-LEApiClient -Method 'GET' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "PlatformMetricSeries[]" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

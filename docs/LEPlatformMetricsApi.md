# PSLoginEnterprise.PSLoginEnterprise\Api.LEPlatformMetricsApi

All URIs are relative to */publicApi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Add-LEPlatformMetrics**](LEPlatformMetricsApi.md#Add-LEPlatformMetrics) | **POST** /v7-preview/platform-metrics | Adds a collection of platform metrics for a specified environment.
[**Get-LEPlatformMetrics**](LEPlatformMetricsApi.md#Get-LEPlatformMetrics) | **GET** /v7-preview/platform-metrics | Retrieves a collection of platform metrics based on the specified filters.


<a id="Add-LEPlatformMetrics"></a>
# **Add-LEPlatformMetrics**
> AddPlatformMetricsResult Add-LEPlatformMetrics<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PlatformMetric] <PSCustomObject[]><br>

Adds a collection of platform metrics for a specified environment.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$accessToken = "YOUR_ACCESS_TOKEN"

# Configure your appliance name
$applianceName = "YOUR_APPLIANCE_HOSTNAME"

 
$bearerToken = @{"Authorization"="Bearer $accessToken"}
Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken
 

$PlatformMetric = Initialize-LEPlatformMetric -MetricId "MyMetricId" -EnvironmentKey "MyEnvironmentKey" -Timestamp (Get-Date) -DisplayName "MyDisplayName" -Unit "MyUnit" -Instance "MyInstance" -Value 0 -Group "MyGroup" -ComponentType "MyComponentType" -CustomTags @{ key_example = "MyInner" } # PlatformMetric[] | An array of PlatformMetric objects containing the metrics to be added.

# Adds a collection of platform metrics for a specified environment.
try {
    $Result = Add-LEPlatformMetrics -PlatformMetric $PlatformMetric
} catch {
    Write-Host ("Exception occurred when calling Add-LEPlatformMetrics: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PlatformMetric** | [**PlatformMetric[]**](PlatformMetric.md)| An array of PlatformMetric objects containing the metrics to be added. | 

### Return type

[**AddPlatformMetricsResult**](AddPlatformMetricsResult.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-LEPlatformMetrics"></a>
# **Get-LEPlatformMetrics**
> PlatformMetricSeries[] Get-LEPlatformMetrics<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-From] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-To] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EnvironmentIds] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MetricIds] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MetricGroups] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Instances] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ComponentTypes] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AggregationWindowEvery] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AggregationWindowFn] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupColumns] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CustomTagsFilters] <String[]><br>

Retrieves a collection of platform metrics based on the specified filters.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$accessToken = "YOUR_ACCESS_TOKEN"

# Configure your appliance name
$applianceName = "YOUR_APPLIANCE_HOSTNAME"

 
$bearerToken = @{"Authorization"="Bearer $accessToken"}
Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken
 

$From = (Get-Date) # System.DateTime | The start date and time for the metrics to be retrieved. (Defaults to 24 hours before the current time if null) (optional)
$To = (Get-Date) # System.DateTime | The end date and time for the metrics to be retrieved. (Defaults to 24 hours after the 'from' date if null) (optional)
$EnvironmentIds = "MyEnvironmentIds" # String[] | An array of unique identifiers of the environment to filter the metrics. (optional)
$MetricIds = "MyMetricIds" # String[] | An array of metric identifiers to filter the results. (optional)
$MetricGroups = "MyMetricGroups" # String[] | An array of strings representing the groups or categories of metrics to filter the results. (optional)
$Instances = "MyInstances" # String[] | An array of strings representing the specific instances or sources associated with the metrics to filter the results. (optional)
$ComponentTypes = "MyComponentTypes" # String[] | An array of strings representing the type of the components associated with the metrics to filter the results. (optional)
$AggregationWindowEvery = "MyAggregationWindowEvery" # String | The time interval at which the metrics should be aggregated (e.g.,  10m ,  1h ,  30m ). (optional)
$AggregationWindowFn = "MyAggregationWindowFn" # String | The aggregation function to be applied to the metrics within each aggregation window (e.g.,  mean ,  median ,  min). (optional)
$GroupColumns = "MyGroupColumns" # String[] | A list of columns used for grouping the metrics. This parameter allows customization of how metrics are grouped in the results.  When specified, the grouping will always include '_measurement' (representing the metric ID) and 'environment_key'.  Available options for grouping include:  - '_measurement': The metric ID. (always included)  - 'environment_key': The key identifying the environment. (always included)  - 'instance': The specific instance or source associated with the metrics.  - 'group': The group or category of the metrics.  - 'component_type': The type of the components associated with the metrics.  - '{user_defined_custom_tag}': Any user-defined custom tags. (optional)
$CustomTagsFilters = "MyCustomTagsFilters" # String[] | Filters for custom tags. The expected format can be one of the following:  -  tagKey=tagValue1;tagValue2;tagValue3 : Selects metrics where 'tagKey' is equal to 'tagValue1', 'tagValue2' OR 'tagValue3'.  -  tagKey=* : Selects metrics where 'tagKey' is present in the collection of custom tags. (optional)

# Retrieves a collection of platform metrics based on the specified filters.
try {
    $Result = Get-LEPlatformMetrics -From $From -To $To -EnvironmentIds $EnvironmentIds -MetricIds $MetricIds -MetricGroups $MetricGroups -Instances $Instances -ComponentTypes $ComponentTypes -AggregationWindowEvery $AggregationWindowEvery -AggregationWindowFn $AggregationWindowFn -GroupColumns $GroupColumns -CustomTagsFilters $CustomTagsFilters
} catch {
    Write-Host ("Exception occurred when calling Get-LEPlatformMetrics: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **From** | **System.DateTime**| The start date and time for the metrics to be retrieved. (Defaults to 24 hours before the current time if null) | [optional] 
 **To** | **System.DateTime**| The end date and time for the metrics to be retrieved. (Defaults to 24 hours after the &#39;from&#39; date if null) | [optional] 
 **EnvironmentIds** | [**String[]**](String.md)| An array of unique identifiers of the environment to filter the metrics. | [optional] 
 **MetricIds** | [**String[]**](String.md)| An array of metric identifiers to filter the results. | [optional] 
 **MetricGroups** | [**String[]**](String.md)| An array of strings representing the groups or categories of metrics to filter the results. | [optional] 
 **Instances** | [**String[]**](String.md)| An array of strings representing the specific instances or sources associated with the metrics to filter the results. | [optional] 
 **ComponentTypes** | [**String[]**](String.md)| An array of strings representing the type of the components associated with the metrics to filter the results. | [optional] 
 **AggregationWindowEvery** | **String**| The time interval at which the metrics should be aggregated (e.g., &quot;&quot;10m&quot;&quot;, &quot;&quot;1h&quot;&quot;, &quot;&quot;30m&quot;&quot;). | [optional] 
 **AggregationWindowFn** | **String**| The aggregation function to be applied to the metrics within each aggregation window (e.g., &quot;&quot;mean&quot;&quot;, &quot;&quot;median&quot;&quot;, &quot;&quot;min). | [optional] 
 **GroupColumns** | [**String[]**](String.md)| A list of columns used for grouping the metrics. This parameter allows customization of how metrics are grouped in the results.  When specified, the grouping will always include &#39;_measurement&#39; (representing the metric ID) and &#39;environment_key&#39;.  Available options for grouping include:  - &#39;_measurement&#39;: The metric ID. (always included)  - &#39;environment_key&#39;: The key identifying the environment. (always included)  - &#39;instance&#39;: The specific instance or source associated with the metrics.  - &#39;group&#39;: The group or category of the metrics.  - &#39;component_type&#39;: The type of the components associated with the metrics.  - &#39;{user_defined_custom_tag}&#39;: Any user-defined custom tags. | [optional] 
 **CustomTagsFilters** | [**String[]**](String.md)| Filters for custom tags. The expected format can be one of the following:  - &quot;&quot;tagKey&#x3D;tagValue1;tagValue2;tagValue3&quot;&quot;: Selects metrics where &#39;tagKey&#39; is equal to &#39;tagValue1&#39;, &#39;tagValue2&#39; OR &#39;tagValue3&#39;.  - &quot;&quot;tagKey&#x3D;*&quot;&quot;: Selects metrics where &#39;tagKey&#39; is present in the collection of custom tags. | [optional] 

### Return type

[**PlatformMetricSeries[]**](PlatformMetricSeries.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# PSLoginEnterprise.PSLoginEnterprise\Api.LEApplianceHealthApi

All URIs are relative to */publicApi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-LEApplianceHealthAlertSettingsAsync**](LEApplianceHealthApi.md#Get-LEApplianceHealthAlertSettingsAsync) | **GET** /v7/appliance-health/settings | Retrieves the current appliance health alert settings.
[**Get-LEApplianceHealthMetricsAsync**](LEApplianceHealthApi.md#Get-LEApplianceHealthMetricsAsync) | **GET** /v7/appliance-health | Retrieves a collection of appliance health metrics based on the specified filters.
[**Update-LEApplianceHealthAlertSettingsAsync**](LEApplianceHealthApi.md#Update-LEApplianceHealthAlertSettingsAsync) | **PUT** /v7/appliance-health/settings | Updates the appliance health alert settings.


<a id="Get-LEApplianceHealthAlertSettingsAsync"></a>
# **Get-LEApplianceHealthAlertSettingsAsync**
> ApplianceHealthAlertSettings Get-LEApplianceHealthAlertSettingsAsync<br>

Retrieves the current appliance health alert settings.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$accessToken = "YOUR_ACCESS_TOKEN"

# Configure your appliance name
$applianceName = "YOUR_APPLIANCE_HOSTNAME"

# $applianceName = "YOUR_APPLIANCE_URL"
$bearerToken = @{"Authorization"="Bearer $accessToken"}
# Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken
""


# Retrieves the current appliance health alert settings.
try {
    $Result = Get-LEApplianceHealthAlertSettingsAsync
} catch {
    Write-Host ("Exception occurred when calling Get-LEApplianceHealthAlertSettingsAsync: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ApplianceHealthAlertSettings**](ApplianceHealthAlertSettings.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-LEApplianceHealthMetricsAsync"></a>
# **Get-LEApplianceHealthMetricsAsync**
> ApplianceHealthMetricSeries[] Get-LEApplianceHealthMetricsAsync<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-From] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-To] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MetricIds] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AggregationWindowEvery] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AggregationWindowFn] <String><br>

Retrieves a collection of appliance health metrics based on the specified filters.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$accessToken = "YOUR_ACCESS_TOKEN"

# Configure your appliance name
$applianceName = "YOUR_APPLIANCE_HOSTNAME"

# $applianceName = "YOUR_APPLIANCE_URL"
$bearerToken = @{"Authorization"="Bearer $accessToken"}
# Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken
""

$From = (Get-Date) # System.DateTime | The start date and time for the metrics to be retrieved. (Defaults to 24 hours before the current time if null) (optional)
$To = (Get-Date) # System.DateTime | The end date and time for the metrics to be retrieved. (Defaults to 24 hours after the 'from' date if null) (optional)
$MetricIds = "MyMetricIds" # String[] | An array of metric identifiers to filter the results. (optional)
$AggregationWindowEvery = "MyAggregationWindowEvery" # String | The time interval at which the metrics should be aggregated (e.g., ""10m"", ""1h"", ""30m""). (optional)
$AggregationWindowFn = "MyAggregationWindowFn" # String | The aggregation function to be applied to the metrics within each aggregation window (e.g., ""mean"", ""median"", ""min). (optional)

# Retrieves a collection of appliance health metrics based on the specified filters.
try {
    $Result = Get-LEApplianceHealthMetricsAsync -From $From -To $To -MetricIds $MetricIds -AggregationWindowEvery $AggregationWindowEvery -AggregationWindowFn $AggregationWindowFn
} catch {
    Write-Host ("Exception occurred when calling Get-LEApplianceHealthMetricsAsync: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **From** | **System.DateTime**| The start date and time for the metrics to be retrieved. (Defaults to 24 hours before the current time if null) | [optional] 
 **To** | **System.DateTime**| The end date and time for the metrics to be retrieved. (Defaults to 24 hours after the &#39;from&#39; date if null) | [optional] 
 **MetricIds** | [**String[]**](String.md)| An array of metric identifiers to filter the results. | [optional] 
 **AggregationWindowEvery** | **String**| The time interval at which the metrics should be aggregated (e.g., &quot;&quot;10m&quot;&quot;, &quot;&quot;1h&quot;&quot;, &quot;&quot;30m&quot;&quot;). | [optional] 
 **AggregationWindowFn** | **String**| The aggregation function to be applied to the metrics within each aggregation window (e.g., &quot;&quot;mean&quot;&quot;, &quot;&quot;median&quot;&quot;, &quot;&quot;min). | [optional] 

### Return type

[**ApplianceHealthMetricSeries[]**](ApplianceHealthMetricSeries.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-LEApplianceHealthAlertSettingsAsync"></a>
# **Update-LEApplianceHealthAlertSettingsAsync**
> void Update-LEApplianceHealthAlertSettingsAsync<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ApplianceHealthAlertSettings] <PSCustomObject><br>

Updates the appliance health alert settings.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$accessToken = "YOUR_ACCESS_TOKEN"

# Configure your appliance name
$applianceName = "YOUR_APPLIANCE_HOSTNAME"

# $applianceName = "YOUR_APPLIANCE_URL"
$bearerToken = @{"Authorization"="Bearer $accessToken"}
# Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken
""

$ApplianceHealthAlertSettings = Initialize-LEApplianceHealthAlertSettings -EmailNotificationEnabled $false -EmailRecipients "MyEmailRecipients" -EmailCooldownHours 0 # ApplianceHealthAlertSettings | The updated settings to apply. (optional)

# Updates the appliance health alert settings.
try {
    $Result = Update-LEApplianceHealthAlertSettingsAsync -ApplianceHealthAlertSettings $ApplianceHealthAlertSettings
} catch {
    Write-Host ("Exception occurred when calling Update-LEApplianceHealthAlertSettingsAsync: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ApplianceHealthAlertSettings** | [**ApplianceHealthAlertSettings**](ApplianceHealthAlertSettings.md)| The updated settings to apply. | [optional] 

### Return type

void (empty response body)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


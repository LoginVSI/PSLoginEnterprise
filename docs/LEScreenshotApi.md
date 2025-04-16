# PSLoginEnterprise.PSLoginEnterprise\Api.LEScreenshotApi

All URIs are relative to */publicApi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-LEScreenshotByAppExecution**](LEScreenshotApi.md#Get-LEScreenshotByAppExecution) | **GET** /v7/test-runs/{testRunId}/app-executions/{appExecutionId}/screenshots/{screenshotId} | Get screenshot by app-execution id and screenshot id
[**Get-LEScreenshotByEvent**](LEScreenshotApi.md#Get-LEScreenshotByEvent) | **GET** /v7/test-runs/{testRunId}/events/{eventId}/screenshots | Get screenshot by event id
[**Get-LEScreenshotsByAppExecution**](LEScreenshotApi.md#Get-LEScreenshotsByAppExecution) | **GET** /v7/test-runs/{testRunId}/app-executions/{appExecutionId}/screenshots | Get list of screenshot by app-execution id


<a id="Get-LEScreenshotByAppExecution"></a>
# **Get-LEScreenshotByAppExecution**
> System.IO.FileInfo Get-LEScreenshotByAppExecution<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestRunId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AppExecutionId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ScreenshotId] <String><br>

Get screenshot by app-execution id and screenshot id

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$accessToken = "YOUR_ACCESS_TOKEN"

# Configure your appliance name
$applianceName = "YOUR_APPLIANCE_HOSTNAME"

# $applianceName = "YOUR_APPLIANCE_URL"
$bearerToken = @{"Authorization"="Bearer $accessToken"}
Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken
""

$TestRunId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Test-run id
$AppExecutionId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | App-execution id
$ScreenshotId = "MyScreenshotId" # String | Screenshot name

# Get screenshot by app-execution id and screenshot id
try {
    $Result = Get-LEScreenshotByAppExecution -TestRunId $TestRunId -AppExecutionId $AppExecutionId -ScreenshotId $ScreenshotId
} catch {
    Write-Host ("Exception occurred when calling Get-LEScreenshotByAppExecution: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestRunId** | **String**| Test-run id | 
 **AppExecutionId** | **String**| App-execution id | 
 **ScreenshotId** | **String**| Screenshot name | 

### Return type

**System.IO.FileInfo**

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-LEScreenshotByEvent"></a>
# **Get-LEScreenshotByEvent**
> System.IO.FileInfo Get-LEScreenshotByEvent<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestRunId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EventId] <String><br>

Get screenshot by event id

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$accessToken = "YOUR_ACCESS_TOKEN"

# Configure your appliance name
$applianceName = "YOUR_APPLIANCE_HOSTNAME"

# $applianceName = "YOUR_APPLIANCE_URL"
$bearerToken = @{"Authorization"="Bearer $accessToken"}
Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken
""

$TestRunId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Test-run id
$EventId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Event id

# Get screenshot by event id
try {
    $Result = Get-LEScreenshotByEvent -TestRunId $TestRunId -EventId $EventId
} catch {
    Write-Host ("Exception occurred when calling Get-LEScreenshotByEvent: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestRunId** | **String**| Test-run id | 
 **EventId** | **String**| Event id | 

### Return type

**System.IO.FileInfo**

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-LEScreenshotsByAppExecution"></a>
# **Get-LEScreenshotsByAppExecution**
> Screenshot[] Get-LEScreenshotsByAppExecution<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestRunId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AppExecutionId] <String><br>

Get list of screenshot by app-execution id

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$accessToken = "YOUR_ACCESS_TOKEN"

# Configure your appliance name
$applianceName = "YOUR_APPLIANCE_HOSTNAME"

# $applianceName = "YOUR_APPLIANCE_URL"
$bearerToken = @{"Authorization"="Bearer $accessToken"}
Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken
""

$TestRunId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Test-run id
$AppExecutionId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | App-execution id

# Get list of screenshot by app-execution id
try {
    $Result = Get-LEScreenshotsByAppExecution -TestRunId $TestRunId -AppExecutionId $AppExecutionId
} catch {
    Write-Host ("Exception occurred when calling Get-LEScreenshotsByAppExecution: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestRunId** | **String**| Test-run id | 
 **AppExecutionId** | **String**| App-execution id | 

### Return type

[**Screenshot[]**](Screenshot.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


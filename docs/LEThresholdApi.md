# PSLoginEnterprise.PSLoginEnterprise\Api.LEThresholdApi

All URIs are relative to */publicApi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-LEApplicationTestThreshold**](LEThresholdApi.md#New-LEApplicationTestThreshold) | **POST** /v7/tests/{testId}/thresholds | Create threshold
[**Invoke-LEDeleteApplicationTestThreshold**](LEThresholdApi.md#Invoke-LEDeleteApplicationTestThreshold) | **DELETE** /v7/tests/{testId}/thresholds/{thresholdId} | Delete threshold
[**Get-LEApplicationTestThresholds**](LEThresholdApi.md#Get-LEApplicationTestThresholds) | **GET** /v7/tests/{testId}/thresholds | Get list of thresholds by test id
[**Update-LEApplicationTestThreshold**](LEThresholdApi.md#Update-LEApplicationTestThreshold) | **PUT** /v7/tests/{testId}/thresholds/{thresholdId} | Update threshold


<a id="New-LEApplicationTestThreshold"></a>
# **New-LEApplicationTestThreshold**
> ObjectId New-LEApplicationTestThreshold<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AppThresholdCreate] <PSCustomObject><br>

Create threshold

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

$TestId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Test id
$AppThresholdCreate = Initialize-LEAppThresholdCreate -ApplicationId "MyApplicationId" -Timer "MyTimer" -IsEnabled $false -Value 0 # AppThresholdCreate | Threshold data

# Create threshold
try {
    $Result = New-LEApplicationTestThreshold -TestId $TestId -AppThresholdCreate $AppThresholdCreate
} catch {
    Write-Host ("Exception occurred when calling New-LEApplicationTestThreshold: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestId** | **String**| Test id | 
 **AppThresholdCreate** | [**AppThresholdCreate**](AppThresholdCreate.md)| Threshold data | 

### Return type

[**ObjectId**](ObjectId.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-LEDeleteApplicationTestThreshold"></a>
# **Invoke-LEDeleteApplicationTestThreshold**
> void Invoke-LEDeleteApplicationTestThreshold<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ThresholdId] <String><br>

Delete threshold

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

$TestId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Test id
$ThresholdId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Threshold id

# Delete threshold
try {
    $Result = Invoke-LEDeleteApplicationTestThreshold -TestId $TestId -ThresholdId $ThresholdId
} catch {
    Write-Host ("Exception occurred when calling Invoke-LEDeleteApplicationTestThreshold: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestId** | **String**| Test id | 
 **ThresholdId** | **String**| Threshold id | 

### Return type

void (empty response body)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-LEApplicationTestThresholds"></a>
# **Get-LEApplicationTestThresholds**
> ConfigurationGetApplicationTestThresholds200ResponseInner[] Get-LEApplicationTestThresholds<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestId] <String><br>

Get list of thresholds by test id

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

$TestId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Test id

# Get list of thresholds by test id
try {
    $Result = Get-LEApplicationTestThresholds -TestId $TestId
} catch {
    Write-Host ("Exception occurred when calling Get-LEApplicationTestThresholds: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestId** | **String**| Test id | 

### Return type

[**ConfigurationGetApplicationTestThresholds200ResponseInner[]**](ConfigurationGetApplicationTestThresholds200ResponseInner.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-LEApplicationTestThreshold"></a>
# **Update-LEApplicationTestThreshold**
> void Update-LEApplicationTestThreshold<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ThresholdId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ThresholdUpdate] <PSCustomObject><br>

Update threshold

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

$TestId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Test id
$ThresholdId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Threshold id
$ThresholdUpdate = Initialize-LEThresholdUpdate -IsEnabled $false -Value 0 # ThresholdUpdate | Threshold data

# Update threshold
try {
    $Result = Update-LEApplicationTestThreshold -TestId $TestId -ThresholdId $ThresholdId -ThresholdUpdate $ThresholdUpdate
} catch {
    Write-Host ("Exception occurred when calling Update-LEApplicationTestThreshold: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestId** | **String**| Test id | 
 **ThresholdId** | **String**| Threshold id | 
 **ThresholdUpdate** | [**ThresholdUpdate**](ThresholdUpdate.md)| Threshold data | 

### Return type

void (empty response body)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


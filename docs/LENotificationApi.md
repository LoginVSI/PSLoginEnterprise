# PSLoginEnterprise.PSLoginEnterprise\Api.LENotificationApi

All URIs are relative to */publicApi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-LEContinuousTestNotification**](LENotificationApi.md#New-LEContinuousTestNotification) | **POST** /v6/tests/{testId}/notifications | Create test-notification
[**Invoke-LEDeleteContinuousTestNotification**](LENotificationApi.md#Invoke-LEDeleteContinuousTestNotification) | **DELETE** /v6/tests/{testId}/notifications/{notificationId} | Delete test-notification
[**Get-LEContinuousTestNotifications**](LENotificationApi.md#Get-LEContinuousTestNotifications) | **GET** /v6/tests/{testId}/notifications | Get list of test-notification
[**Update-LEContinuousTestNotification**](LENotificationApi.md#Update-LEContinuousTestNotification) | **PUT** /v6/tests/{testId}/notifications/{notificationId} | Update test-notification


<a id="New-LEContinuousTestNotification"></a>
# **New-LEContinuousTestNotification**
> void New-LEContinuousTestNotification<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ThresholdNotificationCreate] <PSCustomObject><br>

Create test-notification

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$accessToken = "YOUR_ACCESS_TOKEN"
$applianceName = "YOUR_APPLIANCE_URL"
$bearerToken = @{"Authorization"="Bearer $accessToken"}
Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken 


$TestId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Test id
$AppThresholdCreate = Initialize-LEAppThresholdCreate -ApplicationId "MyApplicationId" -Timer "MyTimer" -IsEnabled $false -Value 0
$ThresholdNotificationCreate = Initialize-LEThresholdNotificationCreate -Type "MyType" -Threshold $AppThresholdCreate -TimesExceeded 0 -PeriodDuration 0 -IsEnabled $false # ThresholdNotificationCreate | Test-notification date

# Create test-notification
try {
    $Result = New-LEContinuousTestNotification -TestId $TestId -ThresholdNotificationCreate $ThresholdNotificationCreate
} catch {
    Write-Host ("Exception occurred when calling New-LEContinuousTestNotification: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestId** | **String**| Test id | 
 **ThresholdNotificationCreate** | [**ThresholdNotificationCreate**](ThresholdNotificationCreate.md)| Test-notification date | 

### Return type

void (empty response body)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-LEDeleteContinuousTestNotification"></a>
# **Invoke-LEDeleteContinuousTestNotification**
> void Invoke-LEDeleteContinuousTestNotification<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-NotificationId] <String><br>

Delete test-notification

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$accessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$applianceName = "YOUR_APPLIANCE_URL"
$bearerToken = @{"Authorization"="Bearer $accessToken"}
Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken 


$TestId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Test id
$NotificationId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Test-notification id

# Delete test-notification
try {
    $Result = Invoke-LEDeleteContinuousTestNotification -TestId $TestId -NotificationId $NotificationId
} catch {
    Write-Host ("Exception occurred when calling Invoke-LEDeleteContinuousTestNotification: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestId** | **String**| Test id | 
 **NotificationId** | **String**| Test-notification id | 

### Return type

void (empty response body)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-LEContinuousTestNotifications"></a>
# **Get-LEContinuousTestNotifications**
> ConfigurationGetContinuousTestNotifications200ResponseInner[] Get-LEContinuousTestNotifications<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestId] <String><br>

Get list of test-notification

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$accessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$applianceName = "YOUR_APPLIANCE_URL"
$bearerToken = @{"Authorization"="Bearer $accessToken"}
Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken 


$TestId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Test id

# Get list of test-notification
try {
    $Result = Get-LEContinuousTestNotifications -TestId $TestId
} catch {
    Write-Host ("Exception occurred when calling Get-LEContinuousTestNotifications: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestId** | **String**| Test id | 

### Return type

[**ConfigurationGetContinuousTestNotifications200ResponseInner[]**](ConfigurationGetContinuousTestNotifications200ResponseInner.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-LEContinuousTestNotification"></a>
# **Update-LEContinuousTestNotification**
> void Update-LEContinuousTestNotification<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-NotificationId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ConfigurationUpdateContinuousTestNotificationRequest] <PSCustomObject><br>

Update test-notification

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$accessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$applianceName = "YOUR_APPLIANCE_URL"
$bearerToken = @{"Authorization"="Bearer $accessToken"}
Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken 


$TestId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Test id
$NotificationId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Test-notification id
$ThresholdUpdate = Initialize-LEThresholdUpdate -IsEnabled $false -Value 0
$ConfigurationUpdateContinuousTestNotificationRequest = Initialize-LEConfigurationUpdateContinuousTestNotificationRequest -Type "MyType" -TimesExceeded 0 -PeriodDuration 0 -IsEnabled $false -ThresholdUpdate $ThresholdUpdate # ConfigurationUpdateContinuousTestNotificationRequest | Test-notification data

# Update test-notification
try {
    $Result = Update-LEContinuousTestNotification -TestId $TestId -NotificationId $NotificationId -ConfigurationUpdateContinuousTestNotificationRequest $ConfigurationUpdateContinuousTestNotificationRequest
} catch {
    Write-Host ("Exception occurred when calling Update-LEContinuousTestNotification: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestId** | **String**| Test id | 
 **NotificationId** | **String**| Test-notification id | 
 **ConfigurationUpdateContinuousTestNotificationRequest** | [**ConfigurationUpdateContinuousTestNotificationRequest**](ConfigurationUpdateContinuousTestNotificationRequest.md)| Test-notification data | 

### Return type

void (empty response body)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


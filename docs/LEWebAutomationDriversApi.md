# PSLoginEnterprise.PSLoginEnterprise\Api.LEWebAutomationDriversApi

All URIs are relative to */publicApi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-LECheckUpdateDriverVersions**](LEWebAutomationDriversApi.md#Invoke-LECheckUpdateDriverVersions) | **GET** /v6/web-automation-drivers/status | Get list of the current and missing web automation drivers
[**Set-LEAutomaticWebDriverUpdate**](LEWebAutomationDriversApi.md#Set-LEAutomaticWebDriverUpdate) | **PUT** /v6/web-automation-drivers/automatic-update/configure | Update Driver Update Config
[**Invoke-LEDownloadLatestWebAutomationDrivers**](LEWebAutomationDriversApi.md#Invoke-LEDownloadLatestWebAutomationDrivers) | **GET** /v6/web-automation-drivers/download | Download the latest web automation drivers
[**Get-LEWebDriverUpdateInfo**](LEWebAutomationDriversApi.md#Get-LEWebDriverUpdateInfo) | **GET** /v6/web-automation-drivers/automatic-update/configure | Get Driver Update Config


<a id="Invoke-LECheckUpdateDriverVersions"></a>
# **Invoke-LECheckUpdateDriverVersions**
> WebDriverUpdateStatus Invoke-LECheckUpdateDriverVersions<br>

Get list of the current and missing web automation drivers

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-LEConfiguration

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure API key authorization: Bearer
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"


# Get list of the current and missing web automation drivers
try {
    $Result = Invoke-LECheckUpdateDriverVersions
} catch {
    Write-Host ("Exception occurred when calling Invoke-LECheckUpdateDriverVersions: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**WebDriverUpdateStatus**](WebDriverUpdateStatus.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Set-LEAutomaticWebDriverUpdate"></a>
# **Set-LEAutomaticWebDriverUpdate**
> void Set-LEAutomaticWebDriverUpdate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <Boolean><br>

Update Driver Update Config

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-LEConfiguration

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure API key authorization: Bearer
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"

$Body = $true # Boolean | auto Update Enabled

# Update Driver Update Config
try {
    $Result = Set-LEAutomaticWebDriverUpdate -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Set-LEAutomaticWebDriverUpdate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Body** | **Boolean**| auto Update Enabled | 

### Return type

void (empty response body)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-LEDownloadLatestWebAutomationDrivers"></a>
# **Invoke-LEDownloadLatestWebAutomationDrivers**
> WebDriverUpdateResult[] Invoke-LEDownloadLatestWebAutomationDrivers<br>

Download the latest web automation drivers

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-LEConfiguration

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure API key authorization: Bearer
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"


# Download the latest web automation drivers
try {
    $Result = Invoke-LEDownloadLatestWebAutomationDrivers
} catch {
    Write-Host ("Exception occurred when calling Invoke-LEDownloadLatestWebAutomationDrivers: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**WebDriverUpdateResult[]**](WebDriverUpdateResult.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-LEWebDriverUpdateInfo"></a>
# **Get-LEWebDriverUpdateInfo**
> WebDriverUpdateInfo Get-LEWebDriverUpdateInfo<br>

Get Driver Update Config

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-LEConfiguration

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure API key authorization: Bearer
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"


# Get Driver Update Config
try {
    $Result = Get-LEWebDriverUpdateInfo
} catch {
    Write-Host ("Exception occurred when calling Get-LEWebDriverUpdateInfo: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**WebDriverUpdateInfo**](WebDriverUpdateInfo.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


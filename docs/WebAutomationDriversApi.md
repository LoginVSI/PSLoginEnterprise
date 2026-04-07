# PSLoginEnterprise.PSLoginEnterprise\Api.WebAutomationDriversApi

All URIs are relative to */publicApi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-DataCheckUpdateDriverVersions**](WebAutomationDriversApi.md#Invoke-DataCheckUpdateDriverVersions) | **GET** /v7/web-automation-drivers/status | Get list of the current and missing web automation drivers
[**Invoke-DataConfigureAutomaticWebDriverUpdate**](WebAutomationDriversApi.md#Invoke-DataConfigureAutomaticWebDriverUpdate) | **PUT** /v7/web-automation-drivers/automatic-update/configure | Update Driver Update Config
[**Invoke-DataDownloadLatestWebAutomationDrivers**](WebAutomationDriversApi.md#Invoke-DataDownloadLatestWebAutomationDrivers) | **GET** /v7/web-automation-drivers/download | Download the latest web automation drivers
[**Invoke-DataGetWebDriverUpdateInfo**](WebAutomationDriversApi.md#Invoke-DataGetWebDriverUpdateInfo) | **GET** /v7/web-automation-drivers/automatic-update/configure | Get Driver Update Config


<a id="Invoke-DataCheckUpdateDriverVersions"></a>
# **Invoke-DataCheckUpdateDriverVersions**
> WebDriverUpdateStatus Invoke-DataCheckUpdateDriverVersions<br>

Get list of the current and missing web automation drivers

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$accessToken = "YOUR_ACCESS_TOKEN"

# Configure your appliance name
$applianceName = "YOUR_APPLIANCE_HOSTNAME"

# $applianceName = "YOUR_APPLIANCE_HOSTNAME"
$bearerToken = @{"Authorization"="Bearer $accessToken"}
# Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken
""


# Get list of the current and missing web automation drivers
try {
    $Result = Invoke-DataCheckUpdateDriverVersions
} catch {
    Write-Host ("Exception occurred when calling Invoke-DataCheckUpdateDriverVersions: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-DataConfigureAutomaticWebDriverUpdate"></a>
# **Invoke-DataConfigureAutomaticWebDriverUpdate**
> void Invoke-DataConfigureAutomaticWebDriverUpdate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <Boolean><br>

Update Driver Update Config

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$accessToken = "YOUR_ACCESS_TOKEN"

# Configure your appliance name
$applianceName = "YOUR_APPLIANCE_HOSTNAME"

# $applianceName = "YOUR_APPLIANCE_HOSTNAME"
$bearerToken = @{"Authorization"="Bearer $accessToken"}
# Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken
""

$Body = $true # Boolean | auto Update Enabled

# Update Driver Update Config
try {
    $Result = Invoke-DataConfigureAutomaticWebDriverUpdate -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Invoke-DataConfigureAutomaticWebDriverUpdate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-DataDownloadLatestWebAutomationDrivers"></a>
# **Invoke-DataDownloadLatestWebAutomationDrivers**
> WebDriverUpdateResult[] Invoke-DataDownloadLatestWebAutomationDrivers<br>

Download the latest web automation drivers

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$accessToken = "YOUR_ACCESS_TOKEN"

# Configure your appliance name
$applianceName = "YOUR_APPLIANCE_HOSTNAME"

# $applianceName = "YOUR_APPLIANCE_HOSTNAME"
$bearerToken = @{"Authorization"="Bearer $accessToken"}
# Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken
""


# Download the latest web automation drivers
try {
    $Result = Invoke-DataDownloadLatestWebAutomationDrivers
} catch {
    Write-Host ("Exception occurred when calling Invoke-DataDownloadLatestWebAutomationDrivers: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-DataGetWebDriverUpdateInfo"></a>
# **Invoke-DataGetWebDriverUpdateInfo**
> WebDriverUpdateInfo Invoke-DataGetWebDriverUpdateInfo<br>

Get Driver Update Config

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$accessToken = "YOUR_ACCESS_TOKEN"

# Configure your appliance name
$applianceName = "YOUR_APPLIANCE_HOSTNAME"

# $applianceName = "YOUR_APPLIANCE_HOSTNAME"
$bearerToken = @{"Authorization"="Bearer $accessToken"}
# Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken
""


# Get Driver Update Config
try {
    $Result = Invoke-DataGetWebDriverUpdateInfo
} catch {
    Write-Host ("Exception occurred when calling Invoke-DataGetWebDriverUpdateInfo: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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


# PSLoginEnterprise.PSLoginEnterprise\Api.LEEuxSettingsApi

All URIs are relative to */publicApi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-LEEuxSettings**](LEEuxSettingsApi.md#Get-LEEuxSettings) | **GET** /v7/euxsettings | Get Eux settings
[**Update-LEEuxSettings**](LEEuxSettingsApi.md#Update-LEEuxSettings) | **PUT** /v7/euxsettings | Update Eux settings


<a id="Get-LEEuxSettings"></a>
# **Get-LEEuxSettings**
> EuxSettings Get-LEEuxSettings<br>

Get Eux settings

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


# Get Eux settings
try {
    $Result = Get-LEEuxSettings
} catch {
    Write-Host ("Exception occurred when calling Get-LEEuxSettings: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**EuxSettings**](EuxSettings.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-LEEuxSettings"></a>
# **Update-LEEuxSettings**
> void Update-LEEuxSettings<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EuxSettings] <PSCustomObject><br>

Update Eux settings

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

$EuxSettings = Initialize-LEEuxSettings -EnableEuxRawDataSave $false # EuxSettings | Eux settings

# Update Eux settings
try {
    $Result = Update-LEEuxSettings -EuxSettings $EuxSettings
} catch {
    Write-Host ("Exception occurred when calling Update-LEEuxSettings: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EuxSettings** | [**EuxSettings**](EuxSettings.md)| Eux settings | 

### Return type

void (empty response body)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


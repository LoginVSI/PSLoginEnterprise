# PSLoginEnterprise.PSLoginEnterprise\Api.SystemApi

All URIs are relative to */publicApi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-DataGetSystemEuxVersion**](SystemApi.md#Invoke-DataGetSystemEuxVersion) | **GET** /v7/system/eux-version | Get eux version of system
[**Invoke-DataGetSystemVersions**](SystemApi.md#Invoke-DataGetSystemVersions) | **GET** /v7/system/version | Get current and latest versions of system


<a id="Invoke-DataGetSystemEuxVersion"></a>
# **Invoke-DataGetSystemEuxVersion**
> SystemEuxVersion Invoke-DataGetSystemEuxVersion<br>

Get eux version of system

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


# Get eux version of system
try {
    $Result = Invoke-DataGetSystemEuxVersion
} catch {
    Write-Host ("Exception occurred when calling Invoke-DataGetSystemEuxVersion: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SystemEuxVersion**](SystemEuxVersion.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DataGetSystemVersions"></a>
# **Invoke-DataGetSystemVersions**
> SystemVersionResult Invoke-DataGetSystemVersions<br>

Get current and latest versions of system

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


# Get current and latest versions of system
try {
    $Result = Invoke-DataGetSystemVersions
} catch {
    Write-Host ("Exception occurred when calling Invoke-DataGetSystemVersions: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SystemVersionResult**](SystemVersionResult.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


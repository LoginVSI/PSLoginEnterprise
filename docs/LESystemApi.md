# PSLoginEnterprise.PSLoginEnterprise\Api.LESystemApi

All URIs are relative to */publicApi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-LESystemEuxVersion**](LESystemApi.md#Get-LESystemEuxVersion) | **GET** /v6/system/eux-version | Get eux version of system
[**Get-LESystemVersions**](LESystemApi.md#Get-LESystemVersions) | **GET** /v6/system/version | Get current and latest versions of system


<a id="Get-LESystemEuxVersion"></a>
# **Get-LESystemEuxVersion**
> SystemEuxVersion Get-LESystemEuxVersion<br>

Get eux version of system

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$accessToken = "YOUR_ACCESS_TOKEN"
$applianceName = "YOUR_APPLIANCE_URL"
$bearerToken = @{"Authorization"="Bearer $accessToken"}
Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken -SkipCertificateCheck


# Get eux version of system
try {
    $Result = Get-LESystemEuxVersion
} catch {
    Write-Host ("Exception occurred when calling Get-LESystemEuxVersion: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Get-LESystemVersions"></a>
# **Get-LESystemVersions**
> SystemVersionResult Get-LESystemVersions<br>

Get current and latest versions of system

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$accessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$applianceName = "YOUR_APPLIANCE_URL"
$bearerToken = @{"Authorization"="Bearer $accessToken"}
Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken -SkipCertificateCheck



# Get current and latest versions of system
try {
    $Result = Get-LESystemVersions
} catch {
    Write-Host ("Exception occurred when calling Get-LESystemVersions: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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


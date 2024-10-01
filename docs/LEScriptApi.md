# PSLoginEnterprise.PSLoginEnterprise\Api.LEScriptApi

All URIs are relative to */publicApi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-LEScript**](LEScriptApi.md#New-LEScript) | **POST** /v7-preview/applications/{applicationId}/script | Create script via a text or file payload
[**Get-LEScript**](LEScriptApi.md#Get-LEScript) | **GET** /v7-preview/applications/{applicationId}/script | Get script content by application id


<a id="New-LEScript"></a>
# **New-LEScript**
> void New-LEScript<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ApplicationId] <String><br>

Create script via a text or file payload

To create a Script,  the following payloads may be added to the POST request:    a) A script file with valid script content (.cs file extension)   b) A manual input of text via the POST request's text payload

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$accessToken = "YOUR_ACCESS_TOKEN"

# Configure your appliance name
$applianceName = "YOUR_APPLIANCE_HOSTNAME"

 
$bearerToken = @{"Authorization"="Bearer $accessToken"}
Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken
 

$ApplicationId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Application id

# Create script via a text or file payload
try {
    $Result = New-LEScript -ApplicationId $ApplicationId
} catch {
    Write-Host ("Exception occurred when calling New-LEScript: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ApplicationId** | **String**| Application id | 

### Return type

void (empty response body)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-LEScript"></a>
# **Get-LEScript**
> String Get-LEScript<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ApplicationId] <String><br>

Get script content by application id

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$accessToken = "YOUR_ACCESS_TOKEN"

# Configure your appliance name
$applianceName = "YOUR_APPLIANCE_HOSTNAME"

 
$bearerToken = @{"Authorization"="Bearer $accessToken"}
Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken
 

$ApplicationId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Application id

# Get script content by application id
try {
    $Result = Get-LEScript -ApplicationId $ApplicationId
} catch {
    Write-Host ("Exception occurred when calling Get-LEScript: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ApplicationId** | **String**| Application id | 

### Return type

**String**

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


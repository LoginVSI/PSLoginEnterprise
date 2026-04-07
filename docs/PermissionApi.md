# PSLoginEnterprise.PSLoginEnterprise\Api.PermissionApi

All URIs are relative to */publicApi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-DataGetAllPermissions**](PermissionApi.md#Invoke-DataGetAllPermissions) | **GET** /v7/auth/permissions | Get list of all permissions
[**Invoke-DataGetPermissionsForCallingUser**](PermissionApi.md#Invoke-DataGetPermissionsForCallingUser) | **GET** /v7/auth/permissions/self | Get permissions for calling user


<a id="Invoke-DataGetAllPermissions"></a>
# **Invoke-DataGetAllPermissions**
> String[] Invoke-DataGetAllPermissions<br>

Get list of all permissions

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


# Get list of all permissions
try {
    $Result = Invoke-DataGetAllPermissions
} catch {
    Write-Host ("Exception occurred when calling Invoke-DataGetAllPermissions: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**String[]**

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DataGetPermissionsForCallingUser"></a>
# **Invoke-DataGetPermissionsForCallingUser**
> String[] Invoke-DataGetPermissionsForCallingUser<br>

Get permissions for calling user

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


# Get permissions for calling user
try {
    $Result = Invoke-DataGetPermissionsForCallingUser
} catch {
    Write-Host ("Exception occurred when calling Invoke-DataGetPermissionsForCallingUser: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**String[]**

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


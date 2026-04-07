# PSLoginEnterprise.PSLoginEnterprise\Api.LdapConfigurationApi

All URIs are relative to */publicApi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-ConfigurationCreateLdapConfig**](LdapConfigurationApi.md#Invoke-ConfigurationCreateLdapConfig) | **POST** /v7/ldap-configuration/identity-server | Create LDAP configuration.
[**Invoke-ConfigurationDeleteLdapConfig**](LdapConfigurationApi.md#Invoke-ConfigurationDeleteLdapConfig) | **DELETE** /v7/ldap-configuration/identity-server | Delete LDAP configuration.
[**Invoke-ConfigurationGetLdapConfig**](LdapConfigurationApi.md#Invoke-ConfigurationGetLdapConfig) | **GET** /v7/ldap-configuration/identity-server | Get LDAP configuration.
[**Invoke-ConfigurationUpdateLdapConfig**](LdapConfigurationApi.md#Invoke-ConfigurationUpdateLdapConfig) | **PUT** /v7/ldap-configuration/identity-server | Update LDAP configuration.


<a id="Invoke-ConfigurationCreateLdapConfig"></a>
# **Invoke-ConfigurationCreateLdapConfig**
> LdapConfigModel Invoke-ConfigurationCreateLdapConfig<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LdapConfigModelUpdate] <PSCustomObject><br>

Create LDAP configuration.

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

$LdapConfigModelUpdate = Initialize-LELdapConfigModelUpdate -VarHost "MyVarHost" -Port 0 -Secured $false -IgnoreSslErrors $false -Username "MyUsername" -Password "MyPassword" -Domain "MyDomain" -ConnectionTimeout 0 -StoreCredentials $false # LdapConfigModelUpdate |  (optional)

# Create LDAP configuration.
try {
    $Result = Invoke-ConfigurationCreateLdapConfig -LdapConfigModelUpdate $LdapConfigModelUpdate
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationCreateLdapConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **LdapConfigModelUpdate** | [**LdapConfigModelUpdate**](LdapConfigModelUpdate.md)|  | [optional] 

### Return type

[**LdapConfigModel**](LdapConfigModel.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-ConfigurationDeleteLdapConfig"></a>
# **Invoke-ConfigurationDeleteLdapConfig**
> void Invoke-ConfigurationDeleteLdapConfig<br>

Delete LDAP configuration.

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


# Delete LDAP configuration.
try {
    $Result = Invoke-ConfigurationDeleteLdapConfig
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationDeleteLdapConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-ConfigurationGetLdapConfig"></a>
# **Invoke-ConfigurationGetLdapConfig**
> LdapConfigModel Invoke-ConfigurationGetLdapConfig<br>

Get LDAP configuration.

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


# Get LDAP configuration.
try {
    $Result = Invoke-ConfigurationGetLdapConfig
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationGetLdapConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**LdapConfigModel**](LdapConfigModel.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-ConfigurationUpdateLdapConfig"></a>
# **Invoke-ConfigurationUpdateLdapConfig**
> void Invoke-ConfigurationUpdateLdapConfig<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LdapConfigModelUpdate] <PSCustomObject><br>

Update LDAP configuration.

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

$LdapConfigModelUpdate = Initialize-LELdapConfigModelUpdate -VarHost "MyVarHost" -Port 0 -Secured $false -IgnoreSslErrors $false -Username "MyUsername" -Password "MyPassword" -Domain "MyDomain" -ConnectionTimeout 0 -StoreCredentials $false # LdapConfigModelUpdate |  (optional)

# Update LDAP configuration.
try {
    $Result = Invoke-ConfigurationUpdateLdapConfig -LdapConfigModelUpdate $LdapConfigModelUpdate
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationUpdateLdapConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **LdapConfigModelUpdate** | [**LdapConfigModelUpdate**](LdapConfigModelUpdate.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


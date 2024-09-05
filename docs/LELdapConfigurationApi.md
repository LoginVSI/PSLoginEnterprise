# PSLoginEnterprise.PSLoginEnterprise\Api.LELdapConfigurationApi

All URIs are relative to */publicApi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-LELdapConfig**](LELdapConfigurationApi.md#New-LELdapConfig) | **POST** /v7-preview/ldap-configuration/identity-server | Create LDAP configuration.
[**Invoke-LEDeleteLdapConfig**](LELdapConfigurationApi.md#Invoke-LEDeleteLdapConfig) | **DELETE** /v7-preview/ldap-configuration/identity-server | Delete LDAP configuration.
[**Get-LELdapConfig**](LELdapConfigurationApi.md#Get-LELdapConfig) | **GET** /v7-preview/ldap-configuration/identity-server | Get LDAP configuration.
[**Update-LELdapConfig**](LELdapConfigurationApi.md#Update-LELdapConfig) | **PUT** /v7-preview/ldap-configuration/identity-server | Update LDAP configuration.


<a id="New-LELdapConfig"></a>
# **New-LELdapConfig**
> LdapConfigModel New-LELdapConfig<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LdapConfigModel] <PSCustomObject><br>

Create LDAP configuration.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$accessToken = "YOUR_ACCESS_TOKEN"

# Configure your appliance name
$applianceName = "YOUR_APPLIANCE_HOSTNAME"

# $applianceName = "YOUR_APPLIANCE_URL"
$bearerToken = @{"Authorization"="Bearer $accessToken"}"
Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken
""

$LdapConfigModel = Initialize-LELdapConfigModel -VarHost "MyVarHost" -Port 0 -Secured $false -IgnoreSslErrors $false -Username "MyUsername" -Password "MyPassword" -Domain "MyDomain" -AdminGroupName "MyAdminGroupName" -ReadOnlyGroupName "MyReadOnlyGroupName" -ConnectionTimeout 0 # LdapConfigModel |  (optional)

# Create LDAP configuration.
try {
    $Result = New-LELdapConfig -LdapConfigModel $LdapConfigModel
} catch {
    Write-Host ("Exception occurred when calling New-LELdapConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **LdapConfigModel** | [**LdapConfigModel**](LdapConfigModel.md)|  | [optional] 

### Return type

[**LdapConfigModel**](LdapConfigModel.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-LEDeleteLdapConfig"></a>
# **Invoke-LEDeleteLdapConfig**
> void Invoke-LEDeleteLdapConfig<br>

Delete LDAP configuration.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$accessToken = "YOUR_ACCESS_TOKEN"

# Configure your appliance name
$applianceName = "YOUR_APPLIANCE_HOSTNAME"

# $applianceName = "YOUR_APPLIANCE_URL"
$bearerToken = @{"Authorization"="Bearer $accessToken"}"
Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken
""


# Delete LDAP configuration.
try {
    $Result = Invoke-LEDeleteLdapConfig
} catch {
    Write-Host ("Exception occurred when calling Invoke-LEDeleteLdapConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Get-LELdapConfig"></a>
# **Get-LELdapConfig**
> LdapConfigModel Get-LELdapConfig<br>

Get LDAP configuration.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$accessToken = "YOUR_ACCESS_TOKEN"

# Configure your appliance name
$applianceName = "YOUR_APPLIANCE_HOSTNAME"

# $applianceName = "YOUR_APPLIANCE_URL"
$bearerToken = @{"Authorization"="Bearer $accessToken"}"
Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken
""


# Get LDAP configuration.
try {
    $Result = Get-LELdapConfig
} catch {
    Write-Host ("Exception occurred when calling Get-LELdapConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Update-LELdapConfig"></a>
# **Update-LELdapConfig**
> void Update-LELdapConfig<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LdapConfigModel] <PSCustomObject><br>

Update LDAP configuration.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$accessToken = "YOUR_ACCESS_TOKEN"

# Configure your appliance name
$applianceName = "YOUR_APPLIANCE_HOSTNAME"

# $applianceName = "YOUR_APPLIANCE_URL"
$bearerToken = @{"Authorization"="Bearer $accessToken"}"
Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken
""

$LdapConfigModel = Initialize-LELdapConfigModel -VarHost "MyVarHost" -Port 0 -Secured $false -IgnoreSslErrors $false -Username "MyUsername" -Password "MyPassword" -Domain "MyDomain" -AdminGroupName "MyAdminGroupName" -ReadOnlyGroupName "MyReadOnlyGroupName" -ConnectionTimeout 0 # LdapConfigModel |  (optional)

# Update LDAP configuration.
try {
    $Result = Update-LELdapConfig -LdapConfigModel $LdapConfigModel
} catch {
    Write-Host ("Exception occurred when calling Update-LELdapConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **LdapConfigModel** | [**LdapConfigModel**](LdapConfigModel.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


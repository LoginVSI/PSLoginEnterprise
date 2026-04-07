# PSLoginEnterprise.PSLoginEnterprise\Api.LELdapGroupApi

All URIs are relative to */publicApi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-LELdapGroup**](LELdapGroupApi.md#New-LELdapGroup) | **POST** /v7/auth/ldap-groups | Create a ldap group
[**Invoke-LEDeleteLdapGroup**](LELdapGroupApi.md#Invoke-LEDeleteLdapGroup) | **DELETE** /v7/auth/ldap-groups/{ldapGroupId} | Delete a ldap group
[**Get-LEAllLdapGroups**](LELdapGroupApi.md#Get-LEAllLdapGroups) | **GET** /v7/auth/ldap-groups | Get paginated list of all ldap groups
[**Get-LELdapGroupById**](LELdapGroupApi.md#Get-LELdapGroupById) | **GET** /v7/auth/ldap-groups/{ldapGroupId} | Get ldap group by id
[**Update-LELdapGroup**](LELdapGroupApi.md#Update-LELdapGroup) | **PUT** /v7/auth/ldap-groups/{ldapGroupId} | Update ldap group


<a id="New-LELdapGroup"></a>
# **New-LELdapGroup**
> ObjectId New-LELdapGroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LdapGroupCreate] <PSCustomObject><br>

Create a ldap group

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

$LdapGroupCreate = Initialize-LELdapGroupCreate -DisplayName "MyDisplayName" -GroupIdentity "MyGroupIdentity" -RoleIds "MyRoleIds" # LdapGroupCreate | Ldap group data (optional)

# Create a ldap group
try {
    $Result = New-LELdapGroup -LdapGroupCreate $LdapGroupCreate
} catch {
    Write-Host ("Exception occurred when calling New-LELdapGroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **LdapGroupCreate** | [**LdapGroupCreate**](LdapGroupCreate.md)| Ldap group data | [optional] 

### Return type

[**ObjectId**](ObjectId.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-LEDeleteLdapGroup"></a>
# **Invoke-LEDeleteLdapGroup**
> void Invoke-LEDeleteLdapGroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LdapGroupId] <String><br>

Delete a ldap group

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

$LdapGroupId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Ldap group id

# Delete a ldap group
try {
    $Result = Invoke-LEDeleteLdapGroup -LdapGroupId $LdapGroupId
} catch {
    Write-Host ("Exception occurred when calling Invoke-LEDeleteLdapGroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **LdapGroupId** | **String**| Ldap group id | 

### Return type

void (empty response body)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-LEAllLdapGroups"></a>
# **Get-LEAllLdapGroups**
> LdapGroupResultSet Get-LEAllLdapGroups<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SortKey] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Direction] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IncludeTotalCount] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Include] <PSCustomObject[]><br>

Get paginated list of all ldap groups

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

$Filter = "MyFilter" # String | Filter on Name or Dn (optional)
$Count = 56 # Int32 |  (optional) (default to 1000)
$Offset = 56 # Int32 |  (optional) (default to 0)
$SortKey = "displayName" # LdapGroupSortKey |  (optional)
$Direction = "asc" # SortOrder |  (optional)
$IncludeTotalCount = $true # Boolean |  (optional)
$Include = "none" # LdapGroupIncludeOption[] | Include options (optional)

# Get paginated list of all ldap groups
try {
    $Result = Get-LEAllLdapGroups -Filter $Filter -Count $Count -Offset $Offset -SortKey $SortKey -Direction $Direction -IncludeTotalCount $IncludeTotalCount -Include $Include
} catch {
    Write-Host ("Exception occurred when calling Get-LEAllLdapGroups: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Filter** | **String**| Filter on Name or Dn | [optional] 
 **Count** | **Int32**|  | [optional] [default to 1000]
 **Offset** | **Int32**|  | [optional] [default to 0]
 **SortKey** | [**LdapGroupSortKey**](LdapGroupSortKey.md)|  | [optional] 
 **Direction** | [**SortOrder**](SortOrder.md)|  | [optional] 
 **IncludeTotalCount** | **Boolean**|  | [optional] 
 **Include** | [**LdapGroupIncludeOption[]**](LdapGroupIncludeOption.md)| Include options | [optional] 

### Return type

[**LdapGroupResultSet**](LdapGroupResultSet.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-LELdapGroupById"></a>
# **Get-LELdapGroupById**
> LdapGroup Get-LELdapGroupById<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LdapGroupId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Include] <PSCustomObject[]><br>

Get ldap group by id

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

$LdapGroupId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | 
$Include = "none" # LdapGroupIncludeOption[] | Include options (optional)

# Get ldap group by id
try {
    $Result = Get-LELdapGroupById -LdapGroupId $LdapGroupId -Include $Include
} catch {
    Write-Host ("Exception occurred when calling Get-LELdapGroupById: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **LdapGroupId** | **String**|  | 
 **Include** | [**LdapGroupIncludeOption[]**](LdapGroupIncludeOption.md)| Include options | [optional] 

### Return type

[**LdapGroup**](LdapGroup.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-LELdapGroup"></a>
# **Update-LELdapGroup**
> void Update-LELdapGroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LdapGroupId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LdapGroupUpdate] <PSCustomObject><br>

Update ldap group

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

$LdapGroupId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Ldap group id
$LdapGroupUpdate = Initialize-LELdapGroupUpdate -DisplayName "MyDisplayName" -GroupIdentity "MyGroupIdentity" -RoleIds "MyRoleIds" # LdapGroupUpdate | Ldap group data (optional)

# Update ldap group
try {
    $Result = Update-LELdapGroup -LdapGroupId $LdapGroupId -LdapGroupUpdate $LdapGroupUpdate
} catch {
    Write-Host ("Exception occurred when calling Update-LELdapGroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **LdapGroupId** | **String**| Ldap group id | 
 **LdapGroupUpdate** | [**LdapGroupUpdate**](LdapGroupUpdate.md)| Ldap group data | [optional] 

### Return type

void (empty response body)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


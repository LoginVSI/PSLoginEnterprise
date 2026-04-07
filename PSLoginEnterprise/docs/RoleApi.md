# PSLoginEnterprise.PSLoginEnterprise\Api.RoleApi

All URIs are relative to */publicApi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-DataCreateRole**](RoleApi.md#Invoke-DataCreateRole) | **POST** /v7/auth/roles | Create a role
[**Invoke-DataDeleteRole**](RoleApi.md#Invoke-DataDeleteRole) | **DELETE** /v7/auth/roles/{roleId} | Delete a role
[**Invoke-DataGetAllRoles**](RoleApi.md#Invoke-DataGetAllRoles) | **GET** /v7/auth/roles | Get paginated list of all roles
[**Invoke-DataGetRoleById**](RoleApi.md#Invoke-DataGetRoleById) | **GET** /v7/auth/roles/{roleId} | Get role by id
[**Invoke-DataGetRolesForCallingUser**](RoleApi.md#Invoke-DataGetRolesForCallingUser) | **GET** /v7/auth/roles/self | Get roles for calling user
[**Invoke-DataUpdateRole**](RoleApi.md#Invoke-DataUpdateRole) | **PUT** /v7/auth/roles/{roleId} | Update Role


<a id="Invoke-DataCreateRole"></a>
# **Invoke-DataCreateRole**
> ObjectId Invoke-DataCreateRole<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RoleCreate] <PSCustomObject><br>

Create a role

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

$RoleCreate = Initialize-LERoleCreate -Name "MyName" -UserIds "MyUserIds" -LdapGroupIds "MyLdapGroupIds" -Permissions "MyPermissions" # RoleCreate | Role data (optional)

# Create a role
try {
    $Result = Invoke-DataCreateRole -RoleCreate $RoleCreate
} catch {
    Write-Host ("Exception occurred when calling Invoke-DataCreateRole: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RoleCreate** | [**RoleCreate**](RoleCreate.md)| Role data | [optional] 

### Return type

[**ObjectId**](ObjectId.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DataDeleteRole"></a>
# **Invoke-DataDeleteRole**
> void Invoke-DataDeleteRole<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RoleId] <String><br>

Delete a role

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

$RoleId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Role id

# Delete a role
try {
    $Result = Invoke-DataDeleteRole -RoleId $RoleId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DataDeleteRole: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RoleId** | **String**| Role id | 

### Return type

void (empty response body)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DataGetAllRoles"></a>
# **Invoke-DataGetAllRoles**
> RoleResultSet Invoke-DataGetAllRoles<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OrderBy] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Direction] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IncludeTotalCount] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Include] <PSCustomObject[]><br>

Get paginated list of all roles

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

$Filter = "MyFilter" # String | Filter on Name (optional)
$Count = 56 # Int32 | Number of records to return (optional) (default to 1000)
$Offset = 56 # Int32 | Start offset (optional) (default to 0)
$OrderBy = "name" # RoleSortKey | Sort key (optional)
$Direction = "asc" # SortOrder | Sort direction (optional)
$IncludeTotalCount = $true # Boolean | Include total number of records (optional)
$Include = "none" # RoleIncludeOption[] |  (optional)

# Get paginated list of all roles
try {
    $Result = Invoke-DataGetAllRoles -Filter $Filter -Count $Count -Offset $Offset -OrderBy $OrderBy -Direction $Direction -IncludeTotalCount $IncludeTotalCount -Include $Include
} catch {
    Write-Host ("Exception occurred when calling Invoke-DataGetAllRoles: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Filter** | **String**| Filter on Name | [optional] 
 **Count** | **Int32**| Number of records to return | [optional] [default to 1000]
 **Offset** | **Int32**| Start offset | [optional] [default to 0]
 **OrderBy** | [**RoleSortKey**](RoleSortKey.md)| Sort key | [optional] 
 **Direction** | [**SortOrder**](SortOrder.md)| Sort direction | [optional] 
 **IncludeTotalCount** | **Boolean**| Include total number of records | [optional] 
 **Include** | [**RoleIncludeOption[]**](RoleIncludeOption.md)|  | [optional] 

### Return type

[**RoleResultSet**](RoleResultSet.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DataGetRoleById"></a>
# **Invoke-DataGetRoleById**
> Role Invoke-DataGetRoleById<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RoleId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Include] <PSCustomObject[]><br>

Get role by id

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

$RoleId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Role id
$Include = "none" # RoleIncludeOption[] | Include options (optional)

# Get role by id
try {
    $Result = Invoke-DataGetRoleById -RoleId $RoleId -Include $Include
} catch {
    Write-Host ("Exception occurred when calling Invoke-DataGetRoleById: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RoleId** | **String**| Role id | 
 **Include** | [**RoleIncludeOption[]**](RoleIncludeOption.md)| Include options | [optional] 

### Return type

[**Role**](Role.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DataGetRolesForCallingUser"></a>
# **Invoke-DataGetRolesForCallingUser**
> System.Collections.Hashtable Invoke-DataGetRolesForCallingUser<br>

Get roles for calling user

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


# Get roles for calling user
try {
    $Result = Invoke-DataGetRolesForCallingUser
} catch {
    Write-Host ("Exception occurred when calling Invoke-DataGetRolesForCallingUser: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**System.Collections.Hashtable**

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DataUpdateRole"></a>
# **Invoke-DataUpdateRole**
> void Invoke-DataUpdateRole<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RoleId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RoleUpdate] <PSCustomObject><br>

Update Role

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

$RoleId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Role id
$RoleUpdate = Initialize-LERoleUpdate -Name "MyName" -UserIds "MyUserIds" -LdapGroupIds "MyLdapGroupIds" -Permissions "MyPermissions" # RoleUpdate | Role data (optional)

# Update Role
try {
    $Result = Invoke-DataUpdateRole -RoleId $RoleId -RoleUpdate $RoleUpdate
} catch {
    Write-Host ("Exception occurred when calling Invoke-DataUpdateRole: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RoleId** | **String**| Role id | 
 **RoleUpdate** | [**RoleUpdate**](RoleUpdate.md)| Role data | [optional] 

### Return type

void (empty response body)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


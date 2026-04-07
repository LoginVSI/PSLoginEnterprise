# PSLoginEnterprise.PSLoginEnterprise\Api.UserApi

All URIs are relative to */publicApi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-DataCreateUser**](UserApi.md#Invoke-DataCreateUser) | **POST** /v7/auth/users | Create a user
[**Invoke-DataDeleteUser**](UserApi.md#Invoke-DataDeleteUser) | **DELETE** /v7/auth/users/{userId} | Delete a user
[**Invoke-DataGetAllUsers**](UserApi.md#Invoke-DataGetAllUsers) | **GET** /v7/auth/users | Get paginated list of all users
[**Invoke-DataGetUserById**](UserApi.md#Invoke-DataGetUserById) | **GET** /v7/auth/users/{userId} | Get user by id
[**Invoke-DataUpdateUser**](UserApi.md#Invoke-DataUpdateUser) | **PUT** /v7/auth/users/{userId} | Update User


<a id="Invoke-DataCreateUser"></a>
# **Invoke-DataCreateUser**
> ObjectId Invoke-DataCreateUser<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserCreate] <PSCustomObject><br>

Create a user

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$accessToken = "YOUR_ACCESS_TOKEN"

# Configure your appliance name
$applianceName = "YOUR_APPLIANCE_HOSTNAME"

# $applianceName = "YOUR_APPLIANCE_HOSTNAME"
$bearerToken = @{"Authorization"="Bearer $accessToken"}
Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken
""

$UserCreate = Initialize-LEUserCreate -UserName "MyUserName" -UserType "ldap" -RoleIds "MyRoleIds" # UserCreate | User data (optional)

# Create a user
try {
    $Result = Invoke-DataCreateUser -UserCreate $UserCreate
} catch {
    Write-Host ("Exception occurred when calling Invoke-DataCreateUser: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UserCreate** | [**UserCreate**](UserCreate.md)| User data | [optional] 

### Return type

[**ObjectId**](ObjectId.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DataDeleteUser"></a>
# **Invoke-DataDeleteUser**
> void Invoke-DataDeleteUser<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>

Delete a user

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$accessToken = "YOUR_ACCESS_TOKEN"

# Configure your appliance name
$applianceName = "YOUR_APPLIANCE_HOSTNAME"

# $applianceName = "YOUR_APPLIANCE_HOSTNAME"
$bearerToken = @{"Authorization"="Bearer $accessToken"}
Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken
""

$UserId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | User id

# Delete a user
try {
    $Result = Invoke-DataDeleteUser -UserId $UserId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DataDeleteUser: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UserId** | **String**| User id | 

### Return type

void (empty response body)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DataGetAllUsers"></a>
# **Invoke-DataGetAllUsers**
> UserResultSet Invoke-DataGetAllUsers<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OrderBy] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Direction] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IncludeTotalCount] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Include] <PSCustomObject[]><br>

Get paginated list of all users

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$accessToken = "YOUR_ACCESS_TOKEN"

# Configure your appliance name
$applianceName = "YOUR_APPLIANCE_HOSTNAME"

# $applianceName = "YOUR_APPLIANCE_HOSTNAME"
$bearerToken = @{"Authorization"="Bearer $accessToken"}
Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken
""

$Filter = "MyFilter" # String | Filter on Name or Dn (optional)
$Count = 56 # Int32 | Number of records to return (optional) (default to 1000)
$Offset = 56 # Int32 | Start offset (optional) (default to 0)
$OrderBy = "userName" # UserSortKey | Sort key (optional)
$Direction = "asc" # SortOrder | Sort direction (optional)
$IncludeTotalCount = $true # Boolean | Include total number of records (optional)
$Include = "none" # UserIncludeOption[] | Include options (optional)

# Get paginated list of all users
try {
    $Result = Invoke-DataGetAllUsers -Filter $Filter -Count $Count -Offset $Offset -OrderBy $OrderBy -Direction $Direction -IncludeTotalCount $IncludeTotalCount -Include $Include
} catch {
    Write-Host ("Exception occurred when calling Invoke-DataGetAllUsers: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Filter** | **String**| Filter on Name or Dn | [optional] 
 **Count** | **Int32**| Number of records to return | [optional] [default to 1000]
 **Offset** | **Int32**| Start offset | [optional] [default to 0]
 **OrderBy** | [**UserSortKey**](UserSortKey.md)| Sort key | [optional] 
 **Direction** | [**SortOrder**](SortOrder.md)| Sort direction | [optional] 
 **IncludeTotalCount** | **Boolean**| Include total number of records | [optional] 
 **Include** | [**UserIncludeOption[]**](UserIncludeOption.md)| Include options | [optional] 

### Return type

[**UserResultSet**](UserResultSet.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DataGetUserById"></a>
# **Invoke-DataGetUserById**
> User Invoke-DataGetUserById<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Include] <PSCustomObject[]><br>

Get user by id

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$accessToken = "YOUR_ACCESS_TOKEN"

# Configure your appliance name
$applianceName = "YOUR_APPLIANCE_HOSTNAME"

# $applianceName = "YOUR_APPLIANCE_HOSTNAME"
$bearerToken = @{"Authorization"="Bearer $accessToken"}
Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken
""

$UserId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | User id
$Include = "none" # UserIncludeOption[] | Include options (optional)

# Get user by id
try {
    $Result = Invoke-DataGetUserById -UserId $UserId -Include $Include
} catch {
    Write-Host ("Exception occurred when calling Invoke-DataGetUserById: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UserId** | **String**| User id | 
 **Include** | [**UserIncludeOption[]**](UserIncludeOption.md)| Include options | [optional] 

### Return type

[**User**](User.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DataUpdateUser"></a>
# **Invoke-DataUpdateUser**
> void Invoke-DataUpdateUser<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RequestBody] <String[]><br>

Update User

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$accessToken = "YOUR_ACCESS_TOKEN"

# Configure your appliance name
$applianceName = "YOUR_APPLIANCE_HOSTNAME"

# $applianceName = "YOUR_APPLIANCE_HOSTNAME"
$bearerToken = @{"Authorization"="Bearer $accessToken"}
Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken
""

$UserId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | User id
$RequestBody = "MyRequestBody" # String[] | Role list (optional)

# Update User
try {
    $Result = Invoke-DataUpdateUser -UserId $UserId -RequestBody $RequestBody
} catch {
    Write-Host ("Exception occurred when calling Invoke-DataUpdateUser: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UserId** | **String**| User id | 
 **RequestBody** | [**String[]**](String.md)| Role list | [optional] 

### Return type

void (empty response body)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


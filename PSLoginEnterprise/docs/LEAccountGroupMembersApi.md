# PSLoginEnterprise.PSLoginEnterprise\Api.LEAccountGroupMembersApi

All URIs are relative to */publicApi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Add-LEAccountGroupMembers**](LEAccountGroupMembersApi.md#Add-LEAccountGroupMembers) | **POST** /v7/account-groups/{groupId}/members | Add members to account-group
[**Get-LEAccountGroupMembers**](LEAccountGroupMembersApi.md#Get-LEAccountGroupMembers) | **GET** /v7/account-groups/{groupId}/members | Get paginated list of account-group members
[**Remove-LEAccountGroupMembers**](LEAccountGroupMembersApi.md#Remove-LEAccountGroupMembers) | **DELETE** /v7/account-groups/{groupId}/members | Remove members from account-group
[**Set-LEAccountGroupMembers**](LEAccountGroupMembersApi.md#Set-LEAccountGroupMembers) | **PUT** /v7/account-groups/{groupId}/members | Replace members in account-group


<a id="Add-LEAccountGroupMembers"></a>
# **Add-LEAccountGroupMembers**
> void Add-LEAccountGroupMembers<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RequestBody] <String[]><br>

Add members to account-group

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$accessToken = "YOUR_ACCESS_TOKEN"

# Configure your appliance name
$applianceName = "YOUR_APPLIANCE_HOSTNAME"

# $applianceName = "YOUR_APPLIANCE_URL"
$bearerToken = @{"Authorization"="Bearer $accessToken"}
# Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken
""

$GroupId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Account-group id
$RequestBody = "MyRequestBody" # String[] | Account ids

# Add members to account-group
try {
    $Result = Add-LEAccountGroupMembers -GroupId $GroupId -RequestBody $RequestBody
} catch {
    Write-Host ("Exception occurred when calling Add-LEAccountGroupMembers: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **GroupId** | **String**| Account-group id | 
 **RequestBody** | [**String[]**](String.md)| Account ids | 

### Return type

void (empty response body)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-LEAccountGroupMembers"></a>
# **Get-LEAccountGroupMembers**
> AccountResultSet Get-LEAccountGroupMembers<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OrderBy] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Direction] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IncludeTotalCount] <System.Nullable[Boolean]><br>

Get paginated list of account-group members

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$accessToken = "YOUR_ACCESS_TOKEN"

# Configure your appliance name
$applianceName = "YOUR_APPLIANCE_HOSTNAME"

# $applianceName = "YOUR_APPLIANCE_URL"
$bearerToken = @{"Authorization"="Bearer $accessToken"}
# Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken
""

$GroupId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Account-group id
$OrderBy = "username" # AccountSortKey | Sort Key
$Direction = "asc" # SortOrder | Sort direction
$Count = 56 # Int32 | Number of records to return (default to 100)
$Offset = 56 # Int32 | Start offset (optional) (default to 0)
$IncludeTotalCount = $true # Boolean | Include total number of records (optional) (default to $false)

# Get paginated list of account-group members
try {
    $Result = Get-LEAccountGroupMembers -GroupId $GroupId -OrderBy $OrderBy -Direction $Direction -Count $Count -Offset $Offset -IncludeTotalCount $IncludeTotalCount
} catch {
    Write-Host ("Exception occurred when calling Get-LEAccountGroupMembers: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **GroupId** | **String**| Account-group id | 
 **OrderBy** | [**AccountSortKey**](AccountSortKey.md)| Sort Key | 
 **Direction** | [**SortOrder**](SortOrder.md)| Sort direction | 
 **Count** | **Int32**| Number of records to return | [default to 100]
 **Offset** | **Int32**| Start offset | [optional] [default to 0]
 **IncludeTotalCount** | **Boolean**| Include total number of records | [optional] [default to $false]

### Return type

[**AccountResultSet**](AccountResultSet.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Remove-LEAccountGroupMembers"></a>
# **Remove-LEAccountGroupMembers**
> void Remove-LEAccountGroupMembers<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RequestBody] <String[]><br>

Remove members from account-group

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$accessToken = "YOUR_ACCESS_TOKEN"

# Configure your appliance name
$applianceName = "YOUR_APPLIANCE_HOSTNAME"

# $applianceName = "YOUR_APPLIANCE_URL"
$bearerToken = @{"Authorization"="Bearer $accessToken"}
# Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken
""

$GroupId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Account-group id
$RequestBody = "MyRequestBody" # String[] | Account ids

# Remove members from account-group
try {
    $Result = Remove-LEAccountGroupMembers -GroupId $GroupId -RequestBody $RequestBody
} catch {
    Write-Host ("Exception occurred when calling Remove-LEAccountGroupMembers: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **GroupId** | **String**| Account-group id | 
 **RequestBody** | [**String[]**](String.md)| Account ids | 

### Return type

void (empty response body)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Set-LEAccountGroupMembers"></a>
# **Set-LEAccountGroupMembers**
> void Set-LEAccountGroupMembers<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RequestBody] <String[]><br>

Replace members in account-group

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$accessToken = "YOUR_ACCESS_TOKEN"

# Configure your appliance name
$applianceName = "YOUR_APPLIANCE_HOSTNAME"

# $applianceName = "YOUR_APPLIANCE_URL"
$bearerToken = @{"Authorization"="Bearer $accessToken"}
# Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken
""

$GroupId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Account-group id
$RequestBody = "MyRequestBody" # String[] | Account ids

# Replace members in account-group
try {
    $Result = Set-LEAccountGroupMembers -GroupId $GroupId -RequestBody $RequestBody
} catch {
    Write-Host ("Exception occurred when calling Set-LEAccountGroupMembers: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **GroupId** | **String**| Account-group id | 
 **RequestBody** | [**String[]**](String.md)| Account ids | 

### Return type

void (empty response body)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


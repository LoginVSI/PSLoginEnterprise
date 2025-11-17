# PSLoginEnterprise.PSLoginEnterprise\Api.LEApplicationGroupAccessApi

All URIs are relative to */publicApi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-LEBulkAddApplicationGroupAccess**](LEApplicationGroupAccessApi.md#Invoke-LEBulkAddApplicationGroupAccess) | **POST** /v7/application-groups/access | Bulk add application group access
[**Invoke-LEBulkRemoveApplicationGroupAccess**](LEApplicationGroupAccessApi.md#Invoke-LEBulkRemoveApplicationGroupAccess) | **DELETE** /v7/application-groups/access | Bulk remove application group access
[**Invoke-LEBulkReplaceApplicationGroupAccess**](LEApplicationGroupAccessApi.md#Invoke-LEBulkReplaceApplicationGroupAccess) | **PUT** /v7/application-groups/access | Bulk replace application group access
[**Get-LEApplicationGroupAccess**](LEApplicationGroupAccessApi.md#Get-LEApplicationGroupAccess) | **GET** /v7/application-groups/{applicationGroupId}/access | Get application group access
[**Get-LEApplicationGroupsByRole**](LEApplicationGroupAccessApi.md#Get-LEApplicationGroupsByRole) | **GET** /v7/application-groups/role | Get application groups by role ID
[**Update-LEApplicationGroupAccess**](LEApplicationGroupAccessApi.md#Update-LEApplicationGroupAccess) | **PUT** /v7/application-groups/{applicationGroupId}/access | Update application group access


<a id="Invoke-LEBulkAddApplicationGroupAccess"></a>
# **Invoke-LEBulkAddApplicationGroupAccess**
> void Invoke-LEBulkAddApplicationGroupAccess<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ApplicationGroupAccessBulkUpdate] <PSCustomObject><br>

Bulk add application group access

This endpoint allows you to add roles to the access control list of a collection of application groups.

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

$ApplicationGroupAccessBulkUpdate = Initialize-LEApplicationGroupAccessBulkUpdate -ApplicationGroupIds "MyApplicationGroupIds" -RoleIds "MyRoleIds" # ApplicationGroupAccessBulkUpdate | The update request (optional)

# Bulk add application group access
try {
    $Result = Invoke-LEBulkAddApplicationGroupAccess -ApplicationGroupAccessBulkUpdate $ApplicationGroupAccessBulkUpdate
} catch {
    Write-Host ("Exception occurred when calling Invoke-LEBulkAddApplicationGroupAccess: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ApplicationGroupAccessBulkUpdate** | [**ApplicationGroupAccessBulkUpdate**](ApplicationGroupAccessBulkUpdate.md)| The update request | [optional] 

### Return type

void (empty response body)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-LEBulkRemoveApplicationGroupAccess"></a>
# **Invoke-LEBulkRemoveApplicationGroupAccess**
> void Invoke-LEBulkRemoveApplicationGroupAccess<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ApplicationGroupAccessBulkUpdate] <PSCustomObject><br>

Bulk remove application group access

This endpoint allows you to remove the access control list of a collection of application groups.

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

$ApplicationGroupAccessBulkUpdate = Initialize-LEApplicationGroupAccessBulkUpdate -ApplicationGroupIds "MyApplicationGroupIds" -RoleIds "MyRoleIds" # ApplicationGroupAccessBulkUpdate | The Update request (optional)

# Bulk remove application group access
try {
    $Result = Invoke-LEBulkRemoveApplicationGroupAccess -ApplicationGroupAccessBulkUpdate $ApplicationGroupAccessBulkUpdate
} catch {
    Write-Host ("Exception occurred when calling Invoke-LEBulkRemoveApplicationGroupAccess: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ApplicationGroupAccessBulkUpdate** | [**ApplicationGroupAccessBulkUpdate**](ApplicationGroupAccessBulkUpdate.md)| The Update request | [optional] 

### Return type

void (empty response body)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-LEBulkReplaceApplicationGroupAccess"></a>
# **Invoke-LEBulkReplaceApplicationGroupAccess**
> void Invoke-LEBulkReplaceApplicationGroupAccess<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ApplicationGroupAccessBulkUpdate] <PSCustomObject><br>

Bulk replace application group access

This endpoint allows you to replace the access control list of a collection of application groups.

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

$ApplicationGroupAccessBulkUpdate = Initialize-LEApplicationGroupAccessBulkUpdate -ApplicationGroupIds "MyApplicationGroupIds" -RoleIds "MyRoleIds" # ApplicationGroupAccessBulkUpdate | The Update request (optional)

# Bulk replace application group access
try {
    $Result = Invoke-LEBulkReplaceApplicationGroupAccess -ApplicationGroupAccessBulkUpdate $ApplicationGroupAccessBulkUpdate
} catch {
    Write-Host ("Exception occurred when calling Invoke-LEBulkReplaceApplicationGroupAccess: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ApplicationGroupAccessBulkUpdate** | [**ApplicationGroupAccessBulkUpdate**](ApplicationGroupAccessBulkUpdate.md)| The Update request | [optional] 

### Return type

void (empty response body)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-LEApplicationGroupAccess"></a>
# **Get-LEApplicationGroupAccess**
> String[] Get-LEApplicationGroupAccess<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ApplicationGroupId] <String><br>

Get application group access

This endpoint allows you to retrieve the access control list of a single application group.

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

$ApplicationGroupId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | The ID of the Application group.

# Get application group access
try {
    $Result = Get-LEApplicationGroupAccess -ApplicationGroupId $ApplicationGroupId
} catch {
    Write-Host ("Exception occurred when calling Get-LEApplicationGroupAccess: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ApplicationGroupId** | **String**| The ID of the Application group. | 

### Return type

**String[]**

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-LEApplicationGroupsByRole"></a>
# **Get-LEApplicationGroupsByRole**
> String[] Get-LEApplicationGroupsByRole<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OrderBy] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Direction] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RoleId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IncludeTotalCount] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>

Get application groups by role ID

This endpoint allows you to retrieve application groups assigned to a role.

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

$OrderBy = "name" # ApplicationGroupSortKey | Sort Key
$Direction = "asc" # SortOrder | Sort direction
$Count = 56 # Int32 | Number of records to return (default to 100)
$RoleId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | The ID of the role used to filter application groups. Empty when fetching application groups without assigned roles (optional)
$Offset = 56 # Int32 | Start offset (optional) (default to 0)
$IncludeTotalCount = $true # Boolean | Include total number of records (optional) (default to $false)
$Filter = "MyFilter" # String | Filter on Application Group Name and Description (optional)

# Get application groups by role ID
try {
    $Result = Get-LEApplicationGroupsByRole -OrderBy $OrderBy -Direction $Direction -Count $Count -RoleId $RoleId -Offset $Offset -IncludeTotalCount $IncludeTotalCount -Filter $Filter
} catch {
    Write-Host ("Exception occurred when calling Get-LEApplicationGroupsByRole: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **OrderBy** | [**ApplicationGroupSortKey**](ApplicationGroupSortKey.md)| Sort Key | 
 **Direction** | [**SortOrder**](SortOrder.md)| Sort direction | 
 **Count** | **Int32**| Number of records to return | [default to 100]
 **RoleId** | **String**| The ID of the role used to filter application groups. Empty when fetching application groups without assigned roles | [optional] 
 **Offset** | **Int32**| Start offset | [optional] [default to 0]
 **IncludeTotalCount** | **Boolean**| Include total number of records | [optional] [default to $false]
 **Filter** | **String**| Filter on Application Group Name and Description | [optional] 

### Return type

**String[]**

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-LEApplicationGroupAccess"></a>
# **Update-LEApplicationGroupAccess**
> void Update-LEApplicationGroupAccess<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ApplicationGroupId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RequestBody] <String[]><br>

Update application group access

This endpoint allows you to update the access control list of a single application group.

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

$ApplicationGroupId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | The ID of the Application group.
$RequestBody = "MyRequestBody" # String[] | The IDs of the roles to which this application group should be available. (optional)

# Update application group access
try {
    $Result = Update-LEApplicationGroupAccess -ApplicationGroupId $ApplicationGroupId -RequestBody $RequestBody
} catch {
    Write-Host ("Exception occurred when calling Update-LEApplicationGroupAccess: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ApplicationGroupId** | **String**| The ID of the Application group. | 
 **RequestBody** | [**String[]**](String.md)| The IDs of the roles to which this application group should be available. | [optional] 

### Return type

void (empty response body)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


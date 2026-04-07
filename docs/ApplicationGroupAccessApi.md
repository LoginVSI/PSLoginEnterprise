# PSLoginEnterprise.PSLoginEnterprise\Api.ApplicationGroupAccessApi

All URIs are relative to */publicApi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-ConfigurationBulkAddApplicationGroupAccess**](ApplicationGroupAccessApi.md#Invoke-ConfigurationBulkAddApplicationGroupAccess) | **POST** /v7/application-groups/access | Bulk add application group access
[**Invoke-ConfigurationBulkRemoveApplicationGroupAccess**](ApplicationGroupAccessApi.md#Invoke-ConfigurationBulkRemoveApplicationGroupAccess) | **DELETE** /v7/application-groups/access | Bulk remove application group access
[**Invoke-ConfigurationBulkReplaceApplicationGroupAccess**](ApplicationGroupAccessApi.md#Invoke-ConfigurationBulkReplaceApplicationGroupAccess) | **PUT** /v7/application-groups/access | Bulk replace application group access
[**Invoke-ConfigurationGetApplicationGroupAccess**](ApplicationGroupAccessApi.md#Invoke-ConfigurationGetApplicationGroupAccess) | **GET** /v7/application-groups/{applicationGroupId}/access | Get application group access
[**Invoke-ConfigurationGetApplicationGroupsByRole**](ApplicationGroupAccessApi.md#Invoke-ConfigurationGetApplicationGroupsByRole) | **GET** /v7/application-groups/role | Get application groups by role ID
[**Invoke-ConfigurationUpdateApplicationGroupAccess**](ApplicationGroupAccessApi.md#Invoke-ConfigurationUpdateApplicationGroupAccess) | **PUT** /v7/application-groups/{applicationGroupId}/access | Update application group access


<a id="Invoke-ConfigurationBulkAddApplicationGroupAccess"></a>
# **Invoke-ConfigurationBulkAddApplicationGroupAccess**
> void Invoke-ConfigurationBulkAddApplicationGroupAccess<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ApplicationGroupAccessBulkUpdate] <PSCustomObject><br>

Bulk add application group access

This endpoint allows you to add roles to the access control list of a collection of application groups.

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

$ApplicationGroupAccessBulkUpdate = Initialize-LEApplicationGroupAccessBulkUpdate -ApplicationGroupIds "MyApplicationGroupIds" -RoleIds "MyRoleIds" # ApplicationGroupAccessBulkUpdate | The update request (optional)

# Bulk add application group access
try {
    $Result = Invoke-ConfigurationBulkAddApplicationGroupAccess -ApplicationGroupAccessBulkUpdate $ApplicationGroupAccessBulkUpdate
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationBulkAddApplicationGroupAccess: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-ConfigurationBulkRemoveApplicationGroupAccess"></a>
# **Invoke-ConfigurationBulkRemoveApplicationGroupAccess**
> void Invoke-ConfigurationBulkRemoveApplicationGroupAccess<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ApplicationGroupAccessBulkUpdate] <PSCustomObject><br>

Bulk remove application group access

This endpoint allows you to remove the access control list of a collection of application groups.

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

$ApplicationGroupAccessBulkUpdate = Initialize-LEApplicationGroupAccessBulkUpdate -ApplicationGroupIds "MyApplicationGroupIds" -RoleIds "MyRoleIds" # ApplicationGroupAccessBulkUpdate | The Update request (optional)

# Bulk remove application group access
try {
    $Result = Invoke-ConfigurationBulkRemoveApplicationGroupAccess -ApplicationGroupAccessBulkUpdate $ApplicationGroupAccessBulkUpdate
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationBulkRemoveApplicationGroupAccess: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-ConfigurationBulkReplaceApplicationGroupAccess"></a>
# **Invoke-ConfigurationBulkReplaceApplicationGroupAccess**
> void Invoke-ConfigurationBulkReplaceApplicationGroupAccess<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ApplicationGroupAccessBulkUpdate] <PSCustomObject><br>

Bulk replace application group access

This endpoint allows you to replace the access control list of a collection of application groups.

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

$ApplicationGroupAccessBulkUpdate = Initialize-LEApplicationGroupAccessBulkUpdate -ApplicationGroupIds "MyApplicationGroupIds" -RoleIds "MyRoleIds" # ApplicationGroupAccessBulkUpdate | The Update request (optional)

# Bulk replace application group access
try {
    $Result = Invoke-ConfigurationBulkReplaceApplicationGroupAccess -ApplicationGroupAccessBulkUpdate $ApplicationGroupAccessBulkUpdate
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationBulkReplaceApplicationGroupAccess: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-ConfigurationGetApplicationGroupAccess"></a>
# **Invoke-ConfigurationGetApplicationGroupAccess**
> String[] Invoke-ConfigurationGetApplicationGroupAccess<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ApplicationGroupId] <String><br>

Get application group access

This endpoint allows you to retrieve the access control list of a single application group.

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

$ApplicationGroupId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | The ID of the Application group.

# Get application group access
try {
    $Result = Invoke-ConfigurationGetApplicationGroupAccess -ApplicationGroupId $ApplicationGroupId
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationGetApplicationGroupAccess: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-ConfigurationGetApplicationGroupsByRole"></a>
# **Invoke-ConfigurationGetApplicationGroupsByRole**
> String[] Invoke-ConfigurationGetApplicationGroupsByRole<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RoleId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OrderBy] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Direction] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Int32]><br>
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

# $applianceName = "YOUR_APPLIANCE_HOSTNAME"
$bearerToken = @{"Authorization"="Bearer $accessToken"}
# Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken
""

$RoleId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | The ID of the role used to filter application groups. Empty when fetching application groups without assigned roles (optional)
$OrderBy = "name" # ApplicationGroupSortKey | Sort Key (optional)
$Direction = "asc" # SortOrder | Sort direction (optional)
$Count = 56 # Int32 | Number of records to return (optional) (default to 100)
$Offset = 56 # Int32 | Start offset (optional) (default to 0)
$IncludeTotalCount = $true # Boolean | Include total number of records (optional) (default to $false)
$Filter = "MyFilter" # String | Filter on Application Group Name and Description (optional)

# Get application groups by role ID
try {
    $Result = Invoke-ConfigurationGetApplicationGroupsByRole -RoleId $RoleId -OrderBy $OrderBy -Direction $Direction -Count $Count -Offset $Offset -IncludeTotalCount $IncludeTotalCount -Filter $Filter
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationGetApplicationGroupsByRole: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RoleId** | **String**| The ID of the role used to filter application groups. Empty when fetching application groups without assigned roles | [optional] 
 **OrderBy** | [**ApplicationGroupSortKey**](ApplicationGroupSortKey.md)| Sort Key | [optional] 
 **Direction** | [**SortOrder**](SortOrder.md)| Sort direction | [optional] 
 **Count** | **Int32**| Number of records to return | [optional] [default to 100]
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

<a id="Invoke-ConfigurationUpdateApplicationGroupAccess"></a>
# **Invoke-ConfigurationUpdateApplicationGroupAccess**
> void Invoke-ConfigurationUpdateApplicationGroupAccess<br>
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

# $applianceName = "YOUR_APPLIANCE_HOSTNAME"
$bearerToken = @{"Authorization"="Bearer $accessToken"}
# Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken
""

$ApplicationGroupId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | The ID of the Application group.
$RequestBody = "MyRequestBody" # String[] | The IDs of the roles to which this application group should be available. (optional)

# Update application group access
try {
    $Result = Invoke-ConfigurationUpdateApplicationGroupAccess -ApplicationGroupId $ApplicationGroupId -RequestBody $RequestBody
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationUpdateApplicationGroupAccess: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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


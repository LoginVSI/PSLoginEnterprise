# PSLoginEnterprise.PSLoginEnterprise\Api.LEApplicationAccessApi

All URIs are relative to */publicApi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-LEBulkAddApplicationAccess**](LEApplicationAccessApi.md#Invoke-LEBulkAddApplicationAccess) | **POST** /v7/applications/access | Bulk add application access
[**Invoke-LEBulkRemoveApplicationAccess**](LEApplicationAccessApi.md#Invoke-LEBulkRemoveApplicationAccess) | **DELETE** /v7/applications/access | Bulk remove application access
[**Invoke-LEBulkReplaceApplicationAccess**](LEApplicationAccessApi.md#Invoke-LEBulkReplaceApplicationAccess) | **PUT** /v7/applications/access | Bulk replace application access
[**Get-LEApplicationAccess**](LEApplicationAccessApi.md#Get-LEApplicationAccess) | **GET** /v7/applications/{applicationId}/access | Get application access
[**Get-LEApplicationsByRole**](LEApplicationAccessApi.md#Get-LEApplicationsByRole) | **GET** /v7/applications/role | Get applications by role ID
[**Update-LEApplicationAccess**](LEApplicationAccessApi.md#Update-LEApplicationAccess) | **PUT** /v7/applications/{applicationId}/access | Update application access


<a id="Invoke-LEBulkAddApplicationAccess"></a>
# **Invoke-LEBulkAddApplicationAccess**
> void Invoke-LEBulkAddApplicationAccess<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ApplicationAccessBulkUpdate] <PSCustomObject><br>

Bulk add application access

This endpoint allows you to add roles to the access control list of a collection of applications.

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

$ApplicationAccessBulkUpdate = Initialize-LEApplicationAccessBulkUpdate -ApplicationIds "MyApplicationIds" -RoleIds "MyRoleIds" # ApplicationAccessBulkUpdate | The update request (optional)

# Bulk add application access
try {
    $Result = Invoke-LEBulkAddApplicationAccess -ApplicationAccessBulkUpdate $ApplicationAccessBulkUpdate
} catch {
    Write-Host ("Exception occurred when calling Invoke-LEBulkAddApplicationAccess: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ApplicationAccessBulkUpdate** | [**ApplicationAccessBulkUpdate**](ApplicationAccessBulkUpdate.md)| The update request | [optional] 

### Return type

void (empty response body)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-LEBulkRemoveApplicationAccess"></a>
# **Invoke-LEBulkRemoveApplicationAccess**
> void Invoke-LEBulkRemoveApplicationAccess<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ApplicationAccessBulkUpdate] <PSCustomObject><br>

Bulk remove application access

This endpoint allows you to remove the access control list of a collection of applications.

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

$ApplicationAccessBulkUpdate = Initialize-LEApplicationAccessBulkUpdate -ApplicationIds "MyApplicationIds" -RoleIds "MyRoleIds" # ApplicationAccessBulkUpdate | The Update request (optional)

# Bulk remove application access
try {
    $Result = Invoke-LEBulkRemoveApplicationAccess -ApplicationAccessBulkUpdate $ApplicationAccessBulkUpdate
} catch {
    Write-Host ("Exception occurred when calling Invoke-LEBulkRemoveApplicationAccess: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ApplicationAccessBulkUpdate** | [**ApplicationAccessBulkUpdate**](ApplicationAccessBulkUpdate.md)| The Update request | [optional] 

### Return type

void (empty response body)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-LEBulkReplaceApplicationAccess"></a>
# **Invoke-LEBulkReplaceApplicationAccess**
> void Invoke-LEBulkReplaceApplicationAccess<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ApplicationAccessBulkUpdate] <PSCustomObject><br>

Bulk replace application access

This endpoint allows you to replace the access control list of a collection of applications.

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

$ApplicationAccessBulkUpdate = Initialize-LEApplicationAccessBulkUpdate -ApplicationIds "MyApplicationIds" -RoleIds "MyRoleIds" # ApplicationAccessBulkUpdate | The Update request (optional)

# Bulk replace application access
try {
    $Result = Invoke-LEBulkReplaceApplicationAccess -ApplicationAccessBulkUpdate $ApplicationAccessBulkUpdate
} catch {
    Write-Host ("Exception occurred when calling Invoke-LEBulkReplaceApplicationAccess: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ApplicationAccessBulkUpdate** | [**ApplicationAccessBulkUpdate**](ApplicationAccessBulkUpdate.md)| The Update request | [optional] 

### Return type

void (empty response body)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-LEApplicationAccess"></a>
# **Get-LEApplicationAccess**
> String[] Get-LEApplicationAccess<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ApplicationId] <String><br>

Get application access

This endpoint allows you to retrieve the access control list of a single application.

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

$ApplicationId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | The ID of the Application.

# Get application access
try {
    $Result = Get-LEApplicationAccess -ApplicationId $ApplicationId
} catch {
    Write-Host ("Exception occurred when calling Get-LEApplicationAccess: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ApplicationId** | **String**| The ID of the Application. | 

### Return type

**String[]**

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-LEApplicationsByRole"></a>
# **Get-LEApplicationsByRole**
> String[] Get-LEApplicationsByRole<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RoleId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OrderBy] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Direction] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IncludeTotalCount] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>

Get applications by role ID

This endpoint allows you to retrieve applications assigned to a role.

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

$RoleId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | The ID of the role used to filter applications. Empty when fetching applications without assigned roles (optional)
$OrderBy = "name" # ApplicationSortKey | Sort Key (optional)
$Direction = "asc" # SortOrder | Sort direction (optional)
$Count = 56 # Int32 | Number of records to return (optional) (default to 100)
$Offset = 56 # Int32 | Start offset (optional) (default to 0)
$IncludeTotalCount = $true # Boolean | Include total number of records (optional) (default to $false)
$Filter = "MyFilter" # String | Filter on Application Name and Description (optional)

# Get applications by role ID
try {
    $Result = Get-LEApplicationsByRole -RoleId $RoleId -OrderBy $OrderBy -Direction $Direction -Count $Count -Offset $Offset -IncludeTotalCount $IncludeTotalCount -Filter $Filter
} catch {
    Write-Host ("Exception occurred when calling Get-LEApplicationsByRole: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RoleId** | **String**| The ID of the role used to filter applications. Empty when fetching applications without assigned roles | [optional] 
 **OrderBy** | [**ApplicationSortKey**](ApplicationSortKey.md)| Sort Key | [optional] 
 **Direction** | [**SortOrder**](SortOrder.md)| Sort direction | [optional] 
 **Count** | **Int32**| Number of records to return | [optional] [default to 100]
 **Offset** | **Int32**| Start offset | [optional] [default to 0]
 **IncludeTotalCount** | **Boolean**| Include total number of records | [optional] [default to $false]
 **Filter** | **String**| Filter on Application Name and Description | [optional] 

### Return type

**String[]**

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-LEApplicationAccess"></a>
# **Update-LEApplicationAccess**
> void Update-LEApplicationAccess<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ApplicationId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RequestBody] <String[]><br>

Update application access

This endpoint allows you to update the access control list of a single application.

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

$ApplicationId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | The ID of the Application.
$RequestBody = "MyRequestBody" # String[] | The IDs of the roles to which this application should be available. (optional)

# Update application access
try {
    $Result = Update-LEApplicationAccess -ApplicationId $ApplicationId -RequestBody $RequestBody
} catch {
    Write-Host ("Exception occurred when calling Update-LEApplicationAccess: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ApplicationId** | **String**| The ID of the Application. | 
 **RequestBody** | [**String[]**](String.md)| The IDs of the roles to which this application should be available. | [optional] 

### Return type

void (empty response body)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


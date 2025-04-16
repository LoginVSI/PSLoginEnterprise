# PSLoginEnterprise.PSLoginEnterprise\Api.LETestAccessApi

All URIs are relative to */publicApi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-LEBulkAddTestAccess**](LETestAccessApi.md#Invoke-LEBulkAddTestAccess) | **POST** /v7/tests/access | This endpoint allows you to add roles to the access control list of a collection of tests.
[**Invoke-LEBulkReplaceTestAccess**](LETestAccessApi.md#Invoke-LEBulkReplaceTestAccess) | **PUT** /v7/tests/access | This endpoint allows you to replace the access control list of a collection of tests.
[**Get-LETestAccess**](LETestAccessApi.md#Get-LETestAccess) | **GET** /v7/tests/{testId}/access | This endpoint allows you to retrieve the access control list of a single test.
[**Get-LETestsByRole**](LETestAccessApi.md#Get-LETestsByRole) | **GET** /v7/tests/role | This endpoint allows you to retrieve the IDs of test assigned to a role.
[**Update-LETestAccess**](LETestAccessApi.md#Update-LETestAccess) | **PUT** /v7/tests/{testId}/access | This endpoint allows you to update the access control list of a single test.


<a id="Invoke-LEBulkAddTestAccess"></a>
# **Invoke-LEBulkAddTestAccess**
> void Invoke-LEBulkAddTestAccess<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestAccessBulkUpdate] <PSCustomObject><br>

This endpoint allows you to add roles to the access control list of a collection of tests.

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

$TestAccessBulkUpdate = Initialize-LETestAccessBulkUpdate -TestIds "MyTestIds" -RoleIds "MyRoleIds" # TestAccessBulkUpdate | The update request (optional)

# This endpoint allows you to add roles to the access control list of a collection of tests.
try {
    $Result = Invoke-LEBulkAddTestAccess -TestAccessBulkUpdate $TestAccessBulkUpdate
} catch {
    Write-Host ("Exception occurred when calling Invoke-LEBulkAddTestAccess: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestAccessBulkUpdate** | [**TestAccessBulkUpdate**](TestAccessBulkUpdate.md)| The update request | [optional] 

### Return type

void (empty response body)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-LEBulkReplaceTestAccess"></a>
# **Invoke-LEBulkReplaceTestAccess**
> void Invoke-LEBulkReplaceTestAccess<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestAccessBulkUpdate] <PSCustomObject><br>

This endpoint allows you to replace the access control list of a collection of tests.

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

$TestAccessBulkUpdate = Initialize-LETestAccessBulkUpdate -TestIds "MyTestIds" -RoleIds "MyRoleIds" # TestAccessBulkUpdate | The update request (optional)

# This endpoint allows you to replace the access control list of a collection of tests.
try {
    $Result = Invoke-LEBulkReplaceTestAccess -TestAccessBulkUpdate $TestAccessBulkUpdate
} catch {
    Write-Host ("Exception occurred when calling Invoke-LEBulkReplaceTestAccess: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestAccessBulkUpdate** | [**TestAccessBulkUpdate**](TestAccessBulkUpdate.md)| The update request | [optional] 

### Return type

void (empty response body)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-LETestAccess"></a>
# **Get-LETestAccess**
> String[] Get-LETestAccess<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestId] <String><br>

This endpoint allows you to retrieve the access control list of a single test.

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

$TestId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | The ID of the Test.

# This endpoint allows you to retrieve the access control list of a single test.
try {
    $Result = Get-LETestAccess -TestId $TestId
} catch {
    Write-Host ("Exception occurred when calling Get-LETestAccess: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestId** | **String**| The ID of the Test. | 

### Return type

**String[]**

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-LETestsByRole"></a>
# **Get-LETestsByRole**
> String[] Get-LETestsByRole<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RoleId] <String><br>

This endpoint allows you to retrieve the IDs of test assigned to a role.

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

$RoleId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | The ID of the role used to filter tests. Empty when fetching tests without assigned roles (optional)

# This endpoint allows you to retrieve the IDs of test assigned to a role.
try {
    $Result = Get-LETestsByRole -RoleId $RoleId
} catch {
    Write-Host ("Exception occurred when calling Get-LETestsByRole: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RoleId** | **String**| The ID of the role used to filter tests. Empty when fetching tests without assigned roles | [optional] 

### Return type

**String[]**

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-LETestAccess"></a>
# **Update-LETestAccess**
> void Update-LETestAccess<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RequestBody] <String[]><br>

This endpoint allows you to update the access control list of a single test.

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

$TestId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | The ID of the Test.
$RequestBody = "MyRequestBody" # String[] | The IDs of the roles to which this test should be available. (optional)

# This endpoint allows you to update the access control list of a single test.
try {
    $Result = Update-LETestAccess -TestId $TestId -RequestBody $RequestBody
} catch {
    Write-Host ("Exception occurred when calling Update-LETestAccess: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestId** | **String**| The ID of the Test. | 
 **RequestBody** | [**String[]**](String.md)| The IDs of the roles to which this test should be available. | [optional] 

### Return type

void (empty response body)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


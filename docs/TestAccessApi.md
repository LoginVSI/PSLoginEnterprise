# PSLoginEnterprise.PSLoginEnterprise\Api.TestAccessApi

All URIs are relative to */publicApi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-ConfigurationBulkAddTestAccess**](TestAccessApi.md#Invoke-ConfigurationBulkAddTestAccess) | **POST** /v7/tests/access | This endpoint allows you to add roles to the access control list of a collection of tests.
[**Invoke-ConfigurationBulkReplaceTestAccess**](TestAccessApi.md#Invoke-ConfigurationBulkReplaceTestAccess) | **PUT** /v7/tests/access | This endpoint allows you to replace the access control list of a collection of tests.
[**Invoke-ConfigurationGetTestAccess**](TestAccessApi.md#Invoke-ConfigurationGetTestAccess) | **GET** /v7/tests/{testId}/access | This endpoint allows you to retrieve the access control list of a single test.
[**Invoke-ConfigurationGetTestsByRole**](TestAccessApi.md#Invoke-ConfigurationGetTestsByRole) | **GET** /v7/tests/role | This endpoint allows you to retrieve the IDs of test assigned to a role.
[**Invoke-ConfigurationUpdateTestAccess**](TestAccessApi.md#Invoke-ConfigurationUpdateTestAccess) | **PUT** /v7/tests/{testId}/access | This endpoint allows you to update the access control list of a single test.


<a id="Invoke-ConfigurationBulkAddTestAccess"></a>
# **Invoke-ConfigurationBulkAddTestAccess**
> void Invoke-ConfigurationBulkAddTestAccess<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestAccessBulkUpdate] <PSCustomObject><br>

This endpoint allows you to add roles to the access control list of a collection of tests.

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

$TestAccessBulkUpdate = Initialize-LETestAccessBulkUpdate -TestIds "MyTestIds" -RoleIds "MyRoleIds" # TestAccessBulkUpdate | The update request (optional)

# This endpoint allows you to add roles to the access control list of a collection of tests.
try {
    $Result = Invoke-ConfigurationBulkAddTestAccess -TestAccessBulkUpdate $TestAccessBulkUpdate
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationBulkAddTestAccess: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-ConfigurationBulkReplaceTestAccess"></a>
# **Invoke-ConfigurationBulkReplaceTestAccess**
> void Invoke-ConfigurationBulkReplaceTestAccess<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestAccessBulkUpdate] <PSCustomObject><br>

This endpoint allows you to replace the access control list of a collection of tests.

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

$TestAccessBulkUpdate = Initialize-LETestAccessBulkUpdate -TestIds "MyTestIds" -RoleIds "MyRoleIds" # TestAccessBulkUpdate | The update request (optional)

# This endpoint allows you to replace the access control list of a collection of tests.
try {
    $Result = Invoke-ConfigurationBulkReplaceTestAccess -TestAccessBulkUpdate $TestAccessBulkUpdate
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationBulkReplaceTestAccess: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-ConfigurationGetTestAccess"></a>
# **Invoke-ConfigurationGetTestAccess**
> String[] Invoke-ConfigurationGetTestAccess<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestId] <String><br>

This endpoint allows you to retrieve the access control list of a single test.

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

$TestId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | The ID of the Test.

# This endpoint allows you to retrieve the access control list of a single test.
try {
    $Result = Invoke-ConfigurationGetTestAccess -TestId $TestId
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationGetTestAccess: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-ConfigurationGetTestsByRole"></a>
# **Invoke-ConfigurationGetTestsByRole**
> String[] Invoke-ConfigurationGetTestsByRole<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RoleId] <String><br>

This endpoint allows you to retrieve the IDs of test assigned to a role.

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

$RoleId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | The ID of the role used to filter tests. Empty when fetching tests without assigned roles (optional)

# This endpoint allows you to retrieve the IDs of test assigned to a role.
try {
    $Result = Invoke-ConfigurationGetTestsByRole -RoleId $RoleId
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationGetTestsByRole: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-ConfigurationUpdateTestAccess"></a>
# **Invoke-ConfigurationUpdateTestAccess**
> void Invoke-ConfigurationUpdateTestAccess<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RequestBody] <String[]><br>

This endpoint allows you to update the access control list of a single test.

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

$TestId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | The ID of the Test.
$RequestBody = "MyRequestBody" # String[] | The IDs of the roles to which this test should be available. (optional)

# This endpoint allows you to update the access control list of a single test.
try {
    $Result = Invoke-ConfigurationUpdateTestAccess -TestId $TestId -RequestBody $RequestBody
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationUpdateTestAccess: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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


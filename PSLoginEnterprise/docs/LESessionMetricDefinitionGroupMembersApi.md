# PSLoginEnterprise.PSLoginEnterprise\Api.LESessionMetricDefinitionGroupMembersApi

All URIs are relative to */publicApi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Add-LESessionMetricGroupMembers**](LESessionMetricDefinitionGroupMembersApi.md#Add-LESessionMetricGroupMembers) | **POST** /v7/session-metric-definition-groups/{groupId}/members | Add members to session metric group
[**Get-LEMetricGroupMembers**](LESessionMetricDefinitionGroupMembersApi.md#Get-LEMetricGroupMembers) | **GET** /v7/session-metric-definition-groups/{groupId}/members | Get paginated list of user session metric group members
[**Remove-LESessionMetricGroupMembers**](LESessionMetricDefinitionGroupMembersApi.md#Remove-LESessionMetricGroupMembers) | **DELETE** /v7/session-metric-definition-groups/{groupId}/members | Remove members from user session metric group
[**Set-LESessionMetricDefinitionGroupMembers**](LESessionMetricDefinitionGroupMembersApi.md#Set-LESessionMetricDefinitionGroupMembers) | **PUT** /v7/session-metric-definition-groups/{groupId}/members | Replace members in session metric group


<a id="Add-LESessionMetricGroupMembers"></a>
# **Add-LESessionMetricGroupMembers**
> void Add-LESessionMetricGroupMembers<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RequestBody] <String[]><br>

Add members to session metric group

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

$GroupId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Session metric group id
$RequestBody = "MyRequestBody" # String[] | User session metric definition ids

# Add members to session metric group
try {
    $Result = Add-LESessionMetricGroupMembers -GroupId $GroupId -RequestBody $RequestBody
} catch {
    Write-Host ("Exception occurred when calling Add-LESessionMetricGroupMembers: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **GroupId** | **String**| Session metric group id | 
 **RequestBody** | [**String[]**](String.md)| User session metric definition ids | 

### Return type

void (empty response body)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-LEMetricGroupMembers"></a>
# **Get-LEMetricGroupMembers**
> UserSessionMetricDefinitionResultSet Get-LEMetricGroupMembers<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OrderBy] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Direction] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IncludeTotalCount] <System.Nullable[Boolean]><br>

Get paginated list of user session metric group members

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

$GroupId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | User session metric group id
$OrderBy = "definitionType" # SessionMetricDefinitionSortKey | Sort Key
$Direction = "asc" # SortOrder | Sort direction
$Count = 56 # Int32 | Number of records to return (default to 100)
$Offset = 56 # Int32 | Start offset (optional) (default to 0)
$IncludeTotalCount = $true # Boolean | Include total number of records (optional) (default to $false)

# Get paginated list of user session metric group members
try {
    $Result = Get-LEMetricGroupMembers -GroupId $GroupId -OrderBy $OrderBy -Direction $Direction -Count $Count -Offset $Offset -IncludeTotalCount $IncludeTotalCount
} catch {
    Write-Host ("Exception occurred when calling Get-LEMetricGroupMembers: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **GroupId** | **String**| User session metric group id | 
 **OrderBy** | [**SessionMetricDefinitionSortKey**](SessionMetricDefinitionSortKey.md)| Sort Key | 
 **Direction** | [**SortOrder**](SortOrder.md)| Sort direction | 
 **Count** | **Int32**| Number of records to return | [default to 100]
 **Offset** | **Int32**| Start offset | [optional] [default to 0]
 **IncludeTotalCount** | **Boolean**| Include total number of records | [optional] [default to $false]

### Return type

[**UserSessionMetricDefinitionResultSet**](UserSessionMetricDefinitionResultSet.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Remove-LESessionMetricGroupMembers"></a>
# **Remove-LESessionMetricGroupMembers**
> void Remove-LESessionMetricGroupMembers<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RequestBody] <String[]><br>

Remove members from user session metric group

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

$GroupId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | User session metric group id
$RequestBody = "MyRequestBody" # String[] | User session metric definition ids

# Remove members from user session metric group
try {
    $Result = Remove-LESessionMetricGroupMembers -GroupId $GroupId -RequestBody $RequestBody
} catch {
    Write-Host ("Exception occurred when calling Remove-LESessionMetricGroupMembers: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **GroupId** | **String**| User session metric group id | 
 **RequestBody** | [**String[]**](String.md)| User session metric definition ids | 

### Return type

void (empty response body)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Set-LESessionMetricDefinitionGroupMembers"></a>
# **Set-LESessionMetricDefinitionGroupMembers**
> void Set-LESessionMetricDefinitionGroupMembers<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RequestBody] <String[]><br>

Replace members in session metric group

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

$GroupId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Session metric group id
$RequestBody = "MyRequestBody" # String[] | User session metric definition ids

# Replace members in session metric group
try {
    $Result = Set-LESessionMetricDefinitionGroupMembers -GroupId $GroupId -RequestBody $RequestBody
} catch {
    Write-Host ("Exception occurred when calling Set-LESessionMetricDefinitionGroupMembers: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **GroupId** | **String**| Session metric group id | 
 **RequestBody** | [**String[]**](String.md)| User session metric definition ids | 

### Return type

void (empty response body)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


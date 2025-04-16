# PSLoginEnterprise.PSLoginEnterprise\Api.LESessionMetricDefinitionGroupsApi

All URIs are relative to */publicApi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Add-LESessionMetricGroupDefinitionToTests**](LESessionMetricDefinitionGroupsApi.md#Add-LESessionMetricGroupDefinitionToTests) | **PUT** /v7/session-metric-definition-groups/{groupId}/tests | Add tests to a session metric definition group
[**New-LEUserSessionMetricGroup**](LESessionMetricDefinitionGroupsApi.md#New-LEUserSessionMetricGroup) | **POST** /v7/session-metric-definition-groups | Create user session metric group
[**Invoke-LEDeleteUserSessionMetricGroup**](LESessionMetricDefinitionGroupsApi.md#Invoke-LEDeleteUserSessionMetricGroup) | **DELETE** /v7/session-metric-definition-groups/{groupId} | Delete user session metric group
[**Get-LETestsBySessionMetricDefinitionGroup**](LESessionMetricDefinitionGroupsApi.md#Get-LETestsBySessionMetricDefinitionGroup) | **GET** /v7/session-metric-definition-groups/tests | Get tests by session-metric-group key
[**Get-LEUserSessionMetricGroup**](LESessionMetricDefinitionGroupsApi.md#Get-LEUserSessionMetricGroup) | **GET** /v7/session-metric-definition-groups/{groupId} | Get user session metric group by id
[**Get-LEUserSessionMetricGroups**](LESessionMetricDefinitionGroupsApi.md#Get-LEUserSessionMetricGroups) | **GET** /v7/session-metric-definition-groups | Get paginated list of user session metric group
[**Remove-LESessionMetricDefinitionGroupFromTests**](LESessionMetricDefinitionGroupsApi.md#Remove-LESessionMetricDefinitionGroupFromTests) | **DELETE** /v7/session-metric-definition-groups/{groupId}/tests | Delete tests from environment
[**Update-LEUserSessionMetricGroup**](LESessionMetricDefinitionGroupsApi.md#Update-LEUserSessionMetricGroup) | **PUT** /v7/session-metric-definition-groups/{groupId} | Update user session metric group


<a id="Add-LESessionMetricGroupDefinitionToTests"></a>
# **Add-LESessionMetricGroupDefinitionToTests**
> void Add-LESessionMetricGroupDefinitionToTests<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RequestBody] <String[]><br>

Add tests to a session metric definition group

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

$GroupId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Session metric definition group id
$RequestBody = "MyRequestBody" # String[] | Test Key list

# Add tests to a session metric definition group
try {
    $Result = Add-LESessionMetricGroupDefinitionToTests -GroupId $GroupId -RequestBody $RequestBody
} catch {
    Write-Host ("Exception occurred when calling Add-LESessionMetricGroupDefinitionToTests: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **GroupId** | **String**| Session metric definition group id | 
 **RequestBody** | [**String[]**](String.md)| Test Key list | 

### Return type

void (empty response body)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="New-LEUserSessionMetricGroup"></a>
# **New-LEUserSessionMetricGroup**
> ObjectId New-LEUserSessionMetricGroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SessionMetricDefinitionGroupCreate] <PSCustomObject><br>

Create user session metric group

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

$SessionMetricDefinitionGroupCreate = Initialize-LESessionMetricDefinitionGroupCreate -Name "MyName" -Description "MyDescription" -DefinitionKeys "MyDefinitionKeys" # SessionMetricDefinitionGroupCreate | Request, which contains name of group and identifiers of members

# Create user session metric group
try {
    $Result = New-LEUserSessionMetricGroup -SessionMetricDefinitionGroupCreate $SessionMetricDefinitionGroupCreate
} catch {
    Write-Host ("Exception occurred when calling New-LEUserSessionMetricGroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SessionMetricDefinitionGroupCreate** | [**SessionMetricDefinitionGroupCreate**](SessionMetricDefinitionGroupCreate.md)| Request, which contains name of group and identifiers of members | 

### Return type

[**ObjectId**](ObjectId.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-LEDeleteUserSessionMetricGroup"></a>
# **Invoke-LEDeleteUserSessionMetricGroup**
> void Invoke-LEDeleteUserSessionMetricGroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <String><br>

Delete user session metric group

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

$GroupId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | User session metric group id

# Delete user session metric group
try {
    $Result = Invoke-LEDeleteUserSessionMetricGroup -GroupId $GroupId
} catch {
    Write-Host ("Exception occurred when calling Invoke-LEDeleteUserSessionMetricGroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **GroupId** | **String**| User session metric group id | 

### Return type

void (empty response body)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-LETestsBySessionMetricDefinitionGroup"></a>
# **Get-LETestsBySessionMetricDefinitionGroup**
> TestResultSet Get-LETestsBySessionMetricDefinitionGroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Type] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OrderBy] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Direction] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IncludeTotalCount] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Include] <PSCustomObject[]><br>

Get tests by session-metric-group key

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

$Type = "applicationTest" # TestType | Test type (Only continuous and load test types are supported)
$OrderBy = "name" # TestSortKey | Sort Key
$Direction = "asc" # SortOrder | Sort direction
$Count = 56 # Int32 | Number of records to return (default to 100)
$GroupId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | A session metric definition group id. Empty when fetching tests without an assigned session metric definition group (optional)
$Filter = "MyFilter" # String | Filter the tests (optional)
$Offset = 56 # Int32 | Start offset (optional) (default to 0)
$IncludeTotalCount = $true # Boolean | Include total number of records (optional) (default to $false)
$Include = "none" # TestInclude[] | Include options (optional)

# Get tests by session-metric-group key
try {
    $Result = Get-LETestsBySessionMetricDefinitionGroup -Type $Type -OrderBy $OrderBy -Direction $Direction -Count $Count -GroupId $GroupId -Filter $Filter -Offset $Offset -IncludeTotalCount $IncludeTotalCount -Include $Include
} catch {
    Write-Host ("Exception occurred when calling Get-LETestsBySessionMetricDefinitionGroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Type** | [**TestType**](TestType.md)| Test type (Only continuous and load test types are supported) | 
 **OrderBy** | [**TestSortKey**](TestSortKey.md)| Sort Key | 
 **Direction** | [**SortOrder**](SortOrder.md)| Sort direction | 
 **Count** | **Int32**| Number of records to return | [default to 100]
 **GroupId** | **String**| A session metric definition group id. Empty when fetching tests without an assigned session metric definition group | [optional] 
 **Filter** | **String**| Filter the tests | [optional] 
 **Offset** | **Int32**| Start offset | [optional] [default to 0]
 **IncludeTotalCount** | **Boolean**| Include total number of records | [optional] [default to $false]
 **Include** | [**TestInclude[]**](TestInclude.md)| Include options | [optional] 

### Return type

[**TestResultSet**](TestResultSet.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-LEUserSessionMetricGroup"></a>
# **Get-LEUserSessionMetricGroup**
> SessionMetricDefinitionGroup Get-LEUserSessionMetricGroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <String><br>

Get user session metric group by id

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

$GroupId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Session metric group id

# Get user session metric group by id
try {
    $Result = Get-LEUserSessionMetricGroup -GroupId $GroupId
} catch {
    Write-Host ("Exception occurred when calling Get-LEUserSessionMetricGroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **GroupId** | **String**| Session metric group id | 

### Return type

[**SessionMetricDefinitionGroup**](SessionMetricDefinitionGroup.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-LEUserSessionMetricGroups"></a>
# **Get-LEUserSessionMetricGroups**
> SessionMetricDefinitionGroupResultSet Get-LEUserSessionMetricGroups<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OrderBy] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Direction] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IncludeTotalCount] <System.Nullable[Boolean]><br>

Get paginated list of user session metric group

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

$OrderBy = "name" # SessionMetricDefinitionGroupSortKey | Sort Key
$Direction = "asc" # SortOrder | Sort direction
$Count = 56 # Int32 | Number of records to return (default to 100)
$Filter = "MyFilter" # String | Filter on group name or group description (optional)
$Offset = 56 # Int32 | Start offset (optional) (default to 0)
$IncludeTotalCount = $true # Boolean | Include total number of records (optional) (default to $false)

# Get paginated list of user session metric group
try {
    $Result = Get-LEUserSessionMetricGroups -OrderBy $OrderBy -Direction $Direction -Count $Count -Filter $Filter -Offset $Offset -IncludeTotalCount $IncludeTotalCount
} catch {
    Write-Host ("Exception occurred when calling Get-LEUserSessionMetricGroups: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **OrderBy** | [**SessionMetricDefinitionGroupSortKey**](SessionMetricDefinitionGroupSortKey.md)| Sort Key | 
 **Direction** | [**SortOrder**](SortOrder.md)| Sort direction | 
 **Count** | **Int32**| Number of records to return | [default to 100]
 **Filter** | **String**| Filter on group name or group description | [optional] 
 **Offset** | **Int32**| Start offset | [optional] [default to 0]
 **IncludeTotalCount** | **Boolean**| Include total number of records | [optional] [default to $false]

### Return type

[**SessionMetricDefinitionGroupResultSet**](SessionMetricDefinitionGroupResultSet.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Remove-LESessionMetricDefinitionGroupFromTests"></a>
# **Remove-LESessionMetricDefinitionGroupFromTests**
> void Remove-LESessionMetricDefinitionGroupFromTests<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RequestBody] <String[]><br>

Delete tests from environment

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

$GroupId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Session metric definition group id
$RequestBody = "MyRequestBody" # String[] | Test key list

# Delete tests from environment
try {
    $Result = Remove-LESessionMetricDefinitionGroupFromTests -GroupId $GroupId -RequestBody $RequestBody
} catch {
    Write-Host ("Exception occurred when calling Remove-LESessionMetricDefinitionGroupFromTests: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **GroupId** | **String**| Session metric definition group id | 
 **RequestBody** | [**String[]**](String.md)| Test key list | 

### Return type

void (empty response body)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-LEUserSessionMetricGroup"></a>
# **Update-LEUserSessionMetricGroup**
> void Update-LEUserSessionMetricGroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SessionMetricDefinitionGroupUpdate] <PSCustomObject><br>

Update user session metric group

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

$GroupId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | User session metric group id
$SessionMetricDefinitionGroupUpdate = Initialize-LESessionMetricDefinitionGroupUpdate -Name "MyName" -Description "MyDescription" # SessionMetricDefinitionGroupUpdate | User session metric group data

# Update user session metric group
try {
    $Result = Update-LEUserSessionMetricGroup -GroupId $GroupId -SessionMetricDefinitionGroupUpdate $SessionMetricDefinitionGroupUpdate
} catch {
    Write-Host ("Exception occurred when calling Update-LEUserSessionMetricGroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **GroupId** | **String**| User session metric group id | 
 **SessionMetricDefinitionGroupUpdate** | [**SessionMetricDefinitionGroupUpdate**](SessionMetricDefinitionGroupUpdate.md)| User session metric group data | 

### Return type

void (empty response body)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


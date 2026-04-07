# PSLoginEnterprise.PSLoginEnterprise\Api.SessionMetricDefinitionGroupsApi

All URIs are relative to */publicApi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-DataAddSessionMetricGroupDefinitionToTests**](SessionMetricDefinitionGroupsApi.md#Invoke-DataAddSessionMetricGroupDefinitionToTests) | **PUT** /v7/session-metric-definition-groups/{groupId}/tests | Add tests to a session metric definition group
[**Invoke-DataCreateUserSessionMetricGroup**](SessionMetricDefinitionGroupsApi.md#Invoke-DataCreateUserSessionMetricGroup) | **POST** /v7/session-metric-definition-groups | Create user session metric group
[**Invoke-DataDeleteUserSessionMetricGroup**](SessionMetricDefinitionGroupsApi.md#Invoke-DataDeleteUserSessionMetricGroup) | **DELETE** /v7/session-metric-definition-groups/{groupId} | Delete user session metric group
[**Invoke-DataGetTestsBySessionMetricDefinitionGroup**](SessionMetricDefinitionGroupsApi.md#Invoke-DataGetTestsBySessionMetricDefinitionGroup) | **GET** /v7/session-metric-definition-groups/tests | Get tests by session-metric-group key
[**Invoke-DataGetUserSessionMetricGroup**](SessionMetricDefinitionGroupsApi.md#Invoke-DataGetUserSessionMetricGroup) | **GET** /v7/session-metric-definition-groups/{groupId} | Get user session metric group by id
[**Invoke-DataGetUserSessionMetricGroups**](SessionMetricDefinitionGroupsApi.md#Invoke-DataGetUserSessionMetricGroups) | **GET** /v7/session-metric-definition-groups | Get paginated list of user session metric group
[**Invoke-DataRemoveSessionMetricDefinitionGroupFromTests**](SessionMetricDefinitionGroupsApi.md#Invoke-DataRemoveSessionMetricDefinitionGroupFromTests) | **DELETE** /v7/session-metric-definition-groups/{groupId}/tests | Delete tests from environment
[**Invoke-DataUpdateUserSessionMetricGroup**](SessionMetricDefinitionGroupsApi.md#Invoke-DataUpdateUserSessionMetricGroup) | **PUT** /v7/session-metric-definition-groups/{groupId} | Update user session metric group


<a id="Invoke-DataAddSessionMetricGroupDefinitionToTests"></a>
# **Invoke-DataAddSessionMetricGroupDefinitionToTests**
> void Invoke-DataAddSessionMetricGroupDefinitionToTests<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RequestBody] <String[]><br>

Add tests to a session metric definition group

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

$GroupId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Session metric definition group id
$RequestBody = "MyRequestBody" # String[] | Test Key list

# Add tests to a session metric definition group
try {
    $Result = Invoke-DataAddSessionMetricGroupDefinitionToTests -GroupId $GroupId -RequestBody $RequestBody
} catch {
    Write-Host ("Exception occurred when calling Invoke-DataAddSessionMetricGroupDefinitionToTests: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-DataCreateUserSessionMetricGroup"></a>
# **Invoke-DataCreateUserSessionMetricGroup**
> ObjectId Invoke-DataCreateUserSessionMetricGroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SessionMetricDefinitionGroupCreate] <PSCustomObject><br>

Create user session metric group

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

$SessionMetricDefinitionGroupCreate = Initialize-LESessionMetricDefinitionGroupCreate -Name "MyName" -Description "MyDescription" -DefinitionKeys "MyDefinitionKeys" # SessionMetricDefinitionGroupCreate | Request, which contains name of group and identifiers of members

# Create user session metric group
try {
    $Result = Invoke-DataCreateUserSessionMetricGroup -SessionMetricDefinitionGroupCreate $SessionMetricDefinitionGroupCreate
} catch {
    Write-Host ("Exception occurred when calling Invoke-DataCreateUserSessionMetricGroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-DataDeleteUserSessionMetricGroup"></a>
# **Invoke-DataDeleteUserSessionMetricGroup**
> void Invoke-DataDeleteUserSessionMetricGroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <String><br>

Delete user session metric group

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

$GroupId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | User session metric group id

# Delete user session metric group
try {
    $Result = Invoke-DataDeleteUserSessionMetricGroup -GroupId $GroupId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DataDeleteUserSessionMetricGroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-DataGetTestsBySessionMetricDefinitionGroup"></a>
# **Invoke-DataGetTestsBySessionMetricDefinitionGroup**
> TestResultSet Invoke-DataGetTestsBySessionMetricDefinitionGroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Type] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OrderBy] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Direction] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Int32]><br>
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

# $applianceName = "YOUR_APPLIANCE_HOSTNAME"
$bearerToken = @{"Authorization"="Bearer $accessToken"}
Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken
""

$Type = "applicationTest" # TestType | Test type (Only continuous and load test types are supported)
$GroupId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | A session metric definition group id. Empty when fetching tests without an assigned session metric definition group (optional)
$Filter = "MyFilter" # String | Filter the tests (optional)
$OrderBy = "name" # TestSortKey | Sort Key (optional)
$Direction = "asc" # SortOrder | Sort direction (optional)
$Count = 56 # Int32 | Number of records to return (optional) (default to 100)
$Offset = 56 # Int32 | Start offset (optional) (default to 0)
$IncludeTotalCount = $true # Boolean | Include total number of records (optional) (default to $false)
$Include = "none" # TestInclude[] | Include options (optional)

# Get tests by session-metric-group key
try {
    $Result = Invoke-DataGetTestsBySessionMetricDefinitionGroup -Type $Type -GroupId $GroupId -Filter $Filter -OrderBy $OrderBy -Direction $Direction -Count $Count -Offset $Offset -IncludeTotalCount $IncludeTotalCount -Include $Include
} catch {
    Write-Host ("Exception occurred when calling Invoke-DataGetTestsBySessionMetricDefinitionGroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Type** | [**TestType**](TestType.md)| Test type (Only continuous and load test types are supported) | 
 **GroupId** | **String**| A session metric definition group id. Empty when fetching tests without an assigned session metric definition group | [optional] 
 **Filter** | **String**| Filter the tests | [optional] 
 **OrderBy** | [**TestSortKey**](TestSortKey.md)| Sort Key | [optional] 
 **Direction** | [**SortOrder**](SortOrder.md)| Sort direction | [optional] 
 **Count** | **Int32**| Number of records to return | [optional] [default to 100]
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

<a id="Invoke-DataGetUserSessionMetricGroup"></a>
# **Invoke-DataGetUserSessionMetricGroup**
> SessionMetricDefinitionGroup Invoke-DataGetUserSessionMetricGroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <String><br>

Get user session metric group by id

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

$GroupId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Session metric group id

# Get user session metric group by id
try {
    $Result = Invoke-DataGetUserSessionMetricGroup -GroupId $GroupId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DataGetUserSessionMetricGroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-DataGetUserSessionMetricGroups"></a>
# **Invoke-DataGetUserSessionMetricGroups**
> SessionMetricDefinitionGroupResultSet Invoke-DataGetUserSessionMetricGroups<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OrderBy] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Direction] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IncludeTotalCount] <System.Nullable[Boolean]><br>

Get paginated list of user session metric group

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

$Filter = "MyFilter" # String | Filter on group name or group description (optional)
$OrderBy = "name" # SessionMetricDefinitionGroupSortKey | Sort Key (optional)
$Direction = "asc" # SortOrder | Sort direction (optional)
$Count = 56 # Int32 | Number of records to return (optional) (default to 100)
$Offset = 56 # Int32 | Start offset (optional) (default to 0)
$IncludeTotalCount = $true # Boolean | Include total number of records (optional) (default to $false)

# Get paginated list of user session metric group
try {
    $Result = Invoke-DataGetUserSessionMetricGroups -Filter $Filter -OrderBy $OrderBy -Direction $Direction -Count $Count -Offset $Offset -IncludeTotalCount $IncludeTotalCount
} catch {
    Write-Host ("Exception occurred when calling Invoke-DataGetUserSessionMetricGroups: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Filter** | **String**| Filter on group name or group description | [optional] 
 **OrderBy** | [**SessionMetricDefinitionGroupSortKey**](SessionMetricDefinitionGroupSortKey.md)| Sort Key | [optional] 
 **Direction** | [**SortOrder**](SortOrder.md)| Sort direction | [optional] 
 **Count** | **Int32**| Number of records to return | [optional] [default to 100]
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

<a id="Invoke-DataRemoveSessionMetricDefinitionGroupFromTests"></a>
# **Invoke-DataRemoveSessionMetricDefinitionGroupFromTests**
> void Invoke-DataRemoveSessionMetricDefinitionGroupFromTests<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RequestBody] <String[]><br>

Delete tests from environment

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

$GroupId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Session metric definition group id
$RequestBody = "MyRequestBody" # String[] | Test key list

# Delete tests from environment
try {
    $Result = Invoke-DataRemoveSessionMetricDefinitionGroupFromTests -GroupId $GroupId -RequestBody $RequestBody
} catch {
    Write-Host ("Exception occurred when calling Invoke-DataRemoveSessionMetricDefinitionGroupFromTests: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-DataUpdateUserSessionMetricGroup"></a>
# **Invoke-DataUpdateUserSessionMetricGroup**
> void Invoke-DataUpdateUserSessionMetricGroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SessionMetricDefinitionGroupUpdate] <PSCustomObject><br>

Update user session metric group

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

$GroupId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | User session metric group id
$SessionMetricDefinitionGroupUpdate = Initialize-LESessionMetricDefinitionGroupUpdate -Name "MyName" -Description "MyDescription" # SessionMetricDefinitionGroupUpdate | User session metric group data

# Update user session metric group
try {
    $Result = Invoke-DataUpdateUserSessionMetricGroup -GroupId $GroupId -SessionMetricDefinitionGroupUpdate $SessionMetricDefinitionGroupUpdate
} catch {
    Write-Host ("Exception occurred when calling Invoke-DataUpdateUserSessionMetricGroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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


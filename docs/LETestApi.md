# PSLoginEnterprise.PSLoginEnterprise\Api.LETestApi

All URIs are relative to */publicApi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-LEBulkDisableUpdate**](LETestApi.md#Invoke-LEBulkDisableUpdate) | **PATCH** /v7/tests/disable | Bulk disable tests
[**Invoke-LEBulkEnableUpdate**](LETestApi.md#Invoke-LEBulkEnableUpdate) | **PATCH** /v7/tests/enable | Bulk enable tests
[**Copy-LETest**](LETestApi.md#Copy-LETest) | **POST** /v7/tests/{testId}/copy | Copy test
[**New-LETest**](LETestApi.md#New-LETest) | **POST** /v7/tests | Create test
[**Invoke-LEDeleteTest**](LETestApi.md#Invoke-LEDeleteTest) | **DELETE** /v7/tests/{testId} | Delete test
[**Invoke-LEDeleteTests**](LETestApi.md#Invoke-LEDeleteTests) | **DELETE** /v7/tests | Delete multiple tests
[**Get-LEActiveTimeSlots**](LETestApi.md#Get-LEActiveTimeSlots) | **GET** /v7/tests/{testId}/active-time-slots | Get active time slots
[**Get-LETest**](LETestApi.md#Get-LETest) | **GET** /v7/tests/{testId} | Get test by id
[**Get-LETests**](LETestApi.md#Get-LETests) | **GET** /v7/tests | Get paginated list of tests
[**Get-LETestsByAccountGroup**](LETestApi.md#Get-LETestsByAccountGroup) | **GET** /v7/tests/account-groups/{groupId} | Get list of tests by account group
[**Get-LETestsByApplicationGroup**](LETestApi.md#Get-LETestsByApplicationGroup) | **GET** /v7/tests/application-groups/{groupId} | Get list of tests by application group
[**Get-LETestsByApplicationId**](LETestApi.md#Get-LETestsByApplicationId) | **GET** /v7/tests/applications/{applicationId} | Get all tests by application id
[**Get-LETestsByLauncherGroup**](LETestApi.md#Get-LETestsByLauncherGroup) | **GET** /v7/tests/launcher-groups/{groupId} | Get list of tests by launcher group
[**Start-LETest**](LETestApi.md#Start-LETest) | **PUT** /v7/tests/{testId}/start | Start test
[**Stop-LETest**](LETestApi.md#Stop-LETest) | **PUT** /v7/tests/{testId}/stop | Stop test
[**Update-LEActiveTimeSlots**](LETestApi.md#Update-LEActiveTimeSlots) | **PUT** /v7/tests/{testId}/active-time-slots | Update active time slots
[**Update-LETest**](LETestApi.md#Update-LETest) | **PUT** /v7/tests/{testId} | Update test


<a id="Invoke-LEBulkDisableUpdate"></a>
# **Invoke-LEBulkDisableUpdate**
> ContinuousTestBulkUpdateResponse Invoke-LEBulkDisableUpdate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RequestBody] <String[]><br>

Bulk disable tests

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

$RequestBody = "MyRequestBody" # String[] | 

# Bulk disable tests
try {
    $Result = Invoke-LEBulkDisableUpdate -RequestBody $RequestBody
} catch {
    Write-Host ("Exception occurred when calling Invoke-LEBulkDisableUpdate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RequestBody** | [**String[]**](String.md)|  | 

### Return type

[**ContinuousTestBulkUpdateResponse**](ContinuousTestBulkUpdateResponse.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-LEBulkEnableUpdate"></a>
# **Invoke-LEBulkEnableUpdate**
> ContinuousTestBulkUpdateResponse Invoke-LEBulkEnableUpdate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RequestBody] <String[]><br>

Bulk enable tests

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

$RequestBody = "MyRequestBody" # String[] | 

# Bulk enable tests
try {
    $Result = Invoke-LEBulkEnableUpdate -RequestBody $RequestBody
} catch {
    Write-Host ("Exception occurred when calling Invoke-LEBulkEnableUpdate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RequestBody** | [**String[]**](String.md)|  | 

### Return type

[**ContinuousTestBulkUpdateResponse**](ContinuousTestBulkUpdateResponse.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Copy-LETest"></a>
# **Copy-LETest**
> ObjectId Copy-LETest<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestCopy] <PSCustomObject><br>

Copy test

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

$TestId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Test id
$TestCopy = Initialize-LETestCopy -Name "MyName" # TestCopy | Object containing the Name of the new Test

# Copy test
try {
    $Result = Copy-LETest -TestId $TestId -TestCopy $TestCopy
} catch {
    Write-Host ("Exception occurred when calling Copy-LETest: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestId** | **String**| Test id | 
 **TestCopy** | [**TestCopy**](TestCopy.md)| Object containing the Name of the new Test | 

### Return type

[**ObjectId**](ObjectId.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="New-LETest"></a>
# **New-LETest**
> ObjectId New-LETest<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ConfigurationCreateTestRequest] <PSCustomObject><br>

Create test

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

$Resolution = Initialize-LEResolution -Width 0 -Height 0
$TargetHost = Initialize-LETargetHost -Enabled $false -Endpoint "MyEndpoint"
$TestCreateConnector = Initialize-LETestCreateConnector -Type "MyType" -VarHost "MyVarHost" -CommandLine "MyCommandLine" -Resource "MyResource" -ServerUrl "MyServerUrl" -DisplayResolution $Resolution -HostList $TargetHost -Gateway "MyGateway" -SuppressCertWarn $false

$ConfigurationCreateTestRequest = Initialize-LEConfigurationCreateTestRequest -Type "MyType" -Name "MyName" -Description "MyDescription" -Connector $TestCreateConnector -AccountGroups "MyAccountGroups" -LauncherGroups "MyLauncherGroups" -EnvironmentKey "MyEnvironmentKey" -ApplicationDebugModeEnabled $false -Roles "MyRoles" -SessionMetricsEnabled $false -SessionMetricScheduleRate 0 -SessionMetricGroupKey "MySessionMetricGroupKey" # ConfigurationCreateTestRequest | Test data

# Create test
try {
    $Result = New-LETest -ConfigurationCreateTestRequest $ConfigurationCreateTestRequest
} catch {
    Write-Host ("Exception occurred when calling New-LETest: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ConfigurationCreateTestRequest** | [**ConfigurationCreateTestRequest**](ConfigurationCreateTestRequest.md)| Test data | 

### Return type

[**ObjectId**](ObjectId.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-LEDeleteTest"></a>
# **Invoke-LEDeleteTest**
> void Invoke-LEDeleteTest<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestId] <String><br>

Delete test

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

$TestId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Test id

# Delete test
try {
    $Result = Invoke-LEDeleteTest -TestId $TestId
} catch {
    Write-Host ("Exception occurred when calling Invoke-LEDeleteTest: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestId** | **String**| Test id | 

### Return type

void (empty response body)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-LEDeleteTests"></a>
# **Invoke-LEDeleteTests**
> void Invoke-LEDeleteTests<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RequestBody] <String[]><br>

Delete multiple tests

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

$RequestBody = "MyRequestBody" # String[] | Test ids

# Delete multiple tests
try {
    $Result = Invoke-LEDeleteTests -RequestBody $RequestBody
} catch {
    Write-Host ("Exception occurred when calling Invoke-LEDeleteTests: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RequestBody** | [**String[]**](String.md)| Test ids | 

### Return type

void (empty response body)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-LEActiveTimeSlots"></a>
# **Get-LEActiveTimeSlots**
> ActiveTimeSlots Get-LEActiveTimeSlots<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestId] <String><br>

Get active time slots

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

$TestId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Test id

# Get active time slots
try {
    $Result = Get-LEActiveTimeSlots -TestId $TestId
} catch {
    Write-Host ("Exception occurred when calling Get-LEActiveTimeSlots: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestId** | **String**| Test id | 

### Return type

[**ActiveTimeSlots**](ActiveTimeSlots.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-LETest"></a>
# **Get-LETest**
> ConfigurationGetTest200Response Get-LETest<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Include] <PSCustomObject[]><br>

Get test by id

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

$TestId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Test id
$Include = "none" # TestInclude[] | Include options (optional)

# Get test by id
try {
    $Result = Get-LETest -TestId $TestId -Include $Include
} catch {
    Write-Host ("Exception occurred when calling Get-LETest: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestId** | **String**| Test id | 
 **Include** | [**TestInclude[]**](TestInclude.md)| Include options | [optional] 

### Return type

[**ConfigurationGetTest200Response**](ConfigurationGetTest200Response.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-LETests"></a>
# **Get-LETests**
> TestResultSet Get-LETests<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OrderBy] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Direction] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IncludeTotalCount] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestType] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Include] <PSCustomObject[]><br>

Get paginated list of tests

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

$OrderBy = "name" # TestSortKey | Sort Key
$Direction = "asc" # SortOrder | Sort direction
$Count = 56 # Int32 | Number of records to return (default to 100)
$Offset = 56 # Int32 | Start offset (optional) (default to 0)
$IncludeTotalCount = $true # Boolean | Include total number of records (optional) (default to $false)
$Filter = "MyFilter" # String | Filter on Test Name or Description of tests (optional)
$TestType = "applicationTest" # String | Test type (if null gets all) (optional)
$Include = "none" # TestInclude[] | include options (optional)

# Get paginated list of tests
try {
    $Result = Get-LETests -OrderBy $OrderBy -Direction $Direction -Count $Count -Offset $Offset -IncludeTotalCount $IncludeTotalCount -Filter $Filter -TestType $TestType -Include $Include
} catch {
    Write-Host ("Exception occurred when calling Get-LETests: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **OrderBy** | [**TestSortKey**](TestSortKey.md)| Sort Key | 
 **Direction** | [**SortOrder**](SortOrder.md)| Sort direction | 
 **Count** | **Int32**| Number of records to return | [default to 100]
 **Offset** | **Int32**| Start offset | [optional] [default to 0]
 **IncludeTotalCount** | **Boolean**| Include total number of records | [optional] [default to $false]
 **Filter** | **String**| Filter on Test Name or Description of tests | [optional] 
 **TestType** | **String**| Test type (if null gets all) | [optional] 
 **Include** | [**TestInclude[]**](TestInclude.md)| include options | [optional] 

### Return type

[**TestResultSet**](TestResultSet.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-LETestsByAccountGroup"></a>
# **Get-LETestsByAccountGroup**
> ConfigurationGetTest200Response[] Get-LETestsByAccountGroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestType] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Include] <PSCustomObject[]><br>

Get list of tests by account group

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

$GroupId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Account group id
$TestType = "applicationTest" # String | Test type (if null gets all) (optional)
$Include = "none" # TestInclude[] | include options (optional)

# Get list of tests by account group
try {
    $Result = Get-LETestsByAccountGroup -GroupId $GroupId -TestType $TestType -Include $Include
} catch {
    Write-Host ("Exception occurred when calling Get-LETestsByAccountGroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **GroupId** | **String**| Account group id | 
 **TestType** | **String**| Test type (if null gets all) | [optional] 
 **Include** | [**TestInclude[]**](TestInclude.md)| include options | [optional] 

### Return type

[**ConfigurationGetTest200Response[]**](ConfigurationGetTest200Response.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-LETestsByApplicationGroup"></a>
# **Get-LETestsByApplicationGroup**
> ConfigurationGetTest200Response[] Get-LETestsByApplicationGroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestType] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Include] <PSCustomObject[]><br>

Get list of tests by application group

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

$GroupId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Application group id
$TestType = "applicationTest" # String | Test type (if null gets all) (optional)
$Include = "none" # TestInclude[] | include options (optional)

# Get list of tests by application group
try {
    $Result = Get-LETestsByApplicationGroup -GroupId $GroupId -TestType $TestType -Include $Include
} catch {
    Write-Host ("Exception occurred when calling Get-LETestsByApplicationGroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **GroupId** | **String**| Application group id | 
 **TestType** | **String**| Test type (if null gets all) | [optional] 
 **Include** | [**TestInclude[]**](TestInclude.md)| include options | [optional] 

### Return type

[**ConfigurationGetTest200Response[]**](ConfigurationGetTest200Response.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-LETestsByApplicationId"></a>
# **Get-LETestsByApplicationId**
> ConfigurationGetTest200Response[] Get-LETestsByApplicationId<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ApplicationId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Include] <PSCustomObject[]><br>

Get all tests by application id

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

$ApplicationId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | ApplicationId id
$Include = "none" # TestInclude[] | Include options for test (optional)

# Get all tests by application id
try {
    $Result = Get-LETestsByApplicationId -ApplicationId $ApplicationId -Include $Include
} catch {
    Write-Host ("Exception occurred when calling Get-LETestsByApplicationId: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ApplicationId** | **String**| ApplicationId id | 
 **Include** | [**TestInclude[]**](TestInclude.md)| Include options for test | [optional] 

### Return type

[**ConfigurationGetTest200Response[]**](ConfigurationGetTest200Response.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-LETestsByLauncherGroup"></a>
# **Get-LETestsByLauncherGroup**
> ConfigurationGetTest200Response[] Get-LETestsByLauncherGroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestType] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Include] <PSCustomObject[]><br>

Get list of tests by launcher group

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

$GroupId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Launcher group id
$TestType = "applicationTest" # String | Test type (if null gets all) (optional)
$Include = "none" # TestInclude[] | include options (optional)

# Get list of tests by launcher group
try {
    $Result = Get-LETestsByLauncherGroup -GroupId $GroupId -TestType $TestType -Include $Include
} catch {
    Write-Host ("Exception occurred when calling Get-LETestsByLauncherGroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **GroupId** | **String**| Launcher group id | 
 **TestType** | **String**| Test type (if null gets all) | [optional] 
 **Include** | [**TestInclude[]**](TestInclude.md)| include options | [optional] 

### Return type

[**ConfigurationGetTest200Response[]**](ConfigurationGetTest200Response.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Start-LETest"></a>
# **Start-LETest**
> ObjectId Start-LETest<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartRequest] <PSCustomObject><br>

Start test

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

$TestId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Test id
$StartRequest = Initialize-LEStartRequest -Comment "MyComment" # StartRequest | Start-request data

# Start test
try {
    $Result = Start-LETest -TestId $TestId -StartRequest $StartRequest
} catch {
    Write-Host ("Exception occurred when calling Start-LETest: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestId** | **String**| Test id | 
 **StartRequest** | [**StartRequest**](StartRequest.md)| Start-request data | 

### Return type

[**ObjectId**](ObjectId.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Stop-LETest"></a>
# **Stop-LETest**
> void Stop-LETest<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestId] <String><br>

Stop test

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

$TestId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Test id

# Stop test
try {
    $Result = Stop-LETest -TestId $TestId
} catch {
    Write-Host ("Exception occurred when calling Stop-LETest: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestId** | **String**| Test id | 

### Return type

void (empty response body)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-LEActiveTimeSlots"></a>
# **Update-LEActiveTimeSlots**
> void Update-LEActiveTimeSlots<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ActiveTimeSlotsUpdate] <PSCustomObject><br>

Update active time slots

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

$TestId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Test id
$ActiveTimeSlotsUpdate = Initialize-LEActiveTimeSlotsUpdate -Mode "alwaysOn" -TimeSlots $false # ActiveTimeSlotsUpdate | active time slots update

# Update active time slots
try {
    $Result = Update-LEActiveTimeSlots -TestId $TestId -ActiveTimeSlotsUpdate $ActiveTimeSlotsUpdate
} catch {
    Write-Host ("Exception occurred when calling Update-LEActiveTimeSlots: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestId** | **String**| Test id | 
 **ActiveTimeSlotsUpdate** | [**ActiveTimeSlotsUpdate**](ActiveTimeSlotsUpdate.md)| active time slots update | 

### Return type

void (empty response body)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-LETest"></a>
# **Update-LETest**
> void Update-LETest<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ConfigurationUpdateTestRequest] <PSCustomObject><br>

Update test

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

$TestId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Test id
$Resolution = Initialize-LEResolution -Width 0 -Height 0
$TargetHost = Initialize-LETargetHost -Enabled $false -Endpoint "MyEndpoint"
$AppTestRunConfigurationSnapshotConnector = Initialize-LEAppTestRunConfigurationSnapshotConnector -Type "MyType" -VarHost "MyVarHost" -CommandLine "MyCommandLine" -Resource "MyResource" -ServerUrl "MyServerUrl" -DisplayResolution $Resolution -HostList $TargetHost -Gateway "MyGateway" -SuppressCertWarn $false

$ConnectionResourcesUpdate = Initialize-LEConnectionResourcesUpdate -Connector $AppTestRunConfigurationSnapshotConnector -LauncherGroups "MyLauncherGroups" -AccountGroups "MyAccountGroups"

$ConfigurationReplaceApplicationGroupStepsRequestInner = Initialize-LEConfigurationReplaceApplicationGroupStepsRequestInner -Type "MyType" -IsEnabled $false -ApplicationId "MyApplicationId" -RunOnce $false -LeaveRunning $false -DelayInSeconds 0 -ApplicationGroupId "MyApplicationGroupId"
$EuxWorkFolders = Initialize-LEEuxWorkFolders -EuxFolderPath "MyEuxFolderPath" -AppDataFolderPath "MyAppDataFolderPath" -MyDocumentsFolderPath "MyMyDocumentsFolderPath"
$ConfigurationUpdateTestRequest = Initialize-LEConfigurationUpdateTestRequest -Type "MyType" -Name "MyName" -Description "MyDescription" -ConnectionResourcesUpdate $ConnectionResourcesUpdate -EnvironmentKey "MyEnvironmentKey" -Steps $ConfigurationReplaceApplicationGroupStepsRequestInner -LogonTimeTrackingProcess "MyLogonTimeTrackingProcess" -EngineStartTimeout "MyEngineStartTimeout" -ApplicationDebugModeEnabled $false -IsEmailEnabled $false -EmailRecipient "MyEmailRecipient" -IncludeSuccessfulApplications $false -RestartOnComplete $false -NumberOfSessions 0 -RampUpDurationInMinutes 0 -TestDurationInMinutes 0 -EuxEnabled $false -EuxWorkFolders $EuxWorkFolders -SessionMetricsEnabled $false -SessionMetricScheduleRate 0 -SessionMetricGroupKey "MySessionMetricGroupKey" -ScheduleType "desktop" -IntervalInMinutes 0 -EnableCustomScreenshots $false -RepeatCount 0 -IsRepeatEnabled $false -IsEnabled $false # ConfigurationUpdateTestRequest | Test data

# Update test
try {
    $Result = Update-LETest -TestId $TestId -ConfigurationUpdateTestRequest $ConfigurationUpdateTestRequest
} catch {
    Write-Host ("Exception occurred when calling Update-LETest: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestId** | **String**| Test id | 
 **ConfigurationUpdateTestRequest** | [**ConfigurationUpdateTestRequest**](ConfigurationUpdateTestRequest.md)| Test data | 

### Return type

void (empty response body)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


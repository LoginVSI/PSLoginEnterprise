# PSLoginEnterprise.PSLoginEnterprise\Api.TestApi

All URIs are relative to */publicApi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-ConfigurationBulkDisableUpdate**](TestApi.md#Invoke-ConfigurationBulkDisableUpdate) | **PATCH** /v7/tests/disable | Bulk disable tests
[**Invoke-ConfigurationBulkEnableUpdate**](TestApi.md#Invoke-ConfigurationBulkEnableUpdate) | **PATCH** /v7/tests/enable | Bulk enable tests
[**Invoke-ConfigurationCopyTest**](TestApi.md#Invoke-ConfigurationCopyTest) | **POST** /v7/tests/{testId}/copy | Copy test
[**Invoke-ConfigurationCreateTest**](TestApi.md#Invoke-ConfigurationCreateTest) | **POST** /v7/tests | Create test
[**Invoke-ConfigurationDeleteTest**](TestApi.md#Invoke-ConfigurationDeleteTest) | **DELETE** /v7/tests/{testId} | Delete test
[**Invoke-ConfigurationDeleteTests**](TestApi.md#Invoke-ConfigurationDeleteTests) | **DELETE** /v7/tests | Delete multiple tests
[**Invoke-ConfigurationGetActiveTimeSlots**](TestApi.md#Invoke-ConfigurationGetActiveTimeSlots) | **GET** /v7/tests/{testId}/active-time-slots | Get active time slots
[**Invoke-ConfigurationGetTest**](TestApi.md#Invoke-ConfigurationGetTest) | **GET** /v7/tests/{testId} | Get test by id
[**Invoke-ConfigurationGetTests**](TestApi.md#Invoke-ConfigurationGetTests) | **GET** /v7/tests | Get paginated list of tests
[**Invoke-ConfigurationGetTestsByAccountGroup**](TestApi.md#Invoke-ConfigurationGetTestsByAccountGroup) | **GET** /v7/tests/account-groups/{groupId} | Get list of tests by account group
[**Invoke-ConfigurationGetTestsByApplicationGroup**](TestApi.md#Invoke-ConfigurationGetTestsByApplicationGroup) | **GET** /v7/tests/application-groups/{groupId} | Get list of tests by application group
[**Invoke-ConfigurationGetTestsByApplicationId**](TestApi.md#Invoke-ConfigurationGetTestsByApplicationId) | **GET** /v7/tests/applications/{applicationId} | Get all tests by application id
[**Invoke-ConfigurationGetTestsByLauncherGroup**](TestApi.md#Invoke-ConfigurationGetTestsByLauncherGroup) | **GET** /v7/tests/launcher-groups/{groupId} | Get list of tests by launcher group
[**Invoke-ConfigurationStartTest**](TestApi.md#Invoke-ConfigurationStartTest) | **PUT** /v7/tests/{testId}/start | Start test
[**Invoke-ConfigurationStopTest**](TestApi.md#Invoke-ConfigurationStopTest) | **PUT** /v7/tests/{testId}/stop | Stop test
[**Invoke-ConfigurationUpdateActiveTimeSlots**](TestApi.md#Invoke-ConfigurationUpdateActiveTimeSlots) | **PUT** /v7/tests/{testId}/active-time-slots | Update active time slots
[**Invoke-ConfigurationUpdateTest**](TestApi.md#Invoke-ConfigurationUpdateTest) | **PUT** /v7/tests/{testId} | Update test


<a id="Invoke-ConfigurationBulkDisableUpdate"></a>
# **Invoke-ConfigurationBulkDisableUpdate**
> ContinuousTestBulkUpdateResponse Invoke-ConfigurationBulkDisableUpdate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RequestBody] <String[]><br>

Bulk disable tests

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

$RequestBody = "MyRequestBody" # String[] | 

# Bulk disable tests
try {
    $Result = Invoke-ConfigurationBulkDisableUpdate -RequestBody $RequestBody
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationBulkDisableUpdate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-ConfigurationBulkEnableUpdate"></a>
# **Invoke-ConfigurationBulkEnableUpdate**
> ContinuousTestBulkUpdateResponse Invoke-ConfigurationBulkEnableUpdate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RequestBody] <String[]><br>

Bulk enable tests

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

$RequestBody = "MyRequestBody" # String[] | 

# Bulk enable tests
try {
    $Result = Invoke-ConfigurationBulkEnableUpdate -RequestBody $RequestBody
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationBulkEnableUpdate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-ConfigurationCopyTest"></a>
# **Invoke-ConfigurationCopyTest**
> ObjectId Invoke-ConfigurationCopyTest<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestCopy] <PSCustomObject><br>

Copy test

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

$TestId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Test id
$TestCopy = Initialize-LETestCopy -Name "MyName" # TestCopy | Object containing the Name of the new Test

# Copy test
try {
    $Result = Invoke-ConfigurationCopyTest -TestId $TestId -TestCopy $TestCopy
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationCopyTest: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-ConfigurationCreateTest"></a>
# **Invoke-ConfigurationCreateTest**
> ObjectId Invoke-ConfigurationCreateTest<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ConfigurationCreateTestRequest] <PSCustomObject><br>

Create test

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

$Resolution = Initialize-LEResolution -Width 0 -Height 0
$TargetHost = Initialize-LETargetHost -Enabled $false -Endpoint "MyEndpoint"
$TestCreateConnector = Initialize-LETestCreateConnector -Type "MyType" -VarHost "MyVarHost" -CommandLine "MyCommandLine" -Resource "MyResource" -ServerUrl "MyServerUrl" -DisplayResolution $Resolution -SeamlessMode $false -HostList $TargetHost -Gateway "MyGateway" -SuppressCertWarn $false -CloudPcTitleField "MyCloudPcTitleField" -TotpSecretSecureField "MyTotpSecretSecureField" -TimeoutSeconds 0 -TotpTimeStep 0 -TotpDigits 0 -TotpAlgorithm "MyTotpAlgorithm"

$ConfigurationCreateTestRequest = Initialize-LEConfigurationCreateTestRequest -Type "MyType" -Name "MyName" -Description "MyDescription" -Connector $TestCreateConnector -AccountGroups "MyAccountGroups" -LauncherGroups "MyLauncherGroups" -EnvironmentKey "MyEnvironmentKey" -ApplicationDebugModeEnabled $false -Roles "MyRoles" -SessionMetricsEnabled $false -SessionMetricScheduleRate 0 -SessionMetricGroupKey "MySessionMetricGroupKey" # ConfigurationCreateTestRequest | Test data

# Create test
try {
    $Result = Invoke-ConfigurationCreateTest -ConfigurationCreateTestRequest $ConfigurationCreateTestRequest
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationCreateTest: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-ConfigurationDeleteTest"></a>
# **Invoke-ConfigurationDeleteTest**
> void Invoke-ConfigurationDeleteTest<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestId] <String><br>

Delete test

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

$TestId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Test id

# Delete test
try {
    $Result = Invoke-ConfigurationDeleteTest -TestId $TestId
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationDeleteTest: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-ConfigurationDeleteTests"></a>
# **Invoke-ConfigurationDeleteTests**
> void Invoke-ConfigurationDeleteTests<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RequestBody] <String[]><br>

Delete multiple tests

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

$RequestBody = "MyRequestBody" # String[] | Test ids

# Delete multiple tests
try {
    $Result = Invoke-ConfigurationDeleteTests -RequestBody $RequestBody
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationDeleteTests: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-ConfigurationGetActiveTimeSlots"></a>
# **Invoke-ConfigurationGetActiveTimeSlots**
> ActiveTimeSlots Invoke-ConfigurationGetActiveTimeSlots<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestId] <String><br>

Get active time slots

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

$TestId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Test id

# Get active time slots
try {
    $Result = Invoke-ConfigurationGetActiveTimeSlots -TestId $TestId
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationGetActiveTimeSlots: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-ConfigurationGetTest"></a>
# **Invoke-ConfigurationGetTest**
> ConfigurationGetTest200Response Invoke-ConfigurationGetTest<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Include] <PSCustomObject[]><br>

Get test by id

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

$TestId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Test id
$Include = "none" # TestInclude[] | Include options (optional)

# Get test by id
try {
    $Result = Invoke-ConfigurationGetTest -TestId $TestId -Include $Include
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationGetTest: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-ConfigurationGetTests"></a>
# **Invoke-ConfigurationGetTests**
> TestResultSet Invoke-ConfigurationGetTests<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OrderBy] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Direction] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Int32]><br>
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

# $applianceName = "YOUR_APPLIANCE_HOSTNAME"
$bearerToken = @{"Authorization"="Bearer $accessToken"}
Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken
""

$OrderBy = "name" # TestSortKey | Sort Key (optional)
$Direction = "asc" # SortOrder | Sort direction (optional)
$Count = 56 # Int32 | Number of records to return (optional) (default to 100)
$Offset = 56 # Int32 | Start offset (optional) (default to 0)
$IncludeTotalCount = $true # Boolean | Include total number of records (optional) (default to $false)
$Filter = "MyFilter" # String | Filter on Test Name or Description of tests (optional)
$TestType = "applicationTest" # String | Test type (if null gets all) (optional)
$Include = "none" # TestInclude[] | include options (optional)

# Get paginated list of tests
try {
    $Result = Invoke-ConfigurationGetTests -OrderBy $OrderBy -Direction $Direction -Count $Count -Offset $Offset -IncludeTotalCount $IncludeTotalCount -Filter $Filter -TestType $TestType -Include $Include
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationGetTests: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **OrderBy** | [**TestSortKey**](TestSortKey.md)| Sort Key | [optional] 
 **Direction** | [**SortOrder**](SortOrder.md)| Sort direction | [optional] 
 **Count** | **Int32**| Number of records to return | [optional] [default to 100]
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

<a id="Invoke-ConfigurationGetTestsByAccountGroup"></a>
# **Invoke-ConfigurationGetTestsByAccountGroup**
> ConfigurationGetTest200Response[] Invoke-ConfigurationGetTestsByAccountGroup<br>
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

# $applianceName = "YOUR_APPLIANCE_HOSTNAME"
$bearerToken = @{"Authorization"="Bearer $accessToken"}
Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken
""

$GroupId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Account group id
$TestType = "applicationTest" # String | Test type (if null gets all) (optional)
$Include = "none" # TestInclude[] | include options (optional)

# Get list of tests by account group
try {
    $Result = Invoke-ConfigurationGetTestsByAccountGroup -GroupId $GroupId -TestType $TestType -Include $Include
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationGetTestsByAccountGroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-ConfigurationGetTestsByApplicationGroup"></a>
# **Invoke-ConfigurationGetTestsByApplicationGroup**
> ConfigurationGetTest200Response[] Invoke-ConfigurationGetTestsByApplicationGroup<br>
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

# $applianceName = "YOUR_APPLIANCE_HOSTNAME"
$bearerToken = @{"Authorization"="Bearer $accessToken"}
Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken
""

$GroupId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Application group id
$TestType = "applicationTest" # String | Test type (if null gets all) (optional)
$Include = "none" # TestInclude[] | include options (optional)

# Get list of tests by application group
try {
    $Result = Invoke-ConfigurationGetTestsByApplicationGroup -GroupId $GroupId -TestType $TestType -Include $Include
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationGetTestsByApplicationGroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-ConfigurationGetTestsByApplicationId"></a>
# **Invoke-ConfigurationGetTestsByApplicationId**
> ConfigurationGetTest200Response[] Invoke-ConfigurationGetTestsByApplicationId<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ApplicationId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Include] <PSCustomObject[]><br>

Get all tests by application id

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

$ApplicationId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | ApplicationId id
$Include = "none" # TestInclude[] | Include options for test (optional)

# Get all tests by application id
try {
    $Result = Invoke-ConfigurationGetTestsByApplicationId -ApplicationId $ApplicationId -Include $Include
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationGetTestsByApplicationId: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-ConfigurationGetTestsByLauncherGroup"></a>
# **Invoke-ConfigurationGetTestsByLauncherGroup**
> ConfigurationGetTest200Response[] Invoke-ConfigurationGetTestsByLauncherGroup<br>
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

# $applianceName = "YOUR_APPLIANCE_HOSTNAME"
$bearerToken = @{"Authorization"="Bearer $accessToken"}
Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken
""

$GroupId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Launcher group id
$TestType = "applicationTest" # String | Test type (if null gets all) (optional)
$Include = "none" # TestInclude[] | include options (optional)

# Get list of tests by launcher group
try {
    $Result = Invoke-ConfigurationGetTestsByLauncherGroup -GroupId $GroupId -TestType $TestType -Include $Include
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationGetTestsByLauncherGroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-ConfigurationStartTest"></a>
# **Invoke-ConfigurationStartTest**
> ObjectId Invoke-ConfigurationStartTest<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartRequest] <PSCustomObject><br>

Start test

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

$TestId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Test id
$StartRequest = Initialize-LEStartRequest -Comment "MyComment" # StartRequest | Start-request data

# Start test
try {
    $Result = Invoke-ConfigurationStartTest -TestId $TestId -StartRequest $StartRequest
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationStartTest: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-ConfigurationStopTest"></a>
# **Invoke-ConfigurationStopTest**
> void Invoke-ConfigurationStopTest<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestId] <String><br>

Stop test

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

$TestId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Test id

# Stop test
try {
    $Result = Invoke-ConfigurationStopTest -TestId $TestId
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationStopTest: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-ConfigurationUpdateActiveTimeSlots"></a>
# **Invoke-ConfigurationUpdateActiveTimeSlots**
> void Invoke-ConfigurationUpdateActiveTimeSlots<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ActiveTimeSlotsUpdate] <PSCustomObject><br>

Update active time slots

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

$TestId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Test id
$ActiveTimeSlotsUpdate = Initialize-LEActiveTimeSlotsUpdate -Mode "alwaysOn" -TimeSlots $false # ActiveTimeSlotsUpdate | active time slots update

# Update active time slots
try {
    $Result = Invoke-ConfigurationUpdateActiveTimeSlots -TestId $TestId -ActiveTimeSlotsUpdate $ActiveTimeSlotsUpdate
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationUpdateActiveTimeSlots: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-ConfigurationUpdateTest"></a>
# **Invoke-ConfigurationUpdateTest**
> void Invoke-ConfigurationUpdateTest<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ConfigurationUpdateTestRequest] <PSCustomObject><br>

Update test

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

$TestId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Test id
$Resolution = Initialize-LEResolution -Width 0 -Height 0
$TargetHost = Initialize-LETargetHost -Enabled $false -Endpoint "MyEndpoint"
$AppTestRunConfigurationSnapshotConnector = Initialize-LEAppTestRunConfigurationSnapshotConnector -Type "MyType" -VarHost "MyVarHost" -CommandLine "MyCommandLine" -Resource "MyResource" -ServerUrl "MyServerUrl" -DisplayResolution $Resolution -SeamlessMode $false -HostList $TargetHost -Gateway "MyGateway" -SuppressCertWarn $false -CloudPcTitleField "MyCloudPcTitleField" -TotpSecretSecureField "MyTotpSecretSecureField" -TimeoutSeconds 0 -TotpTimeStep 0 -TotpDigits 0 -TotpAlgorithm "MyTotpAlgorithm"

$ConnectionResourcesUpdate = Initialize-LEConnectionResourcesUpdate -Connector $AppTestRunConfigurationSnapshotConnector -LauncherGroups "MyLauncherGroups" -AccountGroups "MyAccountGroups"

$ConfigurationReplaceApplicationGroupStepsRequestInner = Initialize-LEConfigurationReplaceApplicationGroupStepsRequestInner -Type "MyType" -IsEnabled $false -ApplicationId "MyApplicationId" -RunOnce $false -LeaveRunning $false -DelayInSeconds 0 -ApplicationGroupId "MyApplicationGroupId"
$EuxWorkFolders = Initialize-LEEuxWorkFolders -EuxFolderPath "MyEuxFolderPath" -AppDataFolderPath "MyAppDataFolderPath" -MyDocumentsFolderPath "MyMyDocumentsFolderPath"
$ConfigurationUpdateTestRequest = Initialize-LEConfigurationUpdateTestRequest -Type "MyType" -Name "MyName" -Description "MyDescription" -ConnectionResourcesUpdate $ConnectionResourcesUpdate -EnvironmentKey "MyEnvironmentKey" -Steps $ConfigurationReplaceApplicationGroupStepsRequestInner -LogonTimeTrackingProcess "MyLogonTimeTrackingProcess" -EngineStartTimeout "MyEngineStartTimeout" -ApplicationDebugModeEnabled $false -IsEmailEnabled $false -EmailRecipient "MyEmailRecipient" -IncludeSuccessfulApplications $false -RestartOnComplete $false -NumberOfSessions 0 -RampUpDurationInMinutes 0 -TestDurationInMinutes 0 -EuxEnabled $false -EuxWorkFolders $EuxWorkFolders -SessionMetricsEnabled $false -SessionMetricScheduleRate 0 -SessionMetricGroupKey "MySessionMetricGroupKey" -ScheduleType "desktop" -IntervalInMinutes 0 -EnableCustomScreenshots $false -RepeatCount 0 -IsRepeatEnabled $false -IsEnabled $false # ConfigurationUpdateTestRequest | Test data

# Update test
try {
    $Result = Invoke-ConfigurationUpdateTest -TestId $TestId -ConfigurationUpdateTestRequest $ConfigurationUpdateTestRequest
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationUpdateTest: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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


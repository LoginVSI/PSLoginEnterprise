# PSLoginEnterprise.PSLoginEnterprise\Api.LEEnvironmentApi

All URIs are relative to */publicApi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-LETestEnvironment**](LEEnvironmentApi.md#Get-LETestEnvironment) | **GET** /v6/tests/{testId}/environment | Get test-environment by id
[**Update-LETestEnvironment**](LEEnvironmentApi.md#Update-LETestEnvironment) | **PUT** /v6/tests/{testId}/environment | Update test-environment


<a id="Get-LETestEnvironment"></a>
# **Get-LETestEnvironment**
> Environment Get-LETestEnvironment<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestId] <String><br>

Get test-environment by id

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-LEConfiguration

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure API key authorization: Bearer
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"

$TestId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Test id

# Get test-environment by id
try {
    $Result = Get-LETestEnvironment -TestId $TestId
} catch {
    Write-Host ("Exception occurred when calling Get-LETestEnvironment: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestId** | **String**| Test id | 

### Return type

[**Environment**](Environment.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-LETestEnvironment"></a>
# **Update-LETestEnvironment**
> void Update-LETestEnvironment<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EnvironmentUpdate] <PSCustomObject><br>

Update test-environment

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-LEConfiguration

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure API key authorization: Bearer
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"

$TestId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Test id
$Resolution = Initialize-LEResolution -Width 0 -Height 0
$TargetHost = Initialize-LETargetHost -Enabled $false -Endpoint "MyEndpoint"
$EnvironmentUpdateConnector = Initialize-LEEnvironmentUpdateConnector -Type "MyType" -VarHost "MyVarHost" -CommandLine "MyCommandLine" -Resource "MyResource" -ServerUrl "MyServerUrl" -DisplayResolution $Resolution -HostList $TargetHost -Gateway "MyGateway" -SuppressCertWarn $false

$EnvironmentUpdate = Initialize-LEEnvironmentUpdate -Connector $EnvironmentUpdateConnector -LauncherGroups "MyLauncherGroups" -AccountGroups "MyAccountGroups" # EnvironmentUpdate | Test-environment data

# Update test-environment
try {
    $Result = Update-LETestEnvironment -TestId $TestId -EnvironmentUpdate $EnvironmentUpdate
} catch {
    Write-Host ("Exception occurred when calling Update-LETestEnvironment: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestId** | **String**| Test id | 
 **EnvironmentUpdate** | [**EnvironmentUpdate**](EnvironmentUpdate.md)| Test-environment data | 

### Return type

void (empty response body)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


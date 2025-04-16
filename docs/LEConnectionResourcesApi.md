# PSLoginEnterprise.PSLoginEnterprise\Api.LEConnectionResourcesApi

All URIs are relative to */publicApi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-LEConnectionResources**](LEConnectionResourcesApi.md#Get-LEConnectionResources) | **GET** /v7/tests/{testId}/connection-resources | Get connection resources by test-id
[**Update-LEConnectionResources**](LEConnectionResourcesApi.md#Update-LEConnectionResources) | **PUT** /v7/tests/{testId}/connection-resources | Update connection resources for a given test


<a id="Get-LEConnectionResources"></a>
# **Get-LEConnectionResources**
> ConnectionResources Get-LEConnectionResources<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestId] <String><br>

Get connection resources by test-id

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

$TestId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Test id

# Get connection resources by test-id
try {
    $Result = Get-LEConnectionResources -TestId $TestId
} catch {
    Write-Host ("Exception occurred when calling Get-LEConnectionResources: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestId** | **String**| Test id | 

### Return type

[**ConnectionResources**](ConnectionResources.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-LEConnectionResources"></a>
# **Update-LEConnectionResources**
> void Update-LEConnectionResources<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ConnectionResourcesUpdate] <PSCustomObject><br>

Update connection resources for a given test

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

$TestId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Test id
$Resolution = Initialize-LEResolution -Width 0 -Height 0
$TargetHost = Initialize-LETargetHost -Enabled $false -Endpoint "MyEndpoint"
$AppTestRunConfigurationSnapshotConnector = Initialize-LEAppTestRunConfigurationSnapshotConnector -Type "MyType" -VarHost "MyVarHost" -CommandLine "MyCommandLine" -Resource "MyResource" -ServerUrl "MyServerUrl" -DisplayResolution $Resolution -HostList $TargetHost -Gateway "MyGateway" -SuppressCertWarn $false

$ConnectionResourcesUpdate = Initialize-LEConnectionResourcesUpdate -Connector $AppTestRunConfigurationSnapshotConnector -LauncherGroups "MyLauncherGroups" -AccountGroups "MyAccountGroups" # ConnectionResourcesUpdate | Connection resources data

# Update connection resources for a given test
try {
    $Result = Update-LEConnectionResources -TestId $TestId -ConnectionResourcesUpdate $ConnectionResourcesUpdate
} catch {
    Write-Host ("Exception occurred when calling Update-LEConnectionResources: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestId** | **String**| Test id | 
 **ConnectionResourcesUpdate** | [**ConnectionResourcesUpdate**](ConnectionResourcesUpdate.md)| Connection resources data | 

### Return type

void (empty response body)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


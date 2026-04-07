# PSLoginEnterprise.PSLoginEnterprise\Api.StatisticApi

All URIs are relative to */publicApi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-DataGetApplicationDiagnostics**](StatisticApi.md#Invoke-DataGetApplicationDiagnostics) | **GET** /v7/tests/{testId}/application-diagnostics | Get application diagnostics by test id
[**Invoke-DataGetContinuousTestDiagnostic**](StatisticApi.md#Invoke-DataGetContinuousTestDiagnostic) | **GET** /v7/tests/{testId}/test-diagnostics | Get continuous test diagnostic by test id
[**Invoke-DataGetContinuousTestDiagnostics**](StatisticApi.md#Invoke-DataGetContinuousTestDiagnostics) | **GET** /v7/test-diagnostics | Get continuous test diagnostics


<a id="Invoke-DataGetApplicationDiagnostics"></a>
# **Invoke-DataGetApplicationDiagnostics**
> ApplicationDiagnostic[] Invoke-DataGetApplicationDiagnostics<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TimeRange] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LocationId] <System.Nullable[Int32]><br>

Get application diagnostics by test id

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
$TimeRange = "last15Minutes" # TimeRange | Time range (optional)
$LocationId = 56 # Int32 | Location id (optional)

# Get application diagnostics by test id
try {
    $Result = Invoke-DataGetApplicationDiagnostics -TestId $TestId -TimeRange $TimeRange -LocationId $LocationId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DataGetApplicationDiagnostics: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestId** | **String**| Test id | 
 **TimeRange** | [**TimeRange**](TimeRange.md)| Time range | [optional] 
 **LocationId** | **Int32**| Location id | [optional] 

### Return type

[**ApplicationDiagnostic[]**](ApplicationDiagnostic.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DataGetContinuousTestDiagnostic"></a>
# **Invoke-DataGetContinuousTestDiagnostic**
> TestDiagnostic Invoke-DataGetContinuousTestDiagnostic<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TimeRange] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LocationId] <System.Nullable[Int32]><br>

Get continuous test diagnostic by test id

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
$TimeRange = "last15Minutes" # TimeRange | Time range (optional)
$LocationId = 56 # Int32 | Location id (optional)

# Get continuous test diagnostic by test id
try {
    $Result = Invoke-DataGetContinuousTestDiagnostic -TestId $TestId -TimeRange $TimeRange -LocationId $LocationId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DataGetContinuousTestDiagnostic: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestId** | **String**| Test id | 
 **TimeRange** | [**TimeRange**](TimeRange.md)| Time range | [optional] 
 **LocationId** | **Int32**| Location id | [optional] 

### Return type

[**TestDiagnostic**](TestDiagnostic.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DataGetContinuousTestDiagnostics"></a>
# **Invoke-DataGetContinuousTestDiagnostics**
> TestDiagnostic[] Invoke-DataGetContinuousTestDiagnostics<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TimeRange] <PSCustomObject><br>

Get continuous test diagnostics

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

$TimeRange = "last15Minutes" # TimeRange | Time range (optional)

# Get continuous test diagnostics
try {
    $Result = Invoke-DataGetContinuousTestDiagnostics -TimeRange $TimeRange
} catch {
    Write-Host ("Exception occurred when calling Invoke-DataGetContinuousTestDiagnostics: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TimeRange** | [**TimeRange**](TimeRange.md)| Time range | [optional] 

### Return type

[**TestDiagnostic[]**](TestDiagnostic.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


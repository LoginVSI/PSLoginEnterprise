# PSLoginEnterprise.PSLoginEnterprise\Api.LETestRunApi

All URIs are relative to */publicApi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-LEEuxAggregatedPerHourResults**](LETestRunApi.md#Get-LEEuxAggregatedPerHourResults) | **GET** /v6/test-runs/{testRunId}/aggregated-eux-results | Get the eux results for a load test-run or continuous test collected within the &quot;&quot;from&quot;&quot; and &quot;&quot;to&quot;&quot; parameters,  and aggregate them per hour.
[**Get-LEEuxResults**](LETestRunApi.md#Get-LEEuxResults) | **GET** /v6/test-runs/{testRunId}/eux-results | Get eux-results for a given Load test-run and Continuous test-run
[**Get-LEEuxScriptExecutions**](LETestRunApi.md#Get-LEEuxScriptExecutions) | **GET** /v6/test-runs/{testRunId}/eux-script-executions | Get eux-script-executions (raw-data) for a given Load test-run and Continuous test-run
[**Get-LEEuxTimerAggregatedPerHourResults**](LETestRunApi.md#Get-LEEuxTimerAggregatedPerHourResults) | **GET** /v6/test-runs/{testRunId}/aggregated-eux-timer-results | Get the eux timer results for a load test-run or continuous test collected within the &quot;&quot;from&quot;&quot; and &quot;&quot;to&quot;&quot; parameters,  and aggregate them per hour.
[**Get-LEEuxTimerResults**](LETestRunApi.md#Get-LEEuxTimerResults) | **GET** /v6/test-runs/{testRunId}/eux-timer-results | Get eux-timer-results for a given Load test-run and Continuous test-run
[**Get-LELoadTestRunStatistics**](LETestRunApi.md#Get-LELoadTestRunStatistics) | **GET** /v6/test-runs/{testRunId}/statistics | Get Statistics results for a given Load test-run
[**Get-LETestRun**](LETestRunApi.md#Get-LETestRun) | **GET** /v6/test-runs/{testRunId} | Get test-run by id
[**Get-LETestRuns**](LETestRunApi.md#Get-LETestRuns) | **GET** /v6/tests/{testId}/test-runs | Get paginated list of test-runs


<a id="Get-LEEuxAggregatedPerHourResults"></a>
# **Get-LEEuxAggregatedPerHourResults**
> EuxResultsPerHour[] Get-LEEuxAggregatedPerHourResults<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestRunId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-From] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-To] <System.Nullable[System.DateTime]><br>

Get the eux results for a load test-run or continuous test collected within the ""from"" and ""to"" parameters,  and aggregate them per hour.

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

$TestRunId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Test-run id
$From = (Get-Date) # System.DateTime | Include aggregated EuxResults where Timestamp is greater than the specified date-time (optional) (optional)
$To = (Get-Date) # System.DateTime | Include aggregated EuxResults where Timestamp is less than the specified date-time (optional) (optional)

# Get the eux results for a load test-run or continuous test collected within the ""from"" and ""to"" parameters,  and aggregate them per hour.
try {
    $Result = Get-LEEuxAggregatedPerHourResults -TestRunId $TestRunId -From $From -To $To
} catch {
    Write-Host ("Exception occurred when calling Get-LEEuxAggregatedPerHourResults: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestRunId** | **String**| Test-run id | 
 **From** | **System.DateTime**| Include aggregated EuxResults where Timestamp is greater than the specified date-time (optional) | [optional] 
 **To** | **System.DateTime**| Include aggregated EuxResults where Timestamp is less than the specified date-time (optional) | [optional] 

### Return type

[**EuxResultsPerHour[]**](EuxResultsPerHour.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-LEEuxResults"></a>
# **Get-LEEuxResults**
> EuxResult[] Get-LEEuxResults<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestRunId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-From] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-To] <System.Nullable[System.DateTime]><br>

Get eux-results for a given Load test-run and Continuous test-run

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

$TestRunId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Test-run id
$From = (Get-Date) # System.DateTime | Include EuxResults where Timestamp is greater than the specified date-time (optional) (optional)
$To = (Get-Date) # System.DateTime | Include EuxResults where Timestamp is less than the specified date-time (optional) (optional)

# Get eux-results for a given Load test-run and Continuous test-run
try {
    $Result = Get-LEEuxResults -TestRunId $TestRunId -From $From -To $To
} catch {
    Write-Host ("Exception occurred when calling Get-LEEuxResults: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestRunId** | **String**| Test-run id | 
 **From** | **System.DateTime**| Include EuxResults where Timestamp is greater than the specified date-time (optional) | [optional] 
 **To** | **System.DateTime**| Include EuxResults where Timestamp is less than the specified date-time (optional) | [optional] 

### Return type

[**EuxResult[]**](EuxResult.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-LEEuxScriptExecutions"></a>
# **Get-LEEuxScriptExecutions**
> EuxScriptExecutionResultSet Get-LEEuxScriptExecutions<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestRunId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>

Get eux-script-executions (raw-data) for a given Load test-run and Continuous test-run

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

$TestRunId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Test-run id
$Count = 56 # Int32 | Number of records to return (optional) (default to 1000)
$Offset = 56 # Int32 | Start offset (optional) (default to 0)

# Get eux-script-executions (raw-data) for a given Load test-run and Continuous test-run
try {
    $Result = Get-LEEuxScriptExecutions -TestRunId $TestRunId -Count $Count -Offset $Offset
} catch {
    Write-Host ("Exception occurred when calling Get-LEEuxScriptExecutions: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestRunId** | **String**| Test-run id | 
 **Count** | **Int32**| Number of records to return | [optional] [default to 1000]
 **Offset** | **Int32**| Start offset | [optional] [default to 0]

### Return type

[**EuxScriptExecutionResultSet**](EuxScriptExecutionResultSet.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-LEEuxTimerAggregatedPerHourResults"></a>
# **Get-LEEuxTimerAggregatedPerHourResults**
> EuxTimerResultsPerHour[] Get-LEEuxTimerAggregatedPerHourResults<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestRunId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EuxTimer] <PSCustomObject[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-From] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-To] <System.Nullable[System.DateTime]><br>

Get the eux timer results for a load test-run or continuous test collected within the ""from"" and ""to"" parameters,  and aggregate them per hour.

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

$TestRunId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Test-run id
$EuxTimer = "paintStart" # EuxTimer[] |  (optional)
$From = (Get-Date) # System.DateTime | Include aggregated EuxTimerResults where Timestamp is greater than the specified date-time (optional) (optional)
$To = (Get-Date) # System.DateTime | Include aggregated EuxTimerResults where Timestamp is less than the specified date-time (optional) (optional)

# Get the eux timer results for a load test-run or continuous test collected within the ""from"" and ""to"" parameters,  and aggregate them per hour.
try {
    $Result = Get-LEEuxTimerAggregatedPerHourResults -TestRunId $TestRunId -EuxTimer $EuxTimer -From $From -To $To
} catch {
    Write-Host ("Exception occurred when calling Get-LEEuxTimerAggregatedPerHourResults: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestRunId** | **String**| Test-run id | 
 **EuxTimer** | [**EuxTimer[]**](EuxTimer.md)|  | [optional] 
 **From** | **System.DateTime**| Include aggregated EuxTimerResults where Timestamp is greater than the specified date-time (optional) | [optional] 
 **To** | **System.DateTime**| Include aggregated EuxTimerResults where Timestamp is less than the specified date-time (optional) | [optional] 

### Return type

[**EuxTimerResultsPerHour[]**](EuxTimerResultsPerHour.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-LEEuxTimerResults"></a>
# **Get-LEEuxTimerResults**
> EuxTimerResult[] Get-LEEuxTimerResults<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestRunId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EuxTimer] <PSCustomObject[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-From] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-To] <System.Nullable[System.DateTime]><br>

Get eux-timer-results for a given Load test-run and Continuous test-run

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

$TestRunId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Test-run id
$EuxTimer = "paintStart" # EuxTimer[] |  (optional)
$From = (Get-Date) # System.DateTime | Include EuxTimerResults where Timestamp is greater than the specified date-time (optional) (optional)
$To = (Get-Date) # System.DateTime | Include EuxTimerResults where Timestamp is less than the specified date-time (optional) (optional)

# Get eux-timer-results for a given Load test-run and Continuous test-run
try {
    $Result = Get-LEEuxTimerResults -TestRunId $TestRunId -EuxTimer $EuxTimer -From $From -To $To
} catch {
    Write-Host ("Exception occurred when calling Get-LEEuxTimerResults: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestRunId** | **String**| Test-run id | 
 **EuxTimer** | [**EuxTimer[]**](EuxTimer.md)|  | [optional] 
 **From** | **System.DateTime**| Include EuxTimerResults where Timestamp is greater than the specified date-time (optional) | [optional] 
 **To** | **System.DateTime**| Include EuxTimerResults where Timestamp is less than the specified date-time (optional) | [optional] 

### Return type

[**EuxTimerResult[]**](EuxTimerResult.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-LELoadTestRunStatistics"></a>
# **Get-LELoadTestRunStatistics**
> LoadTestRunStatistics Get-LELoadTestRunStatistics<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestRunId] <String><br>

Get Statistics results for a given Load test-run

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

$TestRunId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Test-run id

# Get Statistics results for a given Load test-run
try {
    $Result = Get-LELoadTestRunStatistics -TestRunId $TestRunId
} catch {
    Write-Host ("Exception occurred when calling Get-LELoadTestRunStatistics: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestRunId** | **String**| Test-run id | 

### Return type

[**LoadTestRunStatistics**](LoadTestRunStatistics.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-LETestRun"></a>
# **Get-LETestRun**
> DataGetTestRun200Response Get-LETestRun<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestRunId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Include] <PSCustomObject[]><br>

Get test-run by id

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

$TestRunId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Test-run id
$Include = "none" # TestRunInclude[] | Include options (optional)

# Get test-run by id
try {
    $Result = Get-LETestRun -TestRunId $TestRunId -Include $Include
} catch {
    Write-Host ("Exception occurred when calling Get-LETestRun: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestRunId** | **String**| Test-run id | 
 **Include** | [**TestRunInclude[]**](TestRunInclude.md)| Include options | [optional] 

### Return type

[**DataGetTestRun200Response**](DataGetTestRun200Response.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-LETestRuns"></a>
# **Get-LETestRuns**
> TestRunResultSet Get-LETestRuns<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Direction] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IncludeTotalCount] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Include] <PSCustomObject[]><br>

Get paginated list of test-runs

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
$Direction = "asc" # String | Sort direction (default to "desc")
$Count = 56 # Int32 | Number of records to return (default to 100)
$Filter = "MyFilter" # String | Filter on Test Name or TestRun Comment (only available for test-runs of type LoadTest and ApplicationTest) (optional)
$Offset = 56 # Int32 | Start offset (optional) (default to 0)
$IncludeTotalCount = $true # Boolean | Include total number of records (optional) (default to $false)
$Include = "none" # TestRunInclude[] | Include options (optional)

# Get paginated list of test-runs
try {
    $Result = Get-LETestRuns -TestId $TestId -Direction $Direction -Count $Count -Filter $Filter -Offset $Offset -IncludeTotalCount $IncludeTotalCount -Include $Include
} catch {
    Write-Host ("Exception occurred when calling Get-LETestRuns: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestId** | **String**| Test id | 
 **Direction** | **String**| Sort direction | [default to &quot;desc&quot;]
 **Count** | **Int32**| Number of records to return | [default to 100]
 **Filter** | **String**| Filter on Test Name or TestRun Comment (only available for test-runs of type LoadTest and ApplicationTest) | [optional] 
 **Offset** | **Int32**| Start offset | [optional] [default to 0]
 **IncludeTotalCount** | **Boolean**| Include total number of records | [optional] [default to $false]
 **Include** | [**TestRunInclude[]**](TestRunInclude.md)| Include options | [optional] 

### Return type

[**TestRunResultSet**](TestRunResultSet.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


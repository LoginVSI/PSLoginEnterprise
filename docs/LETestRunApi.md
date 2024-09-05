# PSLoginEnterprise.PSLoginEnterprise\Api.LETestRunApi

All URIs are relative to */publicApi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-LEDeleteTestRuns**](LETestRunApi.md#Invoke-LEDeleteTestRuns) | **DELETE** /v7-preview/tests/test-runs | Delete test runs
[**Get-LEAllTestRuns**](LETestRunApi.md#Get-LEAllTestRuns) | **GET** /v7-preview/tests/test-runs | Get paginated list of all test-runs
[**Get-LEApplicationChart**](LETestRunApi.md#Get-LEApplicationChart) | **GET** /v7-preview/chart/application | Get the application chart for the load test runs with metric definitions and test run results
[**Get-LEApplicationTestResultOverview**](LETestRunApi.md#Get-LEApplicationTestResultOverview) | **GET** /v7-preview/application-test-run-overview/{testRunId} | Get the application test run overview
[**Get-LEContinuesTestUserSessionMetricsAggregated**](LETestRunApi.md#Get-LEContinuesTestUserSessionMetricsAggregated) | **GET** /v7-preview/test-runs/{testRunId}/aggregated-continuous-test-user-session-metrics | Get the user session metrics result for a continuous test collected within the &quot;&quot;from&quot;&quot; and &quot;&quot;to&quot;&quot; parameters,  and aggregate them per minute and per hour.
[**Get-LEEuxAggregatedPerHourResults**](LETestRunApi.md#Get-LEEuxAggregatedPerHourResults) | **GET** /v7-preview/test-runs/{testRunId}/aggregated-eux-results | Get the eux results for a load test-run or continuous test collected within the &quot;&quot;from&quot;&quot; and &quot;&quot;to&quot;&quot; parameters,  and aggregate them per hour.
[**Get-LEEuxChartData**](LETestRunApi.md#Get-LEEuxChartData) | **GET** /v7-preview/chart/eux | Get the eux chart for the load test runs with metric definitions and test run results
[**Get-LEEuxResults**](LETestRunApi.md#Get-LEEuxResults) | **GET** /v7-preview/test-runs/{testRunId}/eux-results | Get eux-results for a given Load test-run and Continuous test-run
[**Get-LEEuxScriptExecutions**](LETestRunApi.md#Get-LEEuxScriptExecutions) | **GET** /v7-preview/test-runs/{testRunId}/eux-script-executions | Get eux-script-executions (raw-data) for a given Load test-run and Continuous test-run
[**Get-LEEuxTimerAggregatedPerHourResults**](LETestRunApi.md#Get-LEEuxTimerAggregatedPerHourResults) | **GET** /v7-preview/test-runs/{testRunId}/aggregated-eux-timer-results | Get the eux timer results for a load test-run or continuous test collected within the &quot;&quot;from&quot;&quot; and &quot;&quot;to&quot;&quot; parameters,  and aggregate them per hour.
[**Get-LEEuxTimerResults**](LETestRunApi.md#Get-LEEuxTimerResults) | **GET** /v7-preview/test-runs/{testRunId}/eux-timer-results | Get eux-timer-results for a given Load test-run and Continuous test-run
[**Get-LELoadTestResultOverview**](LETestRunApi.md#Get-LELoadTestResultOverview) | **GET** /v7-preview/load-test-run-overview/{baseTestRunId} | Get the load test run overview with metric definitions and test run results
[**Get-LELoadTestRunStatistics**](LETestRunApi.md#Get-LELoadTestRunStatistics) | **GET** /v7-preview/test-runs/{testRunId}/statistics | Get Statistics results for a given Load test-run
[**Get-LELoadTestUserSessionMetricsAggregated**](LETestRunApi.md#Get-LELoadTestUserSessionMetricsAggregated) | **GET** /v7-preview/test-runs/{testRunId}/aggregated-load-test-user-session-metrics | Get the user session metrics result for a load test-run or continuous test collected within the &quot;&quot;from&quot;&quot; and &quot;&quot;to&quot;&quot; parameters,  and aggregate them per minute.
[**Get-LELoginTimeChart**](LETestRunApi.md#Get-LELoginTimeChart) | **GET** /v7-preview/chart/login-time | Get the login time chart for the load test runs with metric definitions and test run results
[**Get-LESessionMetricChart**](LETestRunApi.md#Get-LESessionMetricChart) | **GET** /v7-preview/chart/session-metric | Get the session metric chart for the load test runs with metric definitions and test run results
[**Get-LETestRun**](LETestRunApi.md#Get-LETestRun) | **GET** /v7-preview/test-runs/{testRunId} | Get test-run by id
[**Get-LETestRuns**](LETestRunApi.md#Get-LETestRuns) | **GET** /v7-preview/tests/{testId}/test-runs | Get paginated list of test-runs
[**Update-LEComment**](LETestRunApi.md#Update-LEComment) | **PUT** /v7-preview/test-runs/{testRunId}/comment | Update comment


<a id="Invoke-LEDeleteTestRuns"></a>
# **Invoke-LEDeleteTestRuns**
> void Invoke-LEDeleteTestRuns<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestRunIds] <String[]><br>

Delete test runs

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$accessToken = "YOUR_ACCESS_TOKEN"

# Configure your appliance name
$applianceName = "YOUR_APPLIANCE_HOSTNAME"

# $applianceName = "YOUR_APPLIANCE_URL"
$bearerToken = @{"Authorization"="Bearer $accessToken"}"
Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken
""

$TestRunIds = "MyTestRunIds" # String[] | Test run id (optional)

# Delete test runs
try {
    $Result = Invoke-LEDeleteTestRuns -TestRunIds $TestRunIds
} catch {
    Write-Host ("Exception occurred when calling Invoke-LEDeleteTestRuns: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestRunIds** | [**String[]**](String.md)| Test run id | [optional] 

### Return type

void (empty response body)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-LEAllTestRuns"></a>
# **Get-LEAllTestRuns**
> TestRunResultSet Get-LEAllTestRuns<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestType] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OrderBy] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Direction] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IncludeTotalCount] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Include] <PSCustomObject[]><br>

Get paginated list of all test-runs

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$accessToken = "YOUR_ACCESS_TOKEN"

# Configure your appliance name
$applianceName = "YOUR_APPLIANCE_HOSTNAME"

# $applianceName = "YOUR_APPLIANCE_URL"
$bearerToken = @{"Authorization"="Bearer $accessToken"}"
Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken
""

$TestType = "applicationTest" # TestType | 
$OrderBy = "testName" # TestRunSortKey | Sort Key
$Direction = "asc" # String | Sort direction (default to "asc")
$Count = 56 # Int32 | Number of records to return (default to 100)
$Filter = "MyFilter" # String | Filter on Test Name or TestRun Comment (only available for test-runs of type LoadTest and ApplicationTest) (optional)
$Offset = 56 # Int32 | Start offset (optional) (default to 0)
$IncludeTotalCount = $true # Boolean | Include total number of records (optional) (default to $false)
$Include = "none" # TestRunInclude[] |  (optional)

# Get paginated list of all test-runs
try {
    $Result = Get-LEAllTestRuns -TestType $TestType -OrderBy $OrderBy -Direction $Direction -Count $Count -Filter $Filter -Offset $Offset -IncludeTotalCount $IncludeTotalCount -Include $Include
} catch {
    Write-Host ("Exception occurred when calling Get-LEAllTestRuns: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestType** | [**TestType**](TestType.md)|  | 
 **OrderBy** | [**TestRunSortKey**](TestRunSortKey.md)| Sort Key | 
 **Direction** | **String**| Sort direction | [default to &quot;asc&quot;]
 **Count** | **Int32**| Number of records to return | [default to 100]
 **Filter** | **String**| Filter on Test Name or TestRun Comment (only available for test-runs of type LoadTest and ApplicationTest) | [optional] 
 **Offset** | **Int32**| Start offset | [optional] [default to 0]
 **IncludeTotalCount** | **Boolean**| Include total number of records | [optional] [default to $false]
 **Include** | [**TestRunInclude[]**](TestRunInclude.md)|  | [optional] 

### Return type

[**TestRunResultSet**](TestRunResultSet.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-LEApplicationChart"></a>
# **Get-LEApplicationChart**
> ApplicationChartResult Get-LEApplicationChart<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestRunIds] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ApplicationId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IncludeSessionCount] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Timers] <String[]><br>

Get the application chart for the load test runs with metric definitions and test run results

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$accessToken = "YOUR_ACCESS_TOKEN"

# Configure your appliance name
$applianceName = "YOUR_APPLIANCE_HOSTNAME"

# $applianceName = "YOUR_APPLIANCE_URL"
$bearerToken = @{"Authorization"="Bearer $accessToken"}"
Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken
""

$TestRunIds = "MyTestRunIds" # String[] | test-run ids
$ApplicationId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Application id
$IncludeSessionCount = $true # Boolean | Include session count (optional)
$Timers = "MyTimers" # String[] | Timers (optional)

# Get the application chart for the load test runs with metric definitions and test run results
try {
    $Result = Get-LEApplicationChart -TestRunIds $TestRunIds -ApplicationId $ApplicationId -IncludeSessionCount $IncludeSessionCount -Timers $Timers
} catch {
    Write-Host ("Exception occurred when calling Get-LEApplicationChart: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestRunIds** | [**String[]**](String.md)| test-run ids | 
 **ApplicationId** | **String**| Application id | 
 **IncludeSessionCount** | **Boolean**| Include session count | [optional] 
 **Timers** | [**String[]**](String.md)| Timers | [optional] 

### Return type

[**ApplicationChartResult**](ApplicationChartResult.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-LEApplicationTestResultOverview"></a>
# **Get-LEApplicationTestResultOverview**
> ApplicationTestResultOverview Get-LEApplicationTestResultOverview<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestRunId] <String><br>

Get the application test run overview

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$accessToken = "YOUR_ACCESS_TOKEN"

# Configure your appliance name
$applianceName = "YOUR_APPLIANCE_HOSTNAME"

# $applianceName = "YOUR_APPLIANCE_URL"
$bearerToken = @{"Authorization"="Bearer $accessToken"}"
Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken
""

$TestRunId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Test-run id

# Get the application test run overview
try {
    $Result = Get-LEApplicationTestResultOverview -TestRunId $TestRunId
} catch {
    Write-Host ("Exception occurred when calling Get-LEApplicationTestResultOverview: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestRunId** | **String**| Test-run id | 

### Return type

[**ApplicationTestResultOverview**](ApplicationTestResultOverview.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-LEContinuesTestUserSessionMetricsAggregated"></a>
# **Get-LEContinuesTestUserSessionMetricsAggregated**
> UserSessionMetricsAggregatedResult[] Get-LEContinuesTestUserSessionMetricsAggregated<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestRunId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AggregationMode] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MetricId] <System.Nullable[Int32][]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-From] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-To] <System.Nullable[System.DateTime]><br>

Get the user session metrics result for a continuous test collected within the ""from"" and ""to"" parameters,  and aggregate them per minute and per hour.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$accessToken = "YOUR_ACCESS_TOKEN"

# Configure your appliance name
$applianceName = "YOUR_APPLIANCE_HOSTNAME"

# $applianceName = "YOUR_APPLIANCE_URL"
$bearerToken = @{"Authorization"="Bearer $accessToken"}"
Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken
""

$TestRunId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Test-run id
$AggregationMode = "avgMinute" # SessionMetricsAggregationMode | Aggregation mode (optional)
$MetricId = 0 # Int32[] | Metric id (optional)
$From = (Get-Date) # System.DateTime | Include aggregated user session metrics result where Timestamp is greater than the specified date-time (optional) (optional)
$To = (Get-Date) # System.DateTime | Include aggregated user session metrics result where Timestamp is less than the specified date-time (optional) (optional)

# Get the user session metrics result for a continuous test collected within the ""from"" and ""to"" parameters,  and aggregate them per minute and per hour.
try {
    $Result = Get-LEContinuesTestUserSessionMetricsAggregated -TestRunId $TestRunId -AggregationMode $AggregationMode -MetricId $MetricId -From $From -To $To
} catch {
    Write-Host ("Exception occurred when calling Get-LEContinuesTestUserSessionMetricsAggregated: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestRunId** | **String**| Test-run id | 
 **AggregationMode** | [**SessionMetricsAggregationMode**](SessionMetricsAggregationMode.md)| Aggregation mode | [optional] 
 **MetricId** | [**Int32[]**](Int32.md)| Metric id | [optional] 
 **From** | **System.DateTime**| Include aggregated user session metrics result where Timestamp is greater than the specified date-time (optional) | [optional] 
 **To** | **System.DateTime**| Include aggregated user session metrics result where Timestamp is less than the specified date-time (optional) | [optional] 

### Return type

[**UserSessionMetricsAggregatedResult[]**](UserSessionMetricsAggregatedResult.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

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
$accessToken = "YOUR_ACCESS_TOKEN"

# Configure your appliance name
$applianceName = "YOUR_APPLIANCE_HOSTNAME"

# $applianceName = "YOUR_APPLIANCE_URL"
$bearerToken = @{"Authorization"="Bearer $accessToken"}"
Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken
""

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

<a id="Get-LEEuxChartData"></a>
# **Get-LEEuxChartData**
> ChartResult Get-LEEuxChartData<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestRunIds] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IncludeEuxScore] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IncludeSessionCount] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EuxTimers] <PSCustomObject[]><br>

Get the eux chart for the load test runs with metric definitions and test run results

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$accessToken = "YOUR_ACCESS_TOKEN"

# Configure your appliance name
$applianceName = "YOUR_APPLIANCE_HOSTNAME"

# $applianceName = "YOUR_APPLIANCE_URL"
$bearerToken = @{"Authorization"="Bearer $accessToken"}"
Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken
""

$TestRunIds = "MyTestRunIds" # String[] | test-run ids
$IncludeEuxScore = $true # Boolean | Include eux score (optional)
$IncludeSessionCount = $true # Boolean | Include session count (optional)
$EuxTimers = "paintStart" # EuxTimer[] | Eux timers (optional)

# Get the eux chart for the load test runs with metric definitions and test run results
try {
    $Result = Get-LEEuxChartData -TestRunIds $TestRunIds -IncludeEuxScore $IncludeEuxScore -IncludeSessionCount $IncludeSessionCount -EuxTimers $EuxTimers
} catch {
    Write-Host ("Exception occurred when calling Get-LEEuxChartData: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestRunIds** | [**String[]**](String.md)| test-run ids | 
 **IncludeEuxScore** | **Boolean**| Include eux score | [optional] 
 **IncludeSessionCount** | **Boolean**| Include session count | [optional] 
 **EuxTimers** | [**EuxTimer[]**](EuxTimer.md)| Eux timers | [optional] 

### Return type

[**ChartResult**](ChartResult.md) (PSCustomObject)

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
$accessToken = "YOUR_ACCESS_TOKEN"

# Configure your appliance name
$applianceName = "YOUR_APPLIANCE_HOSTNAME"

# $applianceName = "YOUR_APPLIANCE_URL"
$bearerToken = @{"Authorization"="Bearer $accessToken"}"
Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken
""

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
$accessToken = "YOUR_ACCESS_TOKEN"

# Configure your appliance name
$applianceName = "YOUR_APPLIANCE_HOSTNAME"

# $applianceName = "YOUR_APPLIANCE_URL"
$bearerToken = @{"Authorization"="Bearer $accessToken"}"
Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken
""

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
$accessToken = "YOUR_ACCESS_TOKEN"

# Configure your appliance name
$applianceName = "YOUR_APPLIANCE_HOSTNAME"

# $applianceName = "YOUR_APPLIANCE_URL"
$bearerToken = @{"Authorization"="Bearer $accessToken"}"
Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken
""

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
$accessToken = "YOUR_ACCESS_TOKEN"

# Configure your appliance name
$applianceName = "YOUR_APPLIANCE_HOSTNAME"

# $applianceName = "YOUR_APPLIANCE_URL"
$bearerToken = @{"Authorization"="Bearer $accessToken"}"
Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken
""

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

<a id="Get-LELoadTestResultOverview"></a>
# **Get-LELoadTestResultOverview**
> TestRunResultOverview Get-LELoadTestResultOverview<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BaseTestRunId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestRunIds] <String[]><br>

Get the load test run overview with metric definitions and test run results

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$accessToken = "YOUR_ACCESS_TOKEN"

# Configure your appliance name
$applianceName = "YOUR_APPLIANCE_HOSTNAME"

# $applianceName = "YOUR_APPLIANCE_URL"
$bearerToken = @{"Authorization"="Bearer $accessToken"}"
Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken
""

$BaseTestRunId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Base test-run id (all test runs will be compared to it)
$TestRunIds = "MyTestRunIds" # String[] | Comparable test run ids (optional)

# Get the load test run overview with metric definitions and test run results
try {
    $Result = Get-LELoadTestResultOverview -BaseTestRunId $BaseTestRunId -TestRunIds $TestRunIds
} catch {
    Write-Host ("Exception occurred when calling Get-LELoadTestResultOverview: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **BaseTestRunId** | **String**| Base test-run id (all test runs will be compared to it) | 
 **TestRunIds** | [**String[]**](String.md)| Comparable test run ids | [optional] 

### Return type

[**TestRunResultOverview**](TestRunResultOverview.md) (PSCustomObject)

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
$accessToken = "YOUR_ACCESS_TOKEN"

# Configure your appliance name
$applianceName = "YOUR_APPLIANCE_HOSTNAME"

# $applianceName = "YOUR_APPLIANCE_URL"
$bearerToken = @{"Authorization"="Bearer $accessToken"}"
Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken
""

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

<a id="Get-LELoadTestUserSessionMetricsAggregated"></a>
# **Get-LELoadTestUserSessionMetricsAggregated**
> UserSessionMetricsAggregatedResult[] Get-LELoadTestUserSessionMetricsAggregated<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestRunId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MetricId] <System.Nullable[Int32][]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-From] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-To] <System.Nullable[System.DateTime]><br>

Get the user session metrics result for a load test-run or continuous test collected within the ""from"" and ""to"" parameters,  and aggregate them per minute.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$accessToken = "YOUR_ACCESS_TOKEN"

# Configure your appliance name
$applianceName = "YOUR_APPLIANCE_HOSTNAME"

# $applianceName = "YOUR_APPLIANCE_URL"
$bearerToken = @{"Authorization"="Bearer $accessToken"}"
Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken
""

$TestRunId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Test-run id
$MetricId = 0 # Int32[] | Metric id (optional)
$From = (Get-Date) # System.DateTime | Include aggregated user session metrics result where Timestamp is greater than the specified date-time (optional) (optional)
$To = (Get-Date) # System.DateTime | Include aggregated user session metrics result where Timestamp is less than the specified date-time (optional) (optional)

# Get the user session metrics result for a load test-run or continuous test collected within the ""from"" and ""to"" parameters,  and aggregate them per minute.
try {
    $Result = Get-LELoadTestUserSessionMetricsAggregated -TestRunId $TestRunId -MetricId $MetricId -From $From -To $To
} catch {
    Write-Host ("Exception occurred when calling Get-LELoadTestUserSessionMetricsAggregated: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestRunId** | **String**| Test-run id | 
 **MetricId** | [**Int32[]**](Int32.md)| Metric id | [optional] 
 **From** | **System.DateTime**| Include aggregated user session metrics result where Timestamp is greater than the specified date-time (optional) | [optional] 
 **To** | **System.DateTime**| Include aggregated user session metrics result where Timestamp is less than the specified date-time (optional) | [optional] 

### Return type

[**UserSessionMetricsAggregatedResult[]**](UserSessionMetricsAggregatedResult.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-LELoginTimeChart"></a>
# **Get-LELoginTimeChart**
> ChartResult Get-LELoginTimeChart<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestRunIds] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IncludeSessionCount] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LoginSteps] <String[]><br>

Get the login time chart for the load test runs with metric definitions and test run results

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$accessToken = "YOUR_ACCESS_TOKEN"

# Configure your appliance name
$applianceName = "YOUR_APPLIANCE_HOSTNAME"

# $applianceName = "YOUR_APPLIANCE_URL"
$bearerToken = @{"Authorization"="Bearer $accessToken"}"
Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken
""

$TestRunIds = "MyTestRunIds" # String[] | test-run ids
$IncludeSessionCount = $true # Boolean | Include session count (optional)
$LoginSteps = "MyLoginSteps" # String[] | Login steps (optional)

# Get the login time chart for the load test runs with metric definitions and test run results
try {
    $Result = Get-LELoginTimeChart -TestRunIds $TestRunIds -IncludeSessionCount $IncludeSessionCount -LoginSteps $LoginSteps
} catch {
    Write-Host ("Exception occurred when calling Get-LELoginTimeChart: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestRunIds** | [**String[]**](String.md)| test-run ids | 
 **IncludeSessionCount** | **Boolean**| Include session count | [optional] 
 **LoginSteps** | [**String[]**](String.md)| Login steps | [optional] 

### Return type

[**ChartResult**](ChartResult.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-LESessionMetricChart"></a>
# **Get-LESessionMetricChart**
> ChartResult Get-LESessionMetricChart<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestRunIds] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IncludeSessionCount] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MetricDisplayNames] <String[]><br>

Get the session metric chart for the load test runs with metric definitions and test run results

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$accessToken = "YOUR_ACCESS_TOKEN"

# Configure your appliance name
$applianceName = "YOUR_APPLIANCE_HOSTNAME"

# $applianceName = "YOUR_APPLIANCE_URL"
$bearerToken = @{"Authorization"="Bearer $accessToken"}"
Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken
""

$TestRunIds = "MyTestRunIds" # String[] | test-run ids
$IncludeSessionCount = $true # Boolean | Include session count (optional)
$MetricDisplayNames = "MyMetricDisplayNames" # String[] | Metric display name (optional)

# Get the session metric chart for the load test runs with metric definitions and test run results
try {
    $Result = Get-LESessionMetricChart -TestRunIds $TestRunIds -IncludeSessionCount $IncludeSessionCount -MetricDisplayNames $MetricDisplayNames
} catch {
    Write-Host ("Exception occurred when calling Get-LESessionMetricChart: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestRunIds** | [**String[]**](String.md)| test-run ids | 
 **IncludeSessionCount** | **Boolean**| Include session count | [optional] 
 **MetricDisplayNames** | [**String[]**](String.md)| Metric display name | [optional] 

### Return type

[**ChartResult**](ChartResult.md) (PSCustomObject)

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
$accessToken = "YOUR_ACCESS_TOKEN"

# Configure your appliance name
$applianceName = "YOUR_APPLIANCE_HOSTNAME"

# $applianceName = "YOUR_APPLIANCE_URL"
$bearerToken = @{"Authorization"="Bearer $accessToken"}"
Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken
""

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
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OrderBy] <PSCustomObject><br>
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
$accessToken = "YOUR_ACCESS_TOKEN"

# Configure your appliance name
$applianceName = "YOUR_APPLIANCE_HOSTNAME"

# $applianceName = "YOUR_APPLIANCE_URL"
$bearerToken = @{"Authorization"="Bearer $accessToken"}"
Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken
""

$TestId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Test id
$OrderBy = "testName" # TestRunSortKey | Sort Key
$Direction = "asc" # String | Sort direction (default to "asc")
$Count = 56 # Int32 | Number of records to return (default to 100)
$Filter = "MyFilter" # String | Filter on Test Name or TestRun Comment (only available for test-runs of type LoadTest and ApplicationTest) (optional)
$Offset = 56 # Int32 | Start offset (optional) (default to 0)
$IncludeTotalCount = $true # Boolean | Include total number of records (optional) (default to $false)
$Include = "none" # TestRunInclude[] | Include options (optional)

# Get paginated list of test-runs
try {
    $Result = Get-LETestRuns -TestId $TestId -OrderBy $OrderBy -Direction $Direction -Count $Count -Filter $Filter -Offset $Offset -IncludeTotalCount $IncludeTotalCount -Include $Include
} catch {
    Write-Host ("Exception occurred when calling Get-LETestRuns: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestId** | **String**| Test id | 
 **OrderBy** | [**TestRunSortKey**](TestRunSortKey.md)| Sort Key | 
 **Direction** | **String**| Sort direction | [default to &quot;asc&quot;]
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

<a id="Update-LEComment"></a>
# **Update-LEComment**
> void Update-LEComment<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestRunId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Comment] <String><br>

Update comment

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$accessToken = "YOUR_ACCESS_TOKEN"

# Configure your appliance name
$applianceName = "YOUR_APPLIANCE_HOSTNAME"

# $applianceName = "YOUR_APPLIANCE_URL"
$bearerToken = @{"Authorization"="Bearer $accessToken"}"
Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken
""

$TestRunId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Test-run id
$Comment = "MyComment" # String | Comment (optional)

# Update comment
try {
    $Result = Update-LEComment -TestRunId $TestRunId -Comment $Comment
} catch {
    Write-Host ("Exception occurred when calling Update-LEComment: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestRunId** | **String**| Test-run id | 
 **Comment** | **String**| Comment | [optional] 

### Return type

void (empty response body)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


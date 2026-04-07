# PSLoginEnterprise.PSLoginEnterprise\Api.TestRunApi

All URIs are relative to */publicApi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-DataDeleteTestRuns**](TestRunApi.md#Invoke-DataDeleteTestRuns) | **DELETE** /v7/tests/test-runs | Delete test runs
[**Invoke-DataGetAllTestRuns**](TestRunApi.md#Invoke-DataGetAllTestRuns) | **GET** /v7/tests/test-runs | Get paginated list of all test-runs
[**Invoke-DataGetApplicationChart**](TestRunApi.md#Invoke-DataGetApplicationChart) | **GET** /v7/chart/application | Get the application chart for the load test runs with metric definitions and test run results
[**Invoke-DataGetApplicationTestResultOverview**](TestRunApi.md#Invoke-DataGetApplicationTestResultOverview) | **GET** /v7/application-test-run-overview/{testRunId} | Get the application test run overview
[**Invoke-DataGetContinuesTestUserSessionMetricsAggregated**](TestRunApi.md#Invoke-DataGetContinuesTestUserSessionMetricsAggregated) | **GET** /v7/test-runs/{testRunId}/aggregated-continuous-test-user-session-metrics | Get the user session metrics result for a continuous test collected within the &quot;&quot;from&quot;&quot; and &quot;&quot;to&quot;&quot; parameters,  and aggregate them per minute and per hour.
[**Invoke-DataGetEuxAggregatedPerHourResults**](TestRunApi.md#Invoke-DataGetEuxAggregatedPerHourResults) | **GET** /v7/test-runs/{testRunId}/aggregated-eux-results | Get the eux results for a load test-run or continuous test collected within the &quot;&quot;from&quot;&quot; and &quot;&quot;to&quot;&quot; parameters,  and aggregate them per hour.
[**Invoke-DataGetEuxChartData**](TestRunApi.md#Invoke-DataGetEuxChartData) | **GET** /v7/chart/eux | Get the eux chart for the load test runs with metric definitions and test run results
[**Invoke-DataGetEuxResults**](TestRunApi.md#Invoke-DataGetEuxResults) | **GET** /v7/test-runs/{testRunId}/eux-results | Get eux-results for a given Load test-run and Continuous test-run
[**Invoke-DataGetEuxScriptExecutions**](TestRunApi.md#Invoke-DataGetEuxScriptExecutions) | **GET** /v7/test-runs/{testRunId}/eux-script-executions | Get eux-script-executions (raw-data) for a given Load test-run and Continuous test-run
[**Invoke-DataGetEuxTimerAggregatedPerHourResults**](TestRunApi.md#Invoke-DataGetEuxTimerAggregatedPerHourResults) | **GET** /v7/test-runs/{testRunId}/aggregated-eux-timer-results | Get the eux timer results for a load test-run or continuous test collected within the &quot;&quot;from&quot;&quot; and &quot;&quot;to&quot;&quot; parameters,  and aggregate them per hour.
[**Invoke-DataGetEuxTimerResults**](TestRunApi.md#Invoke-DataGetEuxTimerResults) | **GET** /v7/test-runs/{testRunId}/eux-timer-results | Get eux-timer-results for a given Load test-run and Continuous test-run
[**Invoke-DataGetLoadTestResultOverview**](TestRunApi.md#Invoke-DataGetLoadTestResultOverview) | **GET** /v7/load-test-run-overview/{baseTestRunId} | Get the load test run overview with metric definitions and test run results
[**Invoke-DataGetLoadTestRunStatistics**](TestRunApi.md#Invoke-DataGetLoadTestRunStatistics) | **GET** /v7/test-runs/{testRunId}/statistics | Get Statistics results for a given Load test-run
[**Invoke-DataGetLoadTestUserSessionMetricsAggregated**](TestRunApi.md#Invoke-DataGetLoadTestUserSessionMetricsAggregated) | **GET** /v7/test-runs/{testRunId}/aggregated-load-test-user-session-metrics | Get the user session metrics result for a load test-run or continuous test collected within the &quot;&quot;from&quot;&quot; and &quot;&quot;to&quot;&quot; parameters,  and aggregate them per minute.
[**Invoke-DataGetLoginTimeChart**](TestRunApi.md#Invoke-DataGetLoginTimeChart) | **GET** /v7/chart/login-time | Get the login time chart for the load test runs with metric definitions and test run results
[**Invoke-DataGetSessionMetricChart**](TestRunApi.md#Invoke-DataGetSessionMetricChart) | **GET** /v7/chart/session-metric | Get the session metric chart for the load test runs with metric definitions and test run results
[**Invoke-DataGetTestRun**](TestRunApi.md#Invoke-DataGetTestRun) | **GET** /v7/test-runs/{testRunId} | Get test-run by id
[**Invoke-DataGetTestRuns**](TestRunApi.md#Invoke-DataGetTestRuns) | **GET** /v7/tests/{testId}/test-runs | Get paginated list of test-runs
[**Invoke-DataUpdateComment**](TestRunApi.md#Invoke-DataUpdateComment) | **PUT** /v7/test-runs/{testRunId}/comment | Update comment


<a id="Invoke-DataDeleteTestRuns"></a>
# **Invoke-DataDeleteTestRuns**
> void Invoke-DataDeleteTestRuns<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestRunIds] <String[]><br>

Delete test runs

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$accessToken = "YOUR_ACCESS_TOKEN"

# Configure your appliance name
$applianceName = "YOUR_APPLIANCE_HOSTNAME"

# $applianceName = "YOUR_APPLIANCE_HOSTNAME"
$bearerToken = @{"Authorization"="Bearer $accessToken"}
# Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken
""

$TestRunIds = "MyTestRunIds" # String[] | Test run id (optional)

# Delete test runs
try {
    $Result = Invoke-DataDeleteTestRuns -TestRunIds $TestRunIds
} catch {
    Write-Host ("Exception occurred when calling Invoke-DataDeleteTestRuns: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-DataGetAllTestRuns"></a>
# **Invoke-DataGetAllTestRuns**
> TestRunResultSet Invoke-DataGetAllTestRuns<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestType] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OrderBy] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Direction] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Int32]><br>
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

# $applianceName = "YOUR_APPLIANCE_HOSTNAME"
$bearerToken = @{"Authorization"="Bearer $accessToken"}
# Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken
""

$TestType = "applicationTest" # TestType | 
$Filter = "MyFilter" # String | Filter on Test Name or TestRun Comment (only available for test-runs of type LoadTest and ApplicationTest) (optional)
$OrderBy = "testName" # TestRunSortKey | Sort Key (optional)
$Direction = "asc" # SortOrder | Sort direction (optional)
$Count = 56 # Int32 | Number of records to return (optional) (default to 100)
$Offset = 56 # Int32 | Start offset (optional) (default to 0)
$IncludeTotalCount = $true # Boolean | Include total number of records (optional) (default to $false)
$Include = "none" # TestRunInclude[] | Include options for test run (optional)

# Get paginated list of all test-runs
try {
    $Result = Invoke-DataGetAllTestRuns -TestType $TestType -Filter $Filter -OrderBy $OrderBy -Direction $Direction -Count $Count -Offset $Offset -IncludeTotalCount $IncludeTotalCount -Include $Include
} catch {
    Write-Host ("Exception occurred when calling Invoke-DataGetAllTestRuns: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestType** | [**TestType**](TestType.md)|  | 
 **Filter** | **String**| Filter on Test Name or TestRun Comment (only available for test-runs of type LoadTest and ApplicationTest) | [optional] 
 **OrderBy** | [**TestRunSortKey**](TestRunSortKey.md)| Sort Key | [optional] 
 **Direction** | [**SortOrder**](SortOrder.md)| Sort direction | [optional] 
 **Count** | **Int32**| Number of records to return | [optional] [default to 100]
 **Offset** | **Int32**| Start offset | [optional] [default to 0]
 **IncludeTotalCount** | **Boolean**| Include total number of records | [optional] [default to $false]
 **Include** | [**TestRunInclude[]**](TestRunInclude.md)| Include options for test run | [optional] 

### Return type

[**TestRunResultSet**](TestRunResultSet.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DataGetApplicationChart"></a>
# **Invoke-DataGetApplicationChart**
> ApplicationChartResult Invoke-DataGetApplicationChart<br>
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

# $applianceName = "YOUR_APPLIANCE_HOSTNAME"
$bearerToken = @{"Authorization"="Bearer $accessToken"}
# Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken
""

$TestRunIds = "MyTestRunIds" # String[] | test-run ids
$ApplicationId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Application id
$IncludeSessionCount = $true # Boolean | Include session count (optional)
$Timers = "MyTimers" # String[] | Timers (optional)

# Get the application chart for the load test runs with metric definitions and test run results
try {
    $Result = Invoke-DataGetApplicationChart -TestRunIds $TestRunIds -ApplicationId $ApplicationId -IncludeSessionCount $IncludeSessionCount -Timers $Timers
} catch {
    Write-Host ("Exception occurred when calling Invoke-DataGetApplicationChart: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-DataGetApplicationTestResultOverview"></a>
# **Invoke-DataGetApplicationTestResultOverview**
> ApplicationTestResultOverview Invoke-DataGetApplicationTestResultOverview<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestRunId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestRunIds] <String[]><br>

Get the application test run overview

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$accessToken = "YOUR_ACCESS_TOKEN"

# Configure your appliance name
$applianceName = "YOUR_APPLIANCE_HOSTNAME"

# $applianceName = "YOUR_APPLIANCE_HOSTNAME"
$bearerToken = @{"Authorization"="Bearer $accessToken"}
# Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken
""

$TestRunId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Base test-run id (all test runs will be compared to it)
$TestRunIds = "MyTestRunIds" # String[] | Comparable test run ids (optional)

# Get the application test run overview
try {
    $Result = Invoke-DataGetApplicationTestResultOverview -TestRunId $TestRunId -TestRunIds $TestRunIds
} catch {
    Write-Host ("Exception occurred when calling Invoke-DataGetApplicationTestResultOverview: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestRunId** | **String**| Base test-run id (all test runs will be compared to it) | 
 **TestRunIds** | [**String[]**](String.md)| Comparable test run ids | [optional] 

### Return type

[**ApplicationTestResultOverview**](ApplicationTestResultOverview.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DataGetContinuesTestUserSessionMetricsAggregated"></a>
# **Invoke-DataGetContinuesTestUserSessionMetricsAggregated**
> UserSessionMetricsAggregatedResult[] Invoke-DataGetContinuesTestUserSessionMetricsAggregated<br>
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

# $applianceName = "YOUR_APPLIANCE_HOSTNAME"
$bearerToken = @{"Authorization"="Bearer $accessToken"}
# Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken
""

$TestRunId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Test-run id
$AggregationMode = "avgMinute" # SessionMetricsAggregationMode | Aggregation mode (optional)
$MetricId = 0 # Int32[] | Metric id (optional)
$From = (Get-Date) # System.DateTime | Include aggregated user session metrics result where Timestamp is greater than the specified date-time (optional) (optional)
$To = (Get-Date) # System.DateTime | Include aggregated user session metrics result where Timestamp is less than the specified date-time (optional) (optional)

# Get the user session metrics result for a continuous test collected within the ""from"" and ""to"" parameters,  and aggregate them per minute and per hour.
try {
    $Result = Invoke-DataGetContinuesTestUserSessionMetricsAggregated -TestRunId $TestRunId -AggregationMode $AggregationMode -MetricId $MetricId -From $From -To $To
} catch {
    Write-Host ("Exception occurred when calling Invoke-DataGetContinuesTestUserSessionMetricsAggregated: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-DataGetEuxAggregatedPerHourResults"></a>
# **Invoke-DataGetEuxAggregatedPerHourResults**
> EuxResultsPerHour[] Invoke-DataGetEuxAggregatedPerHourResults<br>
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

# $applianceName = "YOUR_APPLIANCE_HOSTNAME"
$bearerToken = @{"Authorization"="Bearer $accessToken"}
# Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken
""

$TestRunId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Test-run id
$From = (Get-Date) # System.DateTime | Include aggregated EuxResults where Timestamp is greater than the specified date-time (optional) (optional)
$To = (Get-Date) # System.DateTime | Include aggregated EuxResults where Timestamp is less than the specified date-time (optional) (optional)

# Get the eux results for a load test-run or continuous test collected within the ""from"" and ""to"" parameters,  and aggregate them per hour.
try {
    $Result = Invoke-DataGetEuxAggregatedPerHourResults -TestRunId $TestRunId -From $From -To $To
} catch {
    Write-Host ("Exception occurred when calling Invoke-DataGetEuxAggregatedPerHourResults: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-DataGetEuxChartData"></a>
# **Invoke-DataGetEuxChartData**
> ChartResult Invoke-DataGetEuxChartData<br>
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

# $applianceName = "YOUR_APPLIANCE_HOSTNAME"
$bearerToken = @{"Authorization"="Bearer $accessToken"}
# Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken
""

$TestRunIds = "MyTestRunIds" # String[] | test-run ids
$IncludeEuxScore = $true # Boolean | Include eux score (optional)
$IncludeSessionCount = $true # Boolean | Include session count (optional)
$EuxTimers = "paintStart" # EuxTimer[] | Eux timers (optional)

# Get the eux chart for the load test runs with metric definitions and test run results
try {
    $Result = Invoke-DataGetEuxChartData -TestRunIds $TestRunIds -IncludeEuxScore $IncludeEuxScore -IncludeSessionCount $IncludeSessionCount -EuxTimers $EuxTimers
} catch {
    Write-Host ("Exception occurred when calling Invoke-DataGetEuxChartData: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-DataGetEuxResults"></a>
# **Invoke-DataGetEuxResults**
> EuxResult[] Invoke-DataGetEuxResults<br>
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

# $applianceName = "YOUR_APPLIANCE_HOSTNAME"
$bearerToken = @{"Authorization"="Bearer $accessToken"}
# Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken
""

$TestRunId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Test-run id
$From = (Get-Date) # System.DateTime | Include EuxResults where Timestamp is greater than the specified date-time (optional) (optional)
$To = (Get-Date) # System.DateTime | Include EuxResults where Timestamp is less than the specified date-time (optional) (optional)

# Get eux-results for a given Load test-run and Continuous test-run
try {
    $Result = Invoke-DataGetEuxResults -TestRunId $TestRunId -From $From -To $To
} catch {
    Write-Host ("Exception occurred when calling Invoke-DataGetEuxResults: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-DataGetEuxScriptExecutions"></a>
# **Invoke-DataGetEuxScriptExecutions**
> EuxScriptExecutionResultSet Invoke-DataGetEuxScriptExecutions<br>
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

# $applianceName = "YOUR_APPLIANCE_HOSTNAME"
$bearerToken = @{"Authorization"="Bearer $accessToken"}
# Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken
""

$TestRunId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Test-run id
$Count = 56 # Int32 | Number of records to return (optional) (default to 1000)
$Offset = 56 # Int32 | Start offset (optional) (default to 0)

# Get eux-script-executions (raw-data) for a given Load test-run and Continuous test-run
try {
    $Result = Invoke-DataGetEuxScriptExecutions -TestRunId $TestRunId -Count $Count -Offset $Offset
} catch {
    Write-Host ("Exception occurred when calling Invoke-DataGetEuxScriptExecutions: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-DataGetEuxTimerAggregatedPerHourResults"></a>
# **Invoke-DataGetEuxTimerAggregatedPerHourResults**
> EuxTimerResultsPerHour[] Invoke-DataGetEuxTimerAggregatedPerHourResults<br>
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

# $applianceName = "YOUR_APPLIANCE_HOSTNAME"
$bearerToken = @{"Authorization"="Bearer $accessToken"}
# Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken
""

$TestRunId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Test-run id
$EuxTimer = "paintStart" # EuxTimer[] |  (optional)
$From = (Get-Date) # System.DateTime | Include aggregated EuxTimerResults where Timestamp is greater than the specified date-time (optional) (optional)
$To = (Get-Date) # System.DateTime | Include aggregated EuxTimerResults where Timestamp is less than the specified date-time (optional) (optional)

# Get the eux timer results for a load test-run or continuous test collected within the ""from"" and ""to"" parameters,  and aggregate them per hour.
try {
    $Result = Invoke-DataGetEuxTimerAggregatedPerHourResults -TestRunId $TestRunId -EuxTimer $EuxTimer -From $From -To $To
} catch {
    Write-Host ("Exception occurred when calling Invoke-DataGetEuxTimerAggregatedPerHourResults: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-DataGetEuxTimerResults"></a>
# **Invoke-DataGetEuxTimerResults**
> EuxTimerResult[] Invoke-DataGetEuxTimerResults<br>
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

# $applianceName = "YOUR_APPLIANCE_HOSTNAME"
$bearerToken = @{"Authorization"="Bearer $accessToken"}
# Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken
""

$TestRunId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Test-run id
$EuxTimer = "paintStart" # EuxTimer[] |  (optional)
$From = (Get-Date) # System.DateTime | Include EuxTimerResults where Timestamp is greater than the specified date-time (optional) (optional)
$To = (Get-Date) # System.DateTime | Include EuxTimerResults where Timestamp is less than the specified date-time (optional) (optional)

# Get eux-timer-results for a given Load test-run and Continuous test-run
try {
    $Result = Invoke-DataGetEuxTimerResults -TestRunId $TestRunId -EuxTimer $EuxTimer -From $From -To $To
} catch {
    Write-Host ("Exception occurred when calling Invoke-DataGetEuxTimerResults: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-DataGetLoadTestResultOverview"></a>
# **Invoke-DataGetLoadTestResultOverview**
> TestRunResultOverview Invoke-DataGetLoadTestResultOverview<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BaseTestRunId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestRunIds] <String[]><br>

Get the load test run overview with metric definitions and test run results

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$accessToken = "YOUR_ACCESS_TOKEN"

# Configure your appliance name
$applianceName = "YOUR_APPLIANCE_HOSTNAME"

# $applianceName = "YOUR_APPLIANCE_HOSTNAME"
$bearerToken = @{"Authorization"="Bearer $accessToken"}
# Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken
""

$BaseTestRunId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Base test-run id (all test runs will be compared to it)
$TestRunIds = "MyTestRunIds" # String[] | Comparable test run ids (optional)

# Get the load test run overview with metric definitions and test run results
try {
    $Result = Invoke-DataGetLoadTestResultOverview -BaseTestRunId $BaseTestRunId -TestRunIds $TestRunIds
} catch {
    Write-Host ("Exception occurred when calling Invoke-DataGetLoadTestResultOverview: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-DataGetLoadTestRunStatistics"></a>
# **Invoke-DataGetLoadTestRunStatistics**
> LoadTestRunStatistics Invoke-DataGetLoadTestRunStatistics<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestRunId] <String><br>

Get Statistics results for a given Load test-run

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$accessToken = "YOUR_ACCESS_TOKEN"

# Configure your appliance name
$applianceName = "YOUR_APPLIANCE_HOSTNAME"

# $applianceName = "YOUR_APPLIANCE_HOSTNAME"
$bearerToken = @{"Authorization"="Bearer $accessToken"}
# Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken
""

$TestRunId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Test-run id

# Get Statistics results for a given Load test-run
try {
    $Result = Invoke-DataGetLoadTestRunStatistics -TestRunId $TestRunId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DataGetLoadTestRunStatistics: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-DataGetLoadTestUserSessionMetricsAggregated"></a>
# **Invoke-DataGetLoadTestUserSessionMetricsAggregated**
> UserSessionMetricsAggregatedResult[] Invoke-DataGetLoadTestUserSessionMetricsAggregated<br>
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

# $applianceName = "YOUR_APPLIANCE_HOSTNAME"
$bearerToken = @{"Authorization"="Bearer $accessToken"}
# Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken
""

$TestRunId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Test-run id
$MetricId = 0 # Int32[] | Metric id (optional)
$From = (Get-Date) # System.DateTime | Include aggregated user session metrics result where Timestamp is greater than the specified date-time (optional) (optional)
$To = (Get-Date) # System.DateTime | Include aggregated user session metrics result where Timestamp is less than the specified date-time (optional) (optional)

# Get the user session metrics result for a load test-run or continuous test collected within the ""from"" and ""to"" parameters,  and aggregate them per minute.
try {
    $Result = Invoke-DataGetLoadTestUserSessionMetricsAggregated -TestRunId $TestRunId -MetricId $MetricId -From $From -To $To
} catch {
    Write-Host ("Exception occurred when calling Invoke-DataGetLoadTestUserSessionMetricsAggregated: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-DataGetLoginTimeChart"></a>
# **Invoke-DataGetLoginTimeChart**
> ChartResult Invoke-DataGetLoginTimeChart<br>
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

# $applianceName = "YOUR_APPLIANCE_HOSTNAME"
$bearerToken = @{"Authorization"="Bearer $accessToken"}
# Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken
""

$TestRunIds = "MyTestRunIds" # String[] | test-run ids
$IncludeSessionCount = $true # Boolean | Include session count (optional)
$LoginSteps = "MyLoginSteps" # String[] | Login steps (optional)

# Get the login time chart for the load test runs with metric definitions and test run results
try {
    $Result = Invoke-DataGetLoginTimeChart -TestRunIds $TestRunIds -IncludeSessionCount $IncludeSessionCount -LoginSteps $LoginSteps
} catch {
    Write-Host ("Exception occurred when calling Invoke-DataGetLoginTimeChart: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-DataGetSessionMetricChart"></a>
# **Invoke-DataGetSessionMetricChart**
> ChartResult Invoke-DataGetSessionMetricChart<br>
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

# $applianceName = "YOUR_APPLIANCE_HOSTNAME"
$bearerToken = @{"Authorization"="Bearer $accessToken"}
# Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken
""

$TestRunIds = "MyTestRunIds" # String[] | test-run ids
$IncludeSessionCount = $true # Boolean | Include session count (optional)
$MetricDisplayNames = "MyMetricDisplayNames" # String[] | Metric display name (optional)

# Get the session metric chart for the load test runs with metric definitions and test run results
try {
    $Result = Invoke-DataGetSessionMetricChart -TestRunIds $TestRunIds -IncludeSessionCount $IncludeSessionCount -MetricDisplayNames $MetricDisplayNames
} catch {
    Write-Host ("Exception occurred when calling Invoke-DataGetSessionMetricChart: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-DataGetTestRun"></a>
# **Invoke-DataGetTestRun**
> DataGetTestRun200Response Invoke-DataGetTestRun<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestRunId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Include] <PSCustomObject[]><br>

Get test-run by id

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$accessToken = "YOUR_ACCESS_TOKEN"

# Configure your appliance name
$applianceName = "YOUR_APPLIANCE_HOSTNAME"

# $applianceName = "YOUR_APPLIANCE_HOSTNAME"
$bearerToken = @{"Authorization"="Bearer $accessToken"}
# Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken
""

$TestRunId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Test-run id
$Include = "none" # TestRunInclude[] | Include options (optional)

# Get test-run by id
try {
    $Result = Invoke-DataGetTestRun -TestRunId $TestRunId -Include $Include
} catch {
    Write-Host ("Exception occurred when calling Invoke-DataGetTestRun: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-DataGetTestRuns"></a>
# **Invoke-DataGetTestRuns**
> TestRunResultSet Invoke-DataGetTestRuns<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OrderBy] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Direction] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Int32]><br>
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

# $applianceName = "YOUR_APPLIANCE_HOSTNAME"
$bearerToken = @{"Authorization"="Bearer $accessToken"}
# Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken
""

$TestId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Test id
$Filter = "MyFilter" # String | Filter on Test Name or TestRun Comment (only available for test-runs of type LoadTest and ApplicationTest) (optional)
$OrderBy = "testName" # TestRunSortKey | Sort Key (optional)
$Direction = "asc" # SortOrder | Sort direction (optional)
$Count = 56 # Int32 | Number of records to return (optional) (default to 100)
$Offset = 56 # Int32 | Start offset (optional) (default to 0)
$IncludeTotalCount = $true # Boolean | Include total number of records (optional) (default to $false)
$Include = "none" # TestRunInclude[] | Include options (optional)

# Get paginated list of test-runs
try {
    $Result = Invoke-DataGetTestRuns -TestId $TestId -Filter $Filter -OrderBy $OrderBy -Direction $Direction -Count $Count -Offset $Offset -IncludeTotalCount $IncludeTotalCount -Include $Include
} catch {
    Write-Host ("Exception occurred when calling Invoke-DataGetTestRuns: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestId** | **String**| Test id | 
 **Filter** | **String**| Filter on Test Name or TestRun Comment (only available for test-runs of type LoadTest and ApplicationTest) | [optional] 
 **OrderBy** | [**TestRunSortKey**](TestRunSortKey.md)| Sort Key | [optional] 
 **Direction** | [**SortOrder**](SortOrder.md)| Sort direction | [optional] 
 **Count** | **Int32**| Number of records to return | [optional] [default to 100]
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

<a id="Invoke-DataUpdateComment"></a>
# **Invoke-DataUpdateComment**
> void Invoke-DataUpdateComment<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestRunId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdateTestRunCommentRequest] <PSCustomObject><br>

Update comment

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$accessToken = "YOUR_ACCESS_TOKEN"

# Configure your appliance name
$applianceName = "YOUR_APPLIANCE_HOSTNAME"

# $applianceName = "YOUR_APPLIANCE_HOSTNAME"
$bearerToken = @{"Authorization"="Bearer $accessToken"}
# Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken
""

$TestRunId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Test-run id
$UpdateTestRunCommentRequest = Initialize-LEUpdateTestRunCommentRequest -Comment "MyComment" # UpdateTestRunCommentRequest | Comment (optional)

# Update comment
try {
    $Result = Invoke-DataUpdateComment -TestRunId $TestRunId -UpdateTestRunCommentRequest $UpdateTestRunCommentRequest
} catch {
    Write-Host ("Exception occurred when calling Invoke-DataUpdateComment: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestRunId** | **String**| Test-run id | 
 **UpdateTestRunCommentRequest** | [**UpdateTestRunCommentRequest**](UpdateTestRunCommentRequest.md)| Comment | [optional] 

### Return type

void (empty response body)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


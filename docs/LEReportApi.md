# PSLoginEnterprise.PSLoginEnterprise\Api.LEReportApi

All URIs are relative to */publicApi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-LEDownloadApplicationTestReport**](LEReportApi.md#Invoke-LEDownloadApplicationTestReport) | **GET** /v7/test-runs/{testRunId}/reports/pdf | Download application-test report PDF file by test-run id
[**Invoke-LEDownloadContinuousTestReport**](LEReportApi.md#Invoke-LEDownloadContinuousTestReport) | **GET** /v7/reports/{reportId}/pdf | Download report PDF file by report id
[**Invoke-LEDownloadLoadTestPdfReport**](LEReportApi.md#Invoke-LEDownloadLoadTestPdfReport) | **GET** /v7/reports/load-test-runs/pdf | Download load test report pdf file by list of test run id
[**Get-LEApplicationTestReport**](LEReportApi.md#Get-LEApplicationTestReport) | **GET** /v7/test-runs/{testRunId}/reports | Get application-test report by test-run id
[**Get-LEContinuousTestReport**](LEReportApi.md#Get-LEContinuousTestReport) | **GET** /v7/reports/{reportId} | Get report by id
[**Get-LEContinuousTestReports**](LEReportApi.md#Get-LEContinuousTestReports) | **GET** /v7/tests/{testId}/report-configurations/{configurationId}/reports | Get paginated list of continuous-test reports by configuration id


<a id="Invoke-LEDownloadApplicationTestReport"></a>
# **Invoke-LEDownloadApplicationTestReport**
> System.IO.FileInfo Invoke-LEDownloadApplicationTestReport<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestRunId] <String><br>

Download application-test report PDF file by test-run id

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

$TestRunId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Test-run id

# Download application-test report PDF file by test-run id
try {
    $Result = Invoke-LEDownloadApplicationTestReport -TestRunId $TestRunId
} catch {
    Write-Host ("Exception occurred when calling Invoke-LEDownloadApplicationTestReport: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestRunId** | **String**| Test-run id | 

### Return type

**System.IO.FileInfo**

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-LEDownloadContinuousTestReport"></a>
# **Invoke-LEDownloadContinuousTestReport**
> System.IO.FileInfo Invoke-LEDownloadContinuousTestReport<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ReportId] <String><br>

Download report PDF file by report id

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

$ReportId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Report id

# Download report PDF file by report id
try {
    $Result = Invoke-LEDownloadContinuousTestReport -ReportId $ReportId
} catch {
    Write-Host ("Exception occurred when calling Invoke-LEDownloadContinuousTestReport: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ReportId** | **String**| Report id | 

### Return type

**System.IO.FileInfo**

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-LEDownloadLoadTestPdfReport"></a>
# **Invoke-LEDownloadLoadTestPdfReport**
> System.IO.FileInfo Invoke-LEDownloadLoadTestPdfReport<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestRunIds] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Introduction] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EuxAndVsiMax] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Logins] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Applications] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SessionMetrics] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ActiveSessions] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LoginWindowFinished] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupPerCategoryGraphs] <System.Nullable[Boolean]><br>

Download load test report pdf file by list of test run id

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

$TestRunIds = "MyTestRunIds" # String[] | Test run ids
$Introduction = $true # Boolean | Enable introduction (optional)
$EuxAndVsiMax = $true # Boolean | Enable eux and vsi max (optional)
$Logins = $true # Boolean | Enable logins (optional)
$Applications = $true # Boolean | Enable applications (optional)
$SessionMetrics = $true # Boolean | Enable session metrics (optional)
$ActiveSessions = $true # Boolean | Enable active sessions (optional)
$LoginWindowFinished = $true # Boolean | Enable login window finished (optional)
$GroupPerCategoryGraphs = $true # Boolean | Enable group per category (optional)

# Download load test report pdf file by list of test run id
try {
    $Result = Invoke-LEDownloadLoadTestPdfReport -TestRunIds $TestRunIds -Introduction $Introduction -EuxAndVsiMax $EuxAndVsiMax -Logins $Logins -Applications $Applications -SessionMetrics $SessionMetrics -ActiveSessions $ActiveSessions -LoginWindowFinished $LoginWindowFinished -GroupPerCategoryGraphs $GroupPerCategoryGraphs
} catch {
    Write-Host ("Exception occurred when calling Invoke-LEDownloadLoadTestPdfReport: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestRunIds** | [**String[]**](String.md)| Test run ids | 
 **Introduction** | **Boolean**| Enable introduction | [optional] 
 **EuxAndVsiMax** | **Boolean**| Enable eux and vsi max | [optional] 
 **Logins** | **Boolean**| Enable logins | [optional] 
 **Applications** | **Boolean**| Enable applications | [optional] 
 **SessionMetrics** | **Boolean**| Enable session metrics | [optional] 
 **ActiveSessions** | **Boolean**| Enable active sessions | [optional] 
 **LoginWindowFinished** | **Boolean**| Enable login window finished | [optional] 
 **GroupPerCategoryGraphs** | **Boolean**| Enable group per category | [optional] 

### Return type

**System.IO.FileInfo**

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-LEApplicationTestReport"></a>
# **Get-LEApplicationTestReport**
> DataGetApplicationTestReport200Response Get-LEApplicationTestReport<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestRunId] <String><br>

Get application-test report by test-run id

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

$TestRunId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Test-run id

# Get application-test report by test-run id
try {
    $Result = Get-LEApplicationTestReport -TestRunId $TestRunId
} catch {
    Write-Host ("Exception occurred when calling Get-LEApplicationTestReport: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestRunId** | **String**| Test-run id | 

### Return type

[**DataGetApplicationTestReport200Response**](DataGetApplicationTestReport200Response.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-LEContinuousTestReport"></a>
# **Get-LEContinuousTestReport**
> DataGetApplicationTestReport200Response Get-LEContinuousTestReport<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ReportId] <String><br>

Get report by id

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

$ReportId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Report id

# Get report by id
try {
    $Result = Get-LEContinuousTestReport -ReportId $ReportId
} catch {
    Write-Host ("Exception occurred when calling Get-LEContinuousTestReport: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ReportId** | **String**| Report id | 

### Return type

[**DataGetApplicationTestReport200Response**](DataGetApplicationTestReport200Response.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-LEContinuousTestReports"></a>
# **Get-LEContinuousTestReports**
> ReportResultSet Get-LEContinuousTestReports<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ConfigurationId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Direction] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IncludeTotalCount] <System.Nullable[Boolean]><br>

Get paginated list of continuous-test reports by configuration id

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
$ConfigurationId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Configuration id
$Direction = "asc" # SortOrder | Sort direction
$Count = 56 # Int32 | Number of records to return (default to 100)
$Offset = 56 # Int32 | Start offset (optional) (default to 0)
$IncludeTotalCount = $true # Boolean | Include total number of records (optional) (default to $false)

# Get paginated list of continuous-test reports by configuration id
try {
    $Result = Get-LEContinuousTestReports -TestId $TestId -ConfigurationId $ConfigurationId -Direction $Direction -Count $Count -Offset $Offset -IncludeTotalCount $IncludeTotalCount
} catch {
    Write-Host ("Exception occurred when calling Get-LEContinuousTestReports: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestId** | **String**| Test id | 
 **ConfigurationId** | **String**| Configuration id | 
 **Direction** | [**SortOrder**](SortOrder.md)| Sort direction | 
 **Count** | **Int32**| Number of records to return | [default to 100]
 **Offset** | **Int32**| Start offset | [optional] [default to 0]
 **IncludeTotalCount** | **Boolean**| Include total number of records | [optional] [default to $false]

### Return type

[**ReportResultSet**](ReportResultSet.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


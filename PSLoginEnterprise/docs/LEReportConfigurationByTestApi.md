# PSLoginEnterprise.PSLoginEnterprise\Api.LEReportConfigurationByTestApi

All URIs are relative to */publicApi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-LEReportConfiguration**](LEReportConfigurationByTestApi.md#New-LEReportConfiguration) | **POST** /v7/tests/{testId}/report-configurations | Create report-configuration
[**New-LEReportConfigurationThreshold**](LEReportConfigurationByTestApi.md#New-LEReportConfigurationThreshold) | **POST** /v7/tests/{testId}/report-configurations/{configurationId}/thresholds | Create report-configuration app-threshold
[**Invoke-LEDeleteReportConfiguration**](LEReportConfigurationByTestApi.md#Invoke-LEDeleteReportConfiguration) | **DELETE** /v7/tests/{testId}/report-configurations/{configurationId} | Delete report-configuration
[**Invoke-LEDeleteReportConfigurationLogo**](LEReportConfigurationByTestApi.md#Invoke-LEDeleteReportConfigurationLogo) | **DELETE** /v7/tests/{testId}/report-configurations/{configurationId}/logo | Delete report-configuration logo
[**Invoke-LEDeleteReportConfigurationThreshold**](LEReportConfigurationByTestApi.md#Invoke-LEDeleteReportConfigurationThreshold) | **DELETE** /v7/tests/{testId}/report-configurations/{configurationId}/thresholds/{thresholdId} | Delete report-configuration threshold
[**Invoke-LEDeleteReportConfigurationThresholds**](LEReportConfigurationByTestApi.md#Invoke-LEDeleteReportConfigurationThresholds) | **DELETE** /v7/tests/{testId}/report-configurations/{configurationId}/thresholds | Delete multiple report-configuration thresholds
[**Invoke-LEDeleteReportConfigurations**](LEReportConfigurationByTestApi.md#Invoke-LEDeleteReportConfigurations) | **DELETE** /v7/tests/{testId}/report-configurations | Delete multiple report-configuration
[**Get-LEReportConfiguration**](LEReportConfigurationByTestApi.md#Get-LEReportConfiguration) | **GET** /v7/tests/{testId}/report-configurations/{configurationId} | Get report-configuration by id
[**Get-LEReportConfigurationLogo**](LEReportConfigurationByTestApi.md#Get-LEReportConfigurationLogo) | **GET** /v7/tests/{testId}/report-configurations/{configurationId}/logo | Get report-configuration logo
[**Get-LEReportConfigurations**](LEReportConfigurationByTestApi.md#Get-LEReportConfigurations) | **GET** /v7/tests/{testId}/report-configurations | Get paginated list of report-configurations
[**Invoke-LEReplaceReportConfigurationThresholds**](LEReportConfigurationByTestApi.md#Invoke-LEReplaceReportConfigurationThresholds) | **PUT** /v7/tests/{testId}/report-configurations/{configurationId}/thresholds | Replace report-configuration app-thresholds
[**Request-LEReport**](LEReportConfigurationByTestApi.md#Request-LEReport) | **POST** /v7/tests/{testId}/report-configurations/{configurationId}/report-request | Request report by report-configuration id
[**Update-LEReportConfiguration**](LEReportConfigurationByTestApi.md#Update-LEReportConfiguration) | **PUT** /v7/tests/{testId}/report-configurations/{configurationId} | Update report-configuration
[**Update-LEReportConfigurationLogo**](LEReportConfigurationByTestApi.md#Update-LEReportConfigurationLogo) | **PUT** /v7/tests/{testId}/report-configurations/{configurationId}/logo | Upload report-configuration logo (supported file types: .png/.svg/.jpg/.jpeg)
[**Update-LEReportConfigurationThreshold**](LEReportConfigurationByTestApi.md#Update-LEReportConfigurationThreshold) | **PUT** /v7/tests/{testId}/report-configurations/{configurationId}/thresholds/{thresholdId} | Update report-configuration threshold


<a id="New-LEReportConfiguration"></a>
# **New-LEReportConfiguration**
> ObjectId New-LEReportConfiguration<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ReportConfigurationCreate] <PSCustomObject><br>

Create report-configuration

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
$ThresholdUpdate = Initialize-LEThresholdUpdate -IsEnabled $false -Value 0
$ReportNotification = Initialize-LEReportNotification -IsEnabled $false -Recipient "MyRecipient" -Created (Get-Date) -LastModified (Get-Date)
$ReportConfigurationCreate = Initialize-LEReportConfigurationCreate -Frequency "daily" -LatencyThreshold $ThresholdUpdate -LoginTimeThreshold $ThresholdUpdate -TimeZoneOffset "MyTimeZoneOffset" -Name "MyName" -Description "MyDescription" -IsEnabled $false -Notification $ReportNotification # ReportConfigurationCreate | Report-configuration data

# Create report-configuration
try {
    $Result = New-LEReportConfiguration -TestId $TestId -ReportConfigurationCreate $ReportConfigurationCreate
} catch {
    Write-Host ("Exception occurred when calling New-LEReportConfiguration: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestId** | **String**| Test id | 
 **ReportConfigurationCreate** | [**ReportConfigurationCreate**](ReportConfigurationCreate.md)| Report-configuration data | 

### Return type

[**ObjectId**](ObjectId.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="New-LEReportConfigurationThreshold"></a>
# **New-LEReportConfigurationThreshold**
> void New-LEReportConfigurationThreshold<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ConfigurationId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AppThresholdCreate] <PSCustomObject><br>

Create report-configuration app-threshold

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
$ConfigurationId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Report-configuration id
$AppThresholdCreate = Initialize-LEAppThresholdCreate -ApplicationId "MyApplicationId" -Timer "MyTimer" -IsEnabled $false -Value 0 # AppThresholdCreate | App-threshold data

# Create report-configuration app-threshold
try {
    $Result = New-LEReportConfigurationThreshold -TestId $TestId -ConfigurationId $ConfigurationId -AppThresholdCreate $AppThresholdCreate
} catch {
    Write-Host ("Exception occurred when calling New-LEReportConfigurationThreshold: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestId** | **String**| Test id | 
 **ConfigurationId** | **String**| Report-configuration id | 
 **AppThresholdCreate** | [**AppThresholdCreate**](AppThresholdCreate.md)| App-threshold data | 

### Return type

void (empty response body)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-LEDeleteReportConfiguration"></a>
# **Invoke-LEDeleteReportConfiguration**
> void Invoke-LEDeleteReportConfiguration<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ConfigurationId] <String><br>

Delete report-configuration

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
$ConfigurationId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Report-configuration id

# Delete report-configuration
try {
    $Result = Invoke-LEDeleteReportConfiguration -TestId $TestId -ConfigurationId $ConfigurationId
} catch {
    Write-Host ("Exception occurred when calling Invoke-LEDeleteReportConfiguration: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestId** | **String**| Test id | 
 **ConfigurationId** | **String**| Report-configuration id | 

### Return type

void (empty response body)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-LEDeleteReportConfigurationLogo"></a>
# **Invoke-LEDeleteReportConfigurationLogo**
> void Invoke-LEDeleteReportConfigurationLogo<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ConfigurationId] <String><br>

Delete report-configuration logo

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
$ConfigurationId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Report-configuration id

# Delete report-configuration logo
try {
    $Result = Invoke-LEDeleteReportConfigurationLogo -TestId $TestId -ConfigurationId $ConfigurationId
} catch {
    Write-Host ("Exception occurred when calling Invoke-LEDeleteReportConfigurationLogo: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestId** | **String**| Test id | 
 **ConfigurationId** | **String**| Report-configuration id | 

### Return type

void (empty response body)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-LEDeleteReportConfigurationThreshold"></a>
# **Invoke-LEDeleteReportConfigurationThreshold**
> void Invoke-LEDeleteReportConfigurationThreshold<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ConfigurationId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ThresholdId] <String><br>

Delete report-configuration threshold

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
$ConfigurationId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Report-configuration id
$ThresholdId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Threshold id

# Delete report-configuration threshold
try {
    $Result = Invoke-LEDeleteReportConfigurationThreshold -TestId $TestId -ConfigurationId $ConfigurationId -ThresholdId $ThresholdId
} catch {
    Write-Host ("Exception occurred when calling Invoke-LEDeleteReportConfigurationThreshold: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestId** | **String**| Test id | 
 **ConfigurationId** | **String**| Report-configuration id | 
 **ThresholdId** | **String**| Threshold id | 

### Return type

void (empty response body)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-LEDeleteReportConfigurationThresholds"></a>
# **Invoke-LEDeleteReportConfigurationThresholds**
> void Invoke-LEDeleteReportConfigurationThresholds<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ConfigurationId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RequestBody] <String[]><br>

Delete multiple report-configuration thresholds

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
$ConfigurationId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Report-configuration id
$RequestBody = "MyRequestBody" # String[] | Threshold ids

# Delete multiple report-configuration thresholds
try {
    $Result = Invoke-LEDeleteReportConfigurationThresholds -TestId $TestId -ConfigurationId $ConfigurationId -RequestBody $RequestBody
} catch {
    Write-Host ("Exception occurred when calling Invoke-LEDeleteReportConfigurationThresholds: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestId** | **String**| Test id | 
 **ConfigurationId** | **String**| Report-configuration id | 
 **RequestBody** | [**String[]**](String.md)| Threshold ids | 

### Return type

void (empty response body)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-LEDeleteReportConfigurations"></a>
# **Invoke-LEDeleteReportConfigurations**
> void Invoke-LEDeleteReportConfigurations<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RequestBody] <String[]><br>

Delete multiple report-configuration

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
$RequestBody = "MyRequestBody" # String[] | Report-configuration ids

# Delete multiple report-configuration
try {
    $Result = Invoke-LEDeleteReportConfigurations -TestId $TestId -RequestBody $RequestBody
} catch {
    Write-Host ("Exception occurred when calling Invoke-LEDeleteReportConfigurations: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestId** | **String**| Test id | 
 **RequestBody** | [**String[]**](String.md)| Report-configuration ids | 

### Return type

void (empty response body)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-LEReportConfiguration"></a>
# **Get-LEReportConfiguration**
> ReportConfiguration Get-LEReportConfiguration<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ConfigurationId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Include] <PSCustomObject[]><br>

Get report-configuration by id

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
$ConfigurationId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Report=configuration id
$Include = "none" # ReportConfigurationInclude[] | Include options (optional)

# Get report-configuration by id
try {
    $Result = Get-LEReportConfiguration -TestId $TestId -ConfigurationId $ConfigurationId -Include $Include
} catch {
    Write-Host ("Exception occurred when calling Get-LEReportConfiguration: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestId** | **String**| Test id | 
 **ConfigurationId** | **String**| Report&#x3D;configuration id | 
 **Include** | [**ReportConfigurationInclude[]**](ReportConfigurationInclude.md)| Include options | [optional] 

### Return type

[**ReportConfiguration**](ReportConfiguration.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-LEReportConfigurationLogo"></a>
# **Get-LEReportConfigurationLogo**
> void Get-LEReportConfigurationLogo<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ConfigurationId] <String><br>

Get report-configuration logo

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
$ConfigurationId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Report-configuration id

# Get report-configuration logo
try {
    $Result = Get-LEReportConfigurationLogo -TestId $TestId -ConfigurationId $ConfigurationId
} catch {
    Write-Host ("Exception occurred when calling Get-LEReportConfigurationLogo: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestId** | **String**| Test id | 
 **ConfigurationId** | **String**| Report-configuration id | 

### Return type

void (empty response body)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-LEReportConfigurations"></a>
# **Get-LEReportConfigurations**
> ReportConfigurationResultSet Get-LEReportConfigurations<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OrderBy] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Direction] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IncludeTotalCount] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Include] <PSCustomObject[]><br>

Get paginated list of report-configurations

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
$OrderBy = "name" # ReportConfigurationSortKey | Sort Key
$Direction = "asc" # SortOrder | Sort direction
$Count = 56 # Int32 | Number of records to return (default to 100)
$Offset = 56 # Int32 | Start offset (optional) (default to 0)
$IncludeTotalCount = $true # Boolean | Include total number of records (optional) (default to $false)
$Include = "none" # ReportConfigurationInclude[] | Include options (optional)

# Get paginated list of report-configurations
try {
    $Result = Get-LEReportConfigurations -TestId $TestId -OrderBy $OrderBy -Direction $Direction -Count $Count -Offset $Offset -IncludeTotalCount $IncludeTotalCount -Include $Include
} catch {
    Write-Host ("Exception occurred when calling Get-LEReportConfigurations: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestId** | **String**| Test id | 
 **OrderBy** | [**ReportConfigurationSortKey**](ReportConfigurationSortKey.md)| Sort Key | 
 **Direction** | [**SortOrder**](SortOrder.md)| Sort direction | 
 **Count** | **Int32**| Number of records to return | [default to 100]
 **Offset** | **Int32**| Start offset | [optional] [default to 0]
 **IncludeTotalCount** | **Boolean**| Include total number of records | [optional] [default to $false]
 **Include** | [**ReportConfigurationInclude[]**](ReportConfigurationInclude.md)| Include options | [optional] 

### Return type

[**ReportConfigurationResultSet**](ReportConfigurationResultSet.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-LEReplaceReportConfigurationThresholds"></a>
# **Invoke-LEReplaceReportConfigurationThresholds**
> void Invoke-LEReplaceReportConfigurationThresholds<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ConfigurationId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AppThresholdCreate] <PSCustomObject[]><br>

Replace report-configuration app-thresholds

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
$ConfigurationId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Report-configuration id
$AppThresholdCreate = Initialize-LEAppThresholdCreate -ApplicationId "MyApplicationId" -Timer "MyTimer" -IsEnabled $false -Value 0 # AppThresholdCreate[] | App-thresholds data

# Replace report-configuration app-thresholds
try {
    $Result = Invoke-LEReplaceReportConfigurationThresholds -TestId $TestId -ConfigurationId $ConfigurationId -AppThresholdCreate $AppThresholdCreate
} catch {
    Write-Host ("Exception occurred when calling Invoke-LEReplaceReportConfigurationThresholds: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestId** | **String**| Test id | 
 **ConfigurationId** | **String**| Report-configuration id | 
 **AppThresholdCreate** | [**AppThresholdCreate[]**](AppThresholdCreate.md)| App-thresholds data | 

### Return type

void (empty response body)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Request-LEReport"></a>
# **Request-LEReport**
> void Request-LEReport<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ConfigurationId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ReportRequest] <PSCustomObject><br>

Request report by report-configuration id

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
$ConfigurationId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Report-configuration id
$ReportRequest = Initialize-LEReportRequest -ReportPeriodStart (Get-Date) # ReportRequest | Report-request data

# Request report by report-configuration id
try {
    $Result = Request-LEReport -TestId $TestId -ConfigurationId $ConfigurationId -ReportRequest $ReportRequest
} catch {
    Write-Host ("Exception occurred when calling Request-LEReport: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestId** | **String**| Test id | 
 **ConfigurationId** | **String**| Report-configuration id | 
 **ReportRequest** | [**ReportRequest**](ReportRequest.md)| Report-request data | 

### Return type

void (empty response body)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-LEReportConfiguration"></a>
# **Update-LEReportConfiguration**
> void Update-LEReportConfiguration<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ConfigurationId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ReportConfigurationUpdate] <PSCustomObject><br>

Update report-configuration

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
$ConfigurationId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Report-configuration id
$ReportNotification = Initialize-LEReportNotification -IsEnabled $false -Recipient "MyRecipient" -Created (Get-Date) -LastModified (Get-Date)
$ReportConfigurationUpdate = Initialize-LEReportConfigurationUpdate -Name "MyName" -Description "MyDescription" -IsEnabled $false -Notification $ReportNotification # ReportConfigurationUpdate | Report-configuration data

# Update report-configuration
try {
    $Result = Update-LEReportConfiguration -TestId $TestId -ConfigurationId $ConfigurationId -ReportConfigurationUpdate $ReportConfigurationUpdate
} catch {
    Write-Host ("Exception occurred when calling Update-LEReportConfiguration: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestId** | **String**| Test id | 
 **ConfigurationId** | **String**| Report-configuration id | 
 **ReportConfigurationUpdate** | [**ReportConfigurationUpdate**](ReportConfigurationUpdate.md)| Report-configuration data | 

### Return type

void (empty response body)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-LEReportConfigurationLogo"></a>
# **Update-LEReportConfigurationLogo**
> void Update-LEReportConfigurationLogo<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ConfigurationId] <String><br>

Upload report-configuration logo (supported file types: .png/.svg/.jpg/.jpeg)

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
$ConfigurationId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Report-configuration id

# Upload report-configuration logo (supported file types: .png/.svg/.jpg/.jpeg)
try {
    $Result = Update-LEReportConfigurationLogo -TestId $TestId -ConfigurationId $ConfigurationId
} catch {
    Write-Host ("Exception occurred when calling Update-LEReportConfigurationLogo: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestId** | **String**| Test id | 
 **ConfigurationId** | **String**| Report-configuration id | 

### Return type

void (empty response body)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-LEReportConfigurationThreshold"></a>
# **Update-LEReportConfigurationThreshold**
> void Update-LEReportConfigurationThreshold<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ConfigurationId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ThresholdId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ThresholdUpdate] <PSCustomObject><br>

Update report-configuration threshold

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
$ConfigurationId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Report-configuration id
$ThresholdId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Threshold id
$ThresholdUpdate = Initialize-LEThresholdUpdate -IsEnabled $false -Value 0 # ThresholdUpdate | Threshold data

# Update report-configuration threshold
try {
    $Result = Update-LEReportConfigurationThreshold -TestId $TestId -ConfigurationId $ConfigurationId -ThresholdId $ThresholdId -ThresholdUpdate $ThresholdUpdate
} catch {
    Write-Host ("Exception occurred when calling Update-LEReportConfigurationThreshold: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestId** | **String**| Test id | 
 **ConfigurationId** | **String**| Report-configuration id | 
 **ThresholdId** | **String**| Threshold id | 
 **ThresholdUpdate** | [**ThresholdUpdate**](ThresholdUpdate.md)| Threshold data | 

### Return type

void (empty response body)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


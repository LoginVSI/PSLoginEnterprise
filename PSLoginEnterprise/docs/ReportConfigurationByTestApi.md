# PSLoginEnterprise.PSLoginEnterprise\Api.ReportConfigurationByTestApi

All URIs are relative to */publicApi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-ConfigurationCreateReportConfiguration**](ReportConfigurationByTestApi.md#Invoke-ConfigurationCreateReportConfiguration) | **POST** /v7/tests/{testId}/report-configurations | Create report-configuration
[**Invoke-ConfigurationCreateReportConfigurationThreshold**](ReportConfigurationByTestApi.md#Invoke-ConfigurationCreateReportConfigurationThreshold) | **POST** /v7/tests/{testId}/report-configurations/{configurationId}/thresholds | Create report-configuration app-threshold
[**Invoke-ConfigurationDeleteReportConfiguration**](ReportConfigurationByTestApi.md#Invoke-ConfigurationDeleteReportConfiguration) | **DELETE** /v7/tests/{testId}/report-configurations/{configurationId} | Delete report-configuration
[**Invoke-ConfigurationDeleteReportConfigurationLogo**](ReportConfigurationByTestApi.md#Invoke-ConfigurationDeleteReportConfigurationLogo) | **DELETE** /v7/tests/{testId}/report-configurations/{configurationId}/logo | Delete report-configuration logo
[**Invoke-ConfigurationDeleteReportConfigurationThreshold**](ReportConfigurationByTestApi.md#Invoke-ConfigurationDeleteReportConfigurationThreshold) | **DELETE** /v7/tests/{testId}/report-configurations/{configurationId}/thresholds/{thresholdId} | Delete report-configuration threshold
[**Invoke-ConfigurationDeleteReportConfigurationThresholds**](ReportConfigurationByTestApi.md#Invoke-ConfigurationDeleteReportConfigurationThresholds) | **DELETE** /v7/tests/{testId}/report-configurations/{configurationId}/thresholds | Delete multiple report-configuration thresholds
[**Invoke-ConfigurationDeleteReportConfigurations**](ReportConfigurationByTestApi.md#Invoke-ConfigurationDeleteReportConfigurations) | **DELETE** /v7/tests/{testId}/report-configurations | Delete multiple report-configuration
[**Invoke-ConfigurationGetReportConfiguration**](ReportConfigurationByTestApi.md#Invoke-ConfigurationGetReportConfiguration) | **GET** /v7/tests/{testId}/report-configurations/{configurationId} | Get report-configuration by id
[**Invoke-ConfigurationGetReportConfigurationLogo**](ReportConfigurationByTestApi.md#Invoke-ConfigurationGetReportConfigurationLogo) | **GET** /v7/tests/{testId}/report-configurations/{configurationId}/logo | Get report-configuration logo
[**Invoke-ConfigurationGetReportConfigurations**](ReportConfigurationByTestApi.md#Invoke-ConfigurationGetReportConfigurations) | **GET** /v7/tests/{testId}/report-configurations | Get paginated list of report-configurations
[**Invoke-ConfigurationReplaceReportConfigurationThresholds**](ReportConfigurationByTestApi.md#Invoke-ConfigurationReplaceReportConfigurationThresholds) | **PUT** /v7/tests/{testId}/report-configurations/{configurationId}/thresholds | Replace report-configuration app-thresholds
[**Invoke-ConfigurationRequestReport**](ReportConfigurationByTestApi.md#Invoke-ConfigurationRequestReport) | **POST** /v7/tests/{testId}/report-configurations/{configurationId}/report-request | Request report by report-configuration id
[**Invoke-ConfigurationUpdateReportConfiguration**](ReportConfigurationByTestApi.md#Invoke-ConfigurationUpdateReportConfiguration) | **PUT** /v7/tests/{testId}/report-configurations/{configurationId} | Update report-configuration
[**Invoke-ConfigurationUpdateReportConfigurationLogo**](ReportConfigurationByTestApi.md#Invoke-ConfigurationUpdateReportConfigurationLogo) | **PUT** /v7/tests/{testId}/report-configurations/{configurationId}/logo | Upload report-configuration logo (supported file types: .png/.svg/.jpg/.jpeg)
[**Invoke-ConfigurationUpdateReportConfigurationThreshold**](ReportConfigurationByTestApi.md#Invoke-ConfigurationUpdateReportConfigurationThreshold) | **PUT** /v7/tests/{testId}/report-configurations/{configurationId}/thresholds/{thresholdId} | Update report-configuration threshold


<a id="Invoke-ConfigurationCreateReportConfiguration"></a>
# **Invoke-ConfigurationCreateReportConfiguration**
> ObjectId Invoke-ConfigurationCreateReportConfiguration<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ReportConfigurationCreate] <PSCustomObject><br>

Create report-configuration

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
$ThresholdUpdate = Initialize-LEThresholdUpdate -IsEnabled $false -Value 0
$ReportNotification = Initialize-LEReportNotification -IsEnabled $false -Recipient "MyRecipient" -Created (Get-Date) -LastModified (Get-Date)
$ReportConfigurationCreate = Initialize-LEReportConfigurationCreate -Frequency "daily" -LatencyThreshold $ThresholdUpdate -LoginTimeThreshold $ThresholdUpdate -TimeZoneOffset "MyTimeZoneOffset" -Name "MyName" -Description "MyDescription" -IsEnabled $false -Notification $ReportNotification # ReportConfigurationCreate | Report-configuration data

# Create report-configuration
try {
    $Result = Invoke-ConfigurationCreateReportConfiguration -TestId $TestId -ReportConfigurationCreate $ReportConfigurationCreate
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationCreateReportConfiguration: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-ConfigurationCreateReportConfigurationThreshold"></a>
# **Invoke-ConfigurationCreateReportConfigurationThreshold**
> void Invoke-ConfigurationCreateReportConfigurationThreshold<br>
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

# $applianceName = "YOUR_APPLIANCE_HOSTNAME"
$bearerToken = @{"Authorization"="Bearer $accessToken"}
# Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken
""

$TestId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Test id
$ConfigurationId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Report-configuration id
$AppThresholdCreate = Initialize-LEAppThresholdCreate -ApplicationId "MyApplicationId" -Timer "MyTimer" -IsEnabled $false -Value 0 # AppThresholdCreate | App-threshold data

# Create report-configuration app-threshold
try {
    $Result = Invoke-ConfigurationCreateReportConfigurationThreshold -TestId $TestId -ConfigurationId $ConfigurationId -AppThresholdCreate $AppThresholdCreate
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationCreateReportConfigurationThreshold: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-ConfigurationDeleteReportConfiguration"></a>
# **Invoke-ConfigurationDeleteReportConfiguration**
> void Invoke-ConfigurationDeleteReportConfiguration<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ConfigurationId] <String><br>

Delete report-configuration

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
$ConfigurationId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Report-configuration id

# Delete report-configuration
try {
    $Result = Invoke-ConfigurationDeleteReportConfiguration -TestId $TestId -ConfigurationId $ConfigurationId
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationDeleteReportConfiguration: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-ConfigurationDeleteReportConfigurationLogo"></a>
# **Invoke-ConfigurationDeleteReportConfigurationLogo**
> void Invoke-ConfigurationDeleteReportConfigurationLogo<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ConfigurationId] <String><br>

Delete report-configuration logo

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
$ConfigurationId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Report-configuration id

# Delete report-configuration logo
try {
    $Result = Invoke-ConfigurationDeleteReportConfigurationLogo -TestId $TestId -ConfigurationId $ConfigurationId
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationDeleteReportConfigurationLogo: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-ConfigurationDeleteReportConfigurationThreshold"></a>
# **Invoke-ConfigurationDeleteReportConfigurationThreshold**
> void Invoke-ConfigurationDeleteReportConfigurationThreshold<br>
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

# $applianceName = "YOUR_APPLIANCE_HOSTNAME"
$bearerToken = @{"Authorization"="Bearer $accessToken"}
# Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken
""

$TestId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Test id
$ConfigurationId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Report-configuration id
$ThresholdId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Threshold id

# Delete report-configuration threshold
try {
    $Result = Invoke-ConfigurationDeleteReportConfigurationThreshold -TestId $TestId -ConfigurationId $ConfigurationId -ThresholdId $ThresholdId
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationDeleteReportConfigurationThreshold: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-ConfigurationDeleteReportConfigurationThresholds"></a>
# **Invoke-ConfigurationDeleteReportConfigurationThresholds**
> void Invoke-ConfigurationDeleteReportConfigurationThresholds<br>
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

# $applianceName = "YOUR_APPLIANCE_HOSTNAME"
$bearerToken = @{"Authorization"="Bearer $accessToken"}
# Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken
""

$TestId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Test id
$ConfigurationId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Report-configuration id
$RequestBody = "MyRequestBody" # String[] | Threshold ids

# Delete multiple report-configuration thresholds
try {
    $Result = Invoke-ConfigurationDeleteReportConfigurationThresholds -TestId $TestId -ConfigurationId $ConfigurationId -RequestBody $RequestBody
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationDeleteReportConfigurationThresholds: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-ConfigurationDeleteReportConfigurations"></a>
# **Invoke-ConfigurationDeleteReportConfigurations**
> void Invoke-ConfigurationDeleteReportConfigurations<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RequestBody] <String[]><br>

Delete multiple report-configuration

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
$RequestBody = "MyRequestBody" # String[] | Report-configuration ids

# Delete multiple report-configuration
try {
    $Result = Invoke-ConfigurationDeleteReportConfigurations -TestId $TestId -RequestBody $RequestBody
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationDeleteReportConfigurations: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-ConfigurationGetReportConfiguration"></a>
# **Invoke-ConfigurationGetReportConfiguration**
> ReportConfiguration Invoke-ConfigurationGetReportConfiguration<br>
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

# $applianceName = "YOUR_APPLIANCE_HOSTNAME"
$bearerToken = @{"Authorization"="Bearer $accessToken"}
# Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken
""

$TestId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Test id
$ConfigurationId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Report=configuration id
$Include = "none" # ReportConfigurationInclude[] | Include options (optional)

# Get report-configuration by id
try {
    $Result = Invoke-ConfigurationGetReportConfiguration -TestId $TestId -ConfigurationId $ConfigurationId -Include $Include
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationGetReportConfiguration: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-ConfigurationGetReportConfigurationLogo"></a>
# **Invoke-ConfigurationGetReportConfigurationLogo**
> void Invoke-ConfigurationGetReportConfigurationLogo<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ConfigurationId] <String><br>

Get report-configuration logo

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
$ConfigurationId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Report-configuration id

# Get report-configuration logo
try {
    $Result = Invoke-ConfigurationGetReportConfigurationLogo -TestId $TestId -ConfigurationId $ConfigurationId
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationGetReportConfigurationLogo: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-ConfigurationGetReportConfigurations"></a>
# **Invoke-ConfigurationGetReportConfigurations**
> ReportConfigurationResultSet Invoke-ConfigurationGetReportConfigurations<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OrderBy] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Direction] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Int32]><br>
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

# $applianceName = "YOUR_APPLIANCE_HOSTNAME"
$bearerToken = @{"Authorization"="Bearer $accessToken"}
# Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken
""

$TestId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Test id
$OrderBy = "name" # ReportConfigurationSortKey | Sort Key (optional)
$Direction = "asc" # SortOrder | Sort direction (optional)
$Count = 56 # Int32 | Number of records to return (optional) (default to 100)
$Offset = 56 # Int32 | Start offset (optional) (default to 0)
$IncludeTotalCount = $true # Boolean | Include total number of records (optional) (default to $false)
$Include = "none" # ReportConfigurationInclude[] | Include options (optional)

# Get paginated list of report-configurations
try {
    $Result = Invoke-ConfigurationGetReportConfigurations -TestId $TestId -OrderBy $OrderBy -Direction $Direction -Count $Count -Offset $Offset -IncludeTotalCount $IncludeTotalCount -Include $Include
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationGetReportConfigurations: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestId** | **String**| Test id | 
 **OrderBy** | [**ReportConfigurationSortKey**](ReportConfigurationSortKey.md)| Sort Key | [optional] 
 **Direction** | [**SortOrder**](SortOrder.md)| Sort direction | [optional] 
 **Count** | **Int32**| Number of records to return | [optional] [default to 100]
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

<a id="Invoke-ConfigurationReplaceReportConfigurationThresholds"></a>
# **Invoke-ConfigurationReplaceReportConfigurationThresholds**
> void Invoke-ConfigurationReplaceReportConfigurationThresholds<br>
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

# $applianceName = "YOUR_APPLIANCE_HOSTNAME"
$bearerToken = @{"Authorization"="Bearer $accessToken"}
# Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken
""

$TestId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Test id
$ConfigurationId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Report-configuration id
$AppThresholdCreate = Initialize-LEAppThresholdCreate -ApplicationId "MyApplicationId" -Timer "MyTimer" -IsEnabled $false -Value 0 # AppThresholdCreate[] | App-thresholds data

# Replace report-configuration app-thresholds
try {
    $Result = Invoke-ConfigurationReplaceReportConfigurationThresholds -TestId $TestId -ConfigurationId $ConfigurationId -AppThresholdCreate $AppThresholdCreate
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationReplaceReportConfigurationThresholds: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-ConfigurationRequestReport"></a>
# **Invoke-ConfigurationRequestReport**
> void Invoke-ConfigurationRequestReport<br>
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

# $applianceName = "YOUR_APPLIANCE_HOSTNAME"
$bearerToken = @{"Authorization"="Bearer $accessToken"}
# Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken
""

$TestId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Test id
$ConfigurationId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Report-configuration id
$ReportRequest = Initialize-LEReportRequest -ReportPeriodStart (Get-Date) # ReportRequest | Report-request data

# Request report by report-configuration id
try {
    $Result = Invoke-ConfigurationRequestReport -TestId $TestId -ConfigurationId $ConfigurationId -ReportRequest $ReportRequest
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationRequestReport: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-ConfigurationUpdateReportConfiguration"></a>
# **Invoke-ConfigurationUpdateReportConfiguration**
> void Invoke-ConfigurationUpdateReportConfiguration<br>
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

# $applianceName = "YOUR_APPLIANCE_HOSTNAME"
$bearerToken = @{"Authorization"="Bearer $accessToken"}
# Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken
""

$TestId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Test id
$ConfigurationId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Report-configuration id
$ReportNotification = Initialize-LEReportNotification -IsEnabled $false -Recipient "MyRecipient" -Created (Get-Date) -LastModified (Get-Date)
$ReportConfigurationUpdate = Initialize-LEReportConfigurationUpdate -Name "MyName" -Description "MyDescription" -IsEnabled $false -Notification $ReportNotification # ReportConfigurationUpdate | Report-configuration data

# Update report-configuration
try {
    $Result = Invoke-ConfigurationUpdateReportConfiguration -TestId $TestId -ConfigurationId $ConfigurationId -ReportConfigurationUpdate $ReportConfigurationUpdate
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationUpdateReportConfiguration: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-ConfigurationUpdateReportConfigurationLogo"></a>
# **Invoke-ConfigurationUpdateReportConfigurationLogo**
> void Invoke-ConfigurationUpdateReportConfigurationLogo<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ConfigurationId] <String><br>

Upload report-configuration logo (supported file types: .png/.svg/.jpg/.jpeg)

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
$ConfigurationId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Report-configuration id

# Upload report-configuration logo (supported file types: .png/.svg/.jpg/.jpeg)
try {
    $Result = Invoke-ConfigurationUpdateReportConfigurationLogo -TestId $TestId -ConfigurationId $ConfigurationId
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationUpdateReportConfigurationLogo: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-ConfigurationUpdateReportConfigurationThreshold"></a>
# **Invoke-ConfigurationUpdateReportConfigurationThreshold**
> void Invoke-ConfigurationUpdateReportConfigurationThreshold<br>
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

# $applianceName = "YOUR_APPLIANCE_HOSTNAME"
$bearerToken = @{"Authorization"="Bearer $accessToken"}
# Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken
""

$TestId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Test id
$ConfigurationId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Report-configuration id
$ThresholdId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Threshold id
$ThresholdUpdate = Initialize-LEThresholdUpdate -IsEnabled $false -Value 0 # ThresholdUpdate | Threshold data

# Update report-configuration threshold
try {
    $Result = Invoke-ConfigurationUpdateReportConfigurationThreshold -TestId $TestId -ConfigurationId $ConfigurationId -ThresholdId $ThresholdId -ThresholdUpdate $ThresholdUpdate
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationUpdateReportConfigurationThreshold: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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


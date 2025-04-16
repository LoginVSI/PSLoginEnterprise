# PSLoginEnterprise.PSLoginEnterprise\Api.LEUserSessionMetricDefinitionApi

All URIs are relative to */publicApi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-LEUserSessionMetricDefinition**](LEUserSessionMetricDefinitionApi.md#New-LEUserSessionMetricDefinition) | **POST** /v7/user-session-metric-definitions | Create user session metric definition
[**Invoke-LEDeleteUserSessionMetricDefinition**](LEUserSessionMetricDefinitionApi.md#Invoke-LEDeleteUserSessionMetricDefinition) | **DELETE** /v7/user-session-metric-definitions/{definitionId} | Delete user session metric definition
[**Get-LEUserSessionMetricDefinitionByKey**](LEUserSessionMetricDefinitionApi.md#Get-LEUserSessionMetricDefinitionByKey) | **GET** /v7/user-session-metric-definitions/{definitionId} | Get a user session metric definition by Id
[**Get-LEUserSessionMetricDefinitions**](LEUserSessionMetricDefinitionApi.md#Get-LEUserSessionMetricDefinitions) | **GET** /v7/user-session-metric-definitions | Get paginated user session metric definitions
[**Update-LEUserSessionMetricDefinition**](LEUserSessionMetricDefinitionApi.md#Update-LEUserSessionMetricDefinition) | **PUT** /v7/user-session-metric-definitions/{definitionId} | Update user session metric definition


<a id="New-LEUserSessionMetricDefinition"></a>
# **New-LEUserSessionMetricDefinition**
> ObjectId New-LEUserSessionMetricDefinition<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DataCreateUserSessionMetricDefinitionRequest] <PSCustomObject><br>

Create user session metric definition

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

$PerformanceCounterMeasurementDefinitionCreate = Initialize-LEPerformanceCounterMeasurementDefinitionCreate -CounterCategory "MyCounterCategory" -CounterName "MyCounterName" -CounterInstance "MyCounterInstance" -DisplayName "MyDisplayName" -Unit "MyUnit"
$WmiQueryMeasurementDefinitionCreate = Initialize-LEWmiQueryMeasurementDefinitionCreate -PropertyName "MyPropertyName" -SummarizeOperation "none" -DisplayName "MyDisplayName" -Unit "MyUnit"
$DataCreateUserSessionMetricDefinitionRequest = Initialize-LEDataCreateUserSessionMetricDefinitionRequest -Type "MyType" -Name "MyName" -Description "MyDescription" -Tag "MyTag" -Measurement $PerformanceCounterMeasurementDefinitionCreate -WmiQuery "MyWmiQuery" -Namespace "MyNamespace" -InstanceField "MyInstanceField" -Measurements $WmiQueryMeasurementDefinitionCreate # DataCreateUserSessionMetricDefinitionRequest | Session metric definition creation data

# Create user session metric definition
try {
    $Result = New-LEUserSessionMetricDefinition -DataCreateUserSessionMetricDefinitionRequest $DataCreateUserSessionMetricDefinitionRequest
} catch {
    Write-Host ("Exception occurred when calling New-LEUserSessionMetricDefinition: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DataCreateUserSessionMetricDefinitionRequest** | [**DataCreateUserSessionMetricDefinitionRequest**](DataCreateUserSessionMetricDefinitionRequest.md)| Session metric definition creation data | 

### Return type

[**ObjectId**](ObjectId.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-LEDeleteUserSessionMetricDefinition"></a>
# **Invoke-LEDeleteUserSessionMetricDefinition**
> void Invoke-LEDeleteUserSessionMetricDefinition<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DefinitionId] <String><br>

Delete user session metric definition

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

$DefinitionId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | User session metric definition Id

# Delete user session metric definition
try {
    $Result = Invoke-LEDeleteUserSessionMetricDefinition -DefinitionId $DefinitionId
} catch {
    Write-Host ("Exception occurred when calling Invoke-LEDeleteUserSessionMetricDefinition: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DefinitionId** | **String**| User session metric definition Id | 

### Return type

void (empty response body)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-LEUserSessionMetricDefinitionByKey"></a>
# **Get-LEUserSessionMetricDefinitionByKey**
> DataGetUserSessionMetricDefinitionByKey200Response Get-LEUserSessionMetricDefinitionByKey<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DefinitionId] <String><br>

Get a user session metric definition by Id

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

$DefinitionId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | User session metric definition Id

# Get a user session metric definition by Id
try {
    $Result = Get-LEUserSessionMetricDefinitionByKey -DefinitionId $DefinitionId
} catch {
    Write-Host ("Exception occurred when calling Get-LEUserSessionMetricDefinitionByKey: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DefinitionId** | **String**| User session metric definition Id | 

### Return type

[**DataGetUserSessionMetricDefinitionByKey200Response**](DataGetUserSessionMetricDefinitionByKey200Response.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-LEUserSessionMetricDefinitions"></a>
# **Get-LEUserSessionMetricDefinitions**
> UserSessionMetricDefinitionResultSet Get-LEUserSessionMetricDefinitions<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OrderBy] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Direction] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IncludeTotalCount] <System.Nullable[Boolean]><br>

Get paginated user session metric definitions

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

$OrderBy = "definitionType" # SessionMetricDefinitionSortKey | Sort Key
$Direction = "asc" # SortOrder | Sort direction
$Count = 56 # Int32 | Number of records to return (default to 100)
$Offset = 56 # Int32 | Start offset (optional) (default to 0)
$IncludeTotalCount = $true # Boolean | Include total number of records (optional) (default to $false)

# Get paginated user session metric definitions
try {
    $Result = Get-LEUserSessionMetricDefinitions -OrderBy $OrderBy -Direction $Direction -Count $Count -Offset $Offset -IncludeTotalCount $IncludeTotalCount
} catch {
    Write-Host ("Exception occurred when calling Get-LEUserSessionMetricDefinitions: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **OrderBy** | [**SessionMetricDefinitionSortKey**](SessionMetricDefinitionSortKey.md)| Sort Key | 
 **Direction** | [**SortOrder**](SortOrder.md)| Sort direction | 
 **Count** | **Int32**| Number of records to return | [default to 100]
 **Offset** | **Int32**| Start offset | [optional] [default to 0]
 **IncludeTotalCount** | **Boolean**| Include total number of records | [optional] [default to $false]

### Return type

[**UserSessionMetricDefinitionResultSet**](UserSessionMetricDefinitionResultSet.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-LEUserSessionMetricDefinition"></a>
# **Update-LEUserSessionMetricDefinition**
> void Update-LEUserSessionMetricDefinition<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DefinitionId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserSessionMetricDefinitionUpdate] <PSCustomObject><br>

Update user session metric definition

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

$DefinitionId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | User session metric definition id
$UserSessionMetricDefinitionUpdate = Initialize-LEUserSessionMetricDefinitionUpdate -Name "MyName" -Description "MyDescription" # UserSessionMetricDefinitionUpdate | User session metric definition data

# Update user session metric definition
try {
    $Result = Update-LEUserSessionMetricDefinition -DefinitionId $DefinitionId -UserSessionMetricDefinitionUpdate $UserSessionMetricDefinitionUpdate
} catch {
    Write-Host ("Exception occurred when calling Update-LEUserSessionMetricDefinition: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DefinitionId** | **String**| User session metric definition id | 
 **UserSessionMetricDefinitionUpdate** | [**UserSessionMetricDefinitionUpdate**](UserSessionMetricDefinitionUpdate.md)| User session metric definition data | 

### Return type

void (empty response body)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


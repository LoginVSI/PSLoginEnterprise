# PSLoginEnterprise.PSLoginEnterprise\Api.EnvironmentApi

All URIs are relative to */publicApi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-DataAddEnvironmentToTests**](EnvironmentApi.md#Invoke-DataAddEnvironmentToTests) | **PUT** /v7/environments/{environmentId}/tests | Add tests to an environment
[**Invoke-DataCreateEnvironment**](EnvironmentApi.md#Invoke-DataCreateEnvironment) | **POST** /v7/environments | Create environment
[**Invoke-DataDeleteEnvironment**](EnvironmentApi.md#Invoke-DataDeleteEnvironment) | **DELETE** /v7/environments/{environmentId} | Delete environment
[**Invoke-DataGetEnvironmentById**](EnvironmentApi.md#Invoke-DataGetEnvironmentById) | **GET** /v7/environments/{environmentId} | Get environment by id
[**Invoke-DataGetEnvironmentCostHistory**](EnvironmentApi.md#Invoke-DataGetEnvironmentCostHistory) | **GET** /v7/environments/{environmentId}/cost/history | Get cost history for a given environment
[**Invoke-DataGetEnvironments**](EnvironmentApi.md#Invoke-DataGetEnvironments) | **GET** /v7/environments | Get a list of environments
[**Invoke-DataGetTestsByEnvironmentKey**](EnvironmentApi.md#Invoke-DataGetTestsByEnvironmentKey) | **GET** /v7/environments/tests | Get tests by environment id
[**Invoke-DataRemoveEnvironmentFromTests**](EnvironmentApi.md#Invoke-DataRemoveEnvironmentFromTests) | **DELETE** /v7/environments/{environmentId}/tests | Delete tests from environment
[**Invoke-DataUpdateEnvironment**](EnvironmentApi.md#Invoke-DataUpdateEnvironment) | **PUT** /v7/environments/{environmentId} | Update environment


<a id="Invoke-DataAddEnvironmentToTests"></a>
# **Invoke-DataAddEnvironmentToTests**
> void Invoke-DataAddEnvironmentToTests<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EnvironmentId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RequestBody] <String[]><br>

Add tests to an environment

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

$EnvironmentId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Environment id
$RequestBody = "MyRequestBody" # String[] | Test Key list

# Add tests to an environment
try {
    $Result = Invoke-DataAddEnvironmentToTests -EnvironmentId $EnvironmentId -RequestBody $RequestBody
} catch {
    Write-Host ("Exception occurred when calling Invoke-DataAddEnvironmentToTests: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EnvironmentId** | **String**| Environment id | 
 **RequestBody** | [**String[]**](String.md)| Test Key list | 

### Return type

void (empty response body)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DataCreateEnvironment"></a>
# **Invoke-DataCreateEnvironment**
> ObjectId Invoke-DataCreateEnvironment<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EnvironmentData] <PSCustomObject><br>

Create environment

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

$EnvironmentCost = Initialize-LEEnvironmentCost -Currency "usd" -ExpectedUserAmount 0 -ActualUserAmount 0 -CapitalExpenditures 0 -OperationalExpenditures 0
$EnvironmentAttributes = Initialize-LEEnvironmentAttributes -ResourceGroup "MyResourceGroup" -HostPool "MyHostPool"
$EnvironmentData = Initialize-LEEnvironmentData -Name "MyName" -Description "MyDescription" -EnableEnvironmentDataCollection $false -EnableCostCalculation $false -EnvironmentCost $EnvironmentCost -EnvironmentAttributes $EnvironmentAttributes -ProviderId "MyProviderId" # EnvironmentData | Environment data

# Create environment
try {
    $Result = Invoke-DataCreateEnvironment -EnvironmentData $EnvironmentData
} catch {
    Write-Host ("Exception occurred when calling Invoke-DataCreateEnvironment: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EnvironmentData** | [**EnvironmentData**](EnvironmentData.md)| Environment data | 

### Return type

[**ObjectId**](ObjectId.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DataDeleteEnvironment"></a>
# **Invoke-DataDeleteEnvironment**
> void Invoke-DataDeleteEnvironment<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EnvironmentId] <String><br>

Delete environment

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

$EnvironmentId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Environment id

# Delete environment
try {
    $Result = Invoke-DataDeleteEnvironment -EnvironmentId $EnvironmentId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DataDeleteEnvironment: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EnvironmentId** | **String**| Environment id | 

### Return type

void (empty response body)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DataGetEnvironmentById"></a>
# **Invoke-DataGetEnvironmentById**
> Environment Invoke-DataGetEnvironmentById<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EnvironmentId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Include] <PSCustomObject[]><br>

Get environment by id

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

$EnvironmentId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Environment id
$Include = "none" # EnvironmentInclude[] | Include options (optional)

# Get environment by id
try {
    $Result = Invoke-DataGetEnvironmentById -EnvironmentId $EnvironmentId -Include $Include
} catch {
    Write-Host ("Exception occurred when calling Invoke-DataGetEnvironmentById: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EnvironmentId** | **String**| Environment id | 
 **Include** | [**EnvironmentInclude[]**](EnvironmentInclude.md)| Include options | [optional] 

### Return type

[**Environment**](Environment.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DataGetEnvironmentCostHistory"></a>
# **Invoke-DataGetEnvironmentCostHistory**
> EnvironmentCostSnapshot[] Invoke-DataGetEnvironmentCostHistory<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EnvironmentId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-From] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-To] <System.Nullable[System.DateTime]><br>

Get cost history for a given environment

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

$EnvironmentId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Environment id
$From = (Get-Date) # System.DateTime | Include EnvironmentCost where Timestamp is greater than the specified date-time (optional) (optional)
$To = (Get-Date) # System.DateTime | Include EnvironmentCost where Timestamp is less than the specified date-time (optional) (optional)

# Get cost history for a given environment
try {
    $Result = Invoke-DataGetEnvironmentCostHistory -EnvironmentId $EnvironmentId -From $From -To $To
} catch {
    Write-Host ("Exception occurred when calling Invoke-DataGetEnvironmentCostHistory: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EnvironmentId** | **String**| Environment id | 
 **From** | **System.DateTime**| Include EnvironmentCost where Timestamp is greater than the specified date-time (optional) | [optional] 
 **To** | **System.DateTime**| Include EnvironmentCost where Timestamp is less than the specified date-time (optional) | [optional] 

### Return type

[**EnvironmentCostSnapshot[]**](EnvironmentCostSnapshot.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DataGetEnvironments"></a>
# **Invoke-DataGetEnvironments**
> EnvironmentResultSet Invoke-DataGetEnvironments<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OrderBy] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Direction] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IncludeTotalCount] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Include] <PSCustomObject[]><br>

Get a list of environments

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

$Filter = "MyFilter" # String | Filter the query by a subtext or keyword in the environment's name or description (optional)
$OrderBy = "name" # EnvironmentSortKey | Sort Key (optional)
$Direction = "asc" # SortOrder | Sort direction (optional)
$Count = 56 # Int32 | Number of records to return (optional) (default to 100)
$Offset = 56 # Int32 | Start offset (optional) (default to 0)
$IncludeTotalCount = $true # Boolean | Include total number of records (optional) (default to $false)
$Include = "none" # EnvironmentInclude[] | Include options (optional)

# Get a list of environments
try {
    $Result = Invoke-DataGetEnvironments -Filter $Filter -OrderBy $OrderBy -Direction $Direction -Count $Count -Offset $Offset -IncludeTotalCount $IncludeTotalCount -Include $Include
} catch {
    Write-Host ("Exception occurred when calling Invoke-DataGetEnvironments: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Filter** | **String**| Filter the query by a subtext or keyword in the environment&#39;s name or description | [optional] 
 **OrderBy** | [**EnvironmentSortKey**](EnvironmentSortKey.md)| Sort Key | [optional] 
 **Direction** | [**SortOrder**](SortOrder.md)| Sort direction | [optional] 
 **Count** | **Int32**| Number of records to return | [optional] [default to 100]
 **Offset** | **Int32**| Start offset | [optional] [default to 0]
 **IncludeTotalCount** | **Boolean**| Include total number of records | [optional] [default to $false]
 **Include** | [**EnvironmentInclude[]**](EnvironmentInclude.md)| Include options | [optional] 

### Return type

[**EnvironmentResultSet**](EnvironmentResultSet.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DataGetTestsByEnvironmentKey"></a>
# **Invoke-DataGetTestsByEnvironmentKey**
> TestResultSet Invoke-DataGetTestsByEnvironmentKey<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Type] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EnvironmentId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OrderBy] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Direction] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IncludeTotalCount] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Include] <PSCustomObject[]><br>

Get tests by environment id

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

$Type = "applicationTest" # TestType | Test type (Only continuous and load test types are supported)
$EnvironmentId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | A test's environment id. Empty when fetching tests without an assigned environment (optional)
$Filter = "MyFilter" # String | Filter the tests (optional)
$OrderBy = "name" # TestSortKey | Sort Key (optional)
$Direction = "asc" # SortOrder | Sort direction (optional)
$Count = 56 # Int32 | Number of records to return (optional) (default to 100)
$Offset = 56 # Int32 | Start offset (optional) (default to 0)
$IncludeTotalCount = $true # Boolean | Include total number of records (optional) (default to $false)
$Include = "none" # TestInclude[] | Include options (optional)

# Get tests by environment id
try {
    $Result = Invoke-DataGetTestsByEnvironmentKey -Type $Type -EnvironmentId $EnvironmentId -Filter $Filter -OrderBy $OrderBy -Direction $Direction -Count $Count -Offset $Offset -IncludeTotalCount $IncludeTotalCount -Include $Include
} catch {
    Write-Host ("Exception occurred when calling Invoke-DataGetTestsByEnvironmentKey: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Type** | [**TestType**](TestType.md)| Test type (Only continuous and load test types are supported) | 
 **EnvironmentId** | **String**| A test&#39;s environment id. Empty when fetching tests without an assigned environment | [optional] 
 **Filter** | **String**| Filter the tests | [optional] 
 **OrderBy** | [**TestSortKey**](TestSortKey.md)| Sort Key | [optional] 
 **Direction** | [**SortOrder**](SortOrder.md)| Sort direction | [optional] 
 **Count** | **Int32**| Number of records to return | [optional] [default to 100]
 **Offset** | **Int32**| Start offset | [optional] [default to 0]
 **IncludeTotalCount** | **Boolean**| Include total number of records | [optional] [default to $false]
 **Include** | [**TestInclude[]**](TestInclude.md)| Include options | [optional] 

### Return type

[**TestResultSet**](TestResultSet.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DataRemoveEnvironmentFromTests"></a>
# **Invoke-DataRemoveEnvironmentFromTests**
> void Invoke-DataRemoveEnvironmentFromTests<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EnvironmentId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RequestBody] <String[]><br>

Delete tests from environment

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

$EnvironmentId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Environment id
$RequestBody = "MyRequestBody" # String[] | Test key list

# Delete tests from environment
try {
    $Result = Invoke-DataRemoveEnvironmentFromTests -EnvironmentId $EnvironmentId -RequestBody $RequestBody
} catch {
    Write-Host ("Exception occurred when calling Invoke-DataRemoveEnvironmentFromTests: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EnvironmentId** | **String**| Environment id | 
 **RequestBody** | [**String[]**](String.md)| Test key list | 

### Return type

void (empty response body)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DataUpdateEnvironment"></a>
# **Invoke-DataUpdateEnvironment**
> UpdateFromProviderResult Invoke-DataUpdateEnvironment<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EnvironmentId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EnvironmentData] <PSCustomObject><br>

Update environment

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

$EnvironmentId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Environment id
$EnvironmentCost = Initialize-LEEnvironmentCost -Currency "usd" -ExpectedUserAmount 0 -ActualUserAmount 0 -CapitalExpenditures 0 -OperationalExpenditures 0
$EnvironmentAttributes = Initialize-LEEnvironmentAttributes -ResourceGroup "MyResourceGroup" -HostPool "MyHostPool"
$EnvironmentData = Initialize-LEEnvironmentData -Name "MyName" -Description "MyDescription" -EnableEnvironmentDataCollection $false -EnableCostCalculation $false -EnvironmentCost $EnvironmentCost -EnvironmentAttributes $EnvironmentAttributes -ProviderId "MyProviderId" # EnvironmentData | Environment data

# Update environment
try {
    $Result = Invoke-DataUpdateEnvironment -EnvironmentId $EnvironmentId -EnvironmentData $EnvironmentData
} catch {
    Write-Host ("Exception occurred when calling Invoke-DataUpdateEnvironment: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EnvironmentId** | **String**| Environment id | 
 **EnvironmentData** | [**EnvironmentData**](EnvironmentData.md)| Environment data | 

### Return type

[**UpdateFromProviderResult**](UpdateFromProviderResult.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


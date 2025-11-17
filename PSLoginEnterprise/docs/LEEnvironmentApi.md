# PSLoginEnterprise.PSLoginEnterprise\Api.LEEnvironmentApi

All URIs are relative to */publicApi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Add-LEEnvironmentToTests**](LEEnvironmentApi.md#Add-LEEnvironmentToTests) | **PUT** /v7/environments/{environmentId}/tests | Add tests to an environment
[**New-LEEnvironment**](LEEnvironmentApi.md#New-LEEnvironment) | **POST** /v7/environments | Create environment
[**Invoke-LEDeleteEnvironment**](LEEnvironmentApi.md#Invoke-LEDeleteEnvironment) | **DELETE** /v7/environments/{environmentId} | Delete environment
[**Get-LEEnvironmentById**](LEEnvironmentApi.md#Get-LEEnvironmentById) | **GET** /v7/environments/{environmentId} | Get environment by id
[**Get-LEEnvironmentCostHistory**](LEEnvironmentApi.md#Get-LEEnvironmentCostHistory) | **GET** /v7/environments/{environmentId}/cost/history | Get cost history for a given environment
[**Get-LEEnvironments**](LEEnvironmentApi.md#Get-LEEnvironments) | **GET** /v7/environments | Get a list of environments
[**Get-LETestsByEnvironmentKey**](LEEnvironmentApi.md#Get-LETestsByEnvironmentKey) | **GET** /v7/environments/tests | Get tests by environment id
[**Remove-LEEnvironmentFromTests**](LEEnvironmentApi.md#Remove-LEEnvironmentFromTests) | **DELETE** /v7/environments/{environmentId}/tests | Delete tests from environment
[**Update-LEEnvironment**](LEEnvironmentApi.md#Update-LEEnvironment) | **PUT** /v7/environments/{environmentId} | Update environment


<a id="Add-LEEnvironmentToTests"></a>
# **Add-LEEnvironmentToTests**
> void Add-LEEnvironmentToTests<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EnvironmentId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RequestBody] <String[]><br>

Add tests to an environment

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

$EnvironmentId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Environment id
$RequestBody = "MyRequestBody" # String[] | Test Key list

# Add tests to an environment
try {
    $Result = Add-LEEnvironmentToTests -EnvironmentId $EnvironmentId -RequestBody $RequestBody
} catch {
    Write-Host ("Exception occurred when calling Add-LEEnvironmentToTests: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="New-LEEnvironment"></a>
# **New-LEEnvironment**
> ObjectId New-LEEnvironment<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EnvironmentData] <PSCustomObject><br>

Create environment

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

$EnvironmentCost = Initialize-LEEnvironmentCost -Currency "usd" -ExpectedUserAmount 0 -ActualUserAmount 0 -CapitalExpenditures 0 -OperationalExpenditures 0
$EnvironmentAttributes = Initialize-LEEnvironmentAttributes -ResourceGroup "MyResourceGroup" -HostPool "MyHostPool"
$EnvironmentData = Initialize-LEEnvironmentData -Name "MyName" -Description "MyDescription" -EnableEnvironmentDataCollection $false -EnableCostCalculation $false -EnvironmentCost $EnvironmentCost -EnvironmentAttributes $EnvironmentAttributes -ProviderId "MyProviderId" # EnvironmentData | Environment data

# Create environment
try {
    $Result = New-LEEnvironment -EnvironmentData $EnvironmentData
} catch {
    Write-Host ("Exception occurred when calling New-LEEnvironment: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-LEDeleteEnvironment"></a>
# **Invoke-LEDeleteEnvironment**
> void Invoke-LEDeleteEnvironment<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EnvironmentId] <String><br>

Delete environment

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

$EnvironmentId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Environment id

# Delete environment
try {
    $Result = Invoke-LEDeleteEnvironment -EnvironmentId $EnvironmentId
} catch {
    Write-Host ("Exception occurred when calling Invoke-LEDeleteEnvironment: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Get-LEEnvironmentById"></a>
# **Get-LEEnvironmentById**
> Environment Get-LEEnvironmentById<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EnvironmentId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Include] <PSCustomObject[]><br>

Get environment by id

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

$EnvironmentId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Environment id
$Include = "none" # EnvironmentInclude[] | Include options (optional)

# Get environment by id
try {
    $Result = Get-LEEnvironmentById -EnvironmentId $EnvironmentId -Include $Include
} catch {
    Write-Host ("Exception occurred when calling Get-LEEnvironmentById: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Get-LEEnvironmentCostHistory"></a>
# **Get-LEEnvironmentCostHistory**
> EnvironmentCostSnapshot[] Get-LEEnvironmentCostHistory<br>
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

# $applianceName = "YOUR_APPLIANCE_URL"
$bearerToken = @{"Authorization"="Bearer $accessToken"}
# Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken
""

$EnvironmentId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Environment id
$From = (Get-Date) # System.DateTime | Include EnvironmentCost where Timestamp is greater than the specified date-time (optional) (optional)
$To = (Get-Date) # System.DateTime | Include EnvironmentCost where Timestamp is less than the specified date-time (optional) (optional)

# Get cost history for a given environment
try {
    $Result = Get-LEEnvironmentCostHistory -EnvironmentId $EnvironmentId -From $From -To $To
} catch {
    Write-Host ("Exception occurred when calling Get-LEEnvironmentCostHistory: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Get-LEEnvironments"></a>
# **Get-LEEnvironments**
> EnvironmentResultSet Get-LEEnvironments<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OrderBy] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Direction] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
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

# $applianceName = "YOUR_APPLIANCE_URL"
$bearerToken = @{"Authorization"="Bearer $accessToken"}
# Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken
""

$OrderBy = "name" # EnvironmentSortKey | Sort Key
$Direction = "asc" # SortOrder | Sort direction
$Count = 56 # Int32 | Number of records to return (default to 100)
$Filter = "MyFilter" # String | Filter the query by a subtext or keyword in the environment's name or description (optional)
$Offset = 56 # Int32 | Start offset (optional) (default to 0)
$IncludeTotalCount = $true # Boolean | Include total number of records (optional) (default to $false)
$Include = "none" # EnvironmentInclude[] | Include options (optional)

# Get a list of environments
try {
    $Result = Get-LEEnvironments -OrderBy $OrderBy -Direction $Direction -Count $Count -Filter $Filter -Offset $Offset -IncludeTotalCount $IncludeTotalCount -Include $Include
} catch {
    Write-Host ("Exception occurred when calling Get-LEEnvironments: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **OrderBy** | [**EnvironmentSortKey**](EnvironmentSortKey.md)| Sort Key | 
 **Direction** | [**SortOrder**](SortOrder.md)| Sort direction | 
 **Count** | **Int32**| Number of records to return | [default to 100]
 **Filter** | **String**| Filter the query by a subtext or keyword in the environment&#39;s name or description | [optional] 
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

<a id="Get-LETestsByEnvironmentKey"></a>
# **Get-LETestsByEnvironmentKey**
> TestResultSet Get-LETestsByEnvironmentKey<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Type] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OrderBy] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Direction] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EnvironmentId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
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

# $applianceName = "YOUR_APPLIANCE_URL"
$bearerToken = @{"Authorization"="Bearer $accessToken"}
# Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken
""

$Type = "applicationTest" # TestType | Test type (Only continuous and load test types are supported)
$OrderBy = "name" # TestSortKey | Sort Key
$Direction = "asc" # SortOrder | Sort direction
$Count = 56 # Int32 | Number of records to return (default to 100)
$EnvironmentId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | A test's environment id. Empty when fetching tests without an assigned environment (optional)
$Filter = "MyFilter" # String | Filter the tests (optional)
$Offset = 56 # Int32 | Start offset (optional) (default to 0)
$IncludeTotalCount = $true # Boolean | Include total number of records (optional) (default to $false)
$Include = "none" # TestInclude[] | Include options (optional)

# Get tests by environment id
try {
    $Result = Get-LETestsByEnvironmentKey -Type $Type -OrderBy $OrderBy -Direction $Direction -Count $Count -EnvironmentId $EnvironmentId -Filter $Filter -Offset $Offset -IncludeTotalCount $IncludeTotalCount -Include $Include
} catch {
    Write-Host ("Exception occurred when calling Get-LETestsByEnvironmentKey: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Type** | [**TestType**](TestType.md)| Test type (Only continuous and load test types are supported) | 
 **OrderBy** | [**TestSortKey**](TestSortKey.md)| Sort Key | 
 **Direction** | [**SortOrder**](SortOrder.md)| Sort direction | 
 **Count** | **Int32**| Number of records to return | [default to 100]
 **EnvironmentId** | **String**| A test&#39;s environment id. Empty when fetching tests without an assigned environment | [optional] 
 **Filter** | **String**| Filter the tests | [optional] 
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

<a id="Remove-LEEnvironmentFromTests"></a>
# **Remove-LEEnvironmentFromTests**
> void Remove-LEEnvironmentFromTests<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EnvironmentId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RequestBody] <String[]><br>

Delete tests from environment

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

$EnvironmentId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Environment id
$RequestBody = "MyRequestBody" # String[] | Test key list

# Delete tests from environment
try {
    $Result = Remove-LEEnvironmentFromTests -EnvironmentId $EnvironmentId -RequestBody $RequestBody
} catch {
    Write-Host ("Exception occurred when calling Remove-LEEnvironmentFromTests: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Update-LEEnvironment"></a>
# **Update-LEEnvironment**
> UpdateFromProviderResult Update-LEEnvironment<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EnvironmentId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EnvironmentData] <PSCustomObject><br>

Update environment

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

$EnvironmentId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Environment id
$EnvironmentCost = Initialize-LEEnvironmentCost -Currency "usd" -ExpectedUserAmount 0 -ActualUserAmount 0 -CapitalExpenditures 0 -OperationalExpenditures 0
$EnvironmentAttributes = Initialize-LEEnvironmentAttributes -ResourceGroup "MyResourceGroup" -HostPool "MyHostPool"
$EnvironmentData = Initialize-LEEnvironmentData -Name "MyName" -Description "MyDescription" -EnableEnvironmentDataCollection $false -EnableCostCalculation $false -EnvironmentCost $EnvironmentCost -EnvironmentAttributes $EnvironmentAttributes -ProviderId "MyProviderId" # EnvironmentData | Environment data

# Update environment
try {
    $Result = Update-LEEnvironment -EnvironmentId $EnvironmentId -EnvironmentData $EnvironmentData
} catch {
    Write-Host ("Exception occurred when calling Update-LEEnvironment: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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


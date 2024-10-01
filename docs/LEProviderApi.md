# PSLoginEnterprise.PSLoginEnterprise\Api.LEProviderApi

All URIs are relative to */publicApi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-LEProvider**](LEProviderApi.md#New-LEProvider) | **POST** /v7-preview/providers | Create provider
[**Invoke-LEDeleteProvider**](LEProviderApi.md#Invoke-LEDeleteProvider) | **DELETE** /v7-preview/providers/{providerId} | Delete provider
[**Get-LEProviderById**](LEProviderApi.md#Get-LEProviderById) | **GET** /v7-preview/providers/{providerId} | Get provider by id
[**Get-LEProviders**](LEProviderApi.md#Get-LEProviders) | **GET** /v7-preview/providers | Get a list of providers
[**Test-LEProviderConnection**](LEProviderApi.md#Test-LEProviderConnection) | **POST** /v7-preview/providers/test-connection | Test provider connection
[**Update-LEProvider**](LEProviderApi.md#Update-LEProvider) | **PUT** /v7-preview/providers/{providerId} | Update provider


<a id="New-LEProvider"></a>
# **New-LEProvider**
> ObjectId New-LEProvider<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DataCreateProviderRequest] <PSCustomObject><br>

Create provider

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$accessToken = "YOUR_ACCESS_TOKEN"

# Configure your appliance name
$applianceName = "YOUR_APPLIANCE_HOSTNAME"

 
$bearerToken = @{"Authorization"="Bearer $accessToken"}
Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken
 

$DataCreateProviderRequest = Initialize-LEDataCreateProviderRequest -Type "MyType" -Name "MyName" -Description "MyDescription" -TenantId "MyTenantId" -ApplicationId "MyApplicationId" -Secret "MySecret" # DataCreateProviderRequest | Provider data

# Create provider
try {
    $Result = New-LEProvider -DataCreateProviderRequest $DataCreateProviderRequest
} catch {
    Write-Host ("Exception occurred when calling New-LEProvider: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DataCreateProviderRequest** | [**DataCreateProviderRequest**](DataCreateProviderRequest.md)| Provider data | 

### Return type

[**ObjectId**](ObjectId.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-LEDeleteProvider"></a>
# **Invoke-LEDeleteProvider**
> void Invoke-LEDeleteProvider<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProviderId] <String><br>

Delete provider

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$accessToken = "YOUR_ACCESS_TOKEN"

# Configure your appliance name
$applianceName = "YOUR_APPLIANCE_HOSTNAME"

 
$bearerToken = @{"Authorization"="Bearer $accessToken"}
Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken
 

$ProviderId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Provider id

# Delete provider
try {
    $Result = Invoke-LEDeleteProvider -ProviderId $ProviderId
} catch {
    Write-Host ("Exception occurred when calling Invoke-LEDeleteProvider: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ProviderId** | **String**| Provider id | 

### Return type

void (empty response body)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-LEProviderById"></a>
# **Get-LEProviderById**
> DataGetProviderById200Response Get-LEProviderById<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProviderId] <String><br>

Get provider by id

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$accessToken = "YOUR_ACCESS_TOKEN"

# Configure your appliance name
$applianceName = "YOUR_APPLIANCE_HOSTNAME"

 
$bearerToken = @{"Authorization"="Bearer $accessToken"}
Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken
 

$ProviderId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Provider id

# Get provider by id
try {
    $Result = Get-LEProviderById -ProviderId $ProviderId
} catch {
    Write-Host ("Exception occurred when calling Get-LEProviderById: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ProviderId** | **String**| Provider id | 

### Return type

[**DataGetProviderById200Response**](DataGetProviderById200Response.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-LEProviders"></a>
# **Get-LEProviders**
> ProviderResultSet Get-LEProviders<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OrderBy] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Direction] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IncludeTotalCount] <System.Nullable[Boolean]><br>

Get a list of providers

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$accessToken = "YOUR_ACCESS_TOKEN"

# Configure your appliance name
$applianceName = "YOUR_APPLIANCE_HOSTNAME"

 
$bearerToken = @{"Authorization"="Bearer $accessToken"}
Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken
 

$OrderBy = "name" # ProviderSortKey | Sort Key
$Direction = "asc" # SortOrder | Sort direction
$Count = 56 # Int32 | Number of records to return (default to 100)
$Filter = "MyFilter" # String | Filter the query by a subtext or keyword in the provider's name or description (optional)
$Offset = 56 # Int32 | Start offset (optional) (default to 0)
$IncludeTotalCount = $true # Boolean | Include total number of records (optional) (default to $false)

# Get a list of providers
try {
    $Result = Get-LEProviders -OrderBy $OrderBy -Direction $Direction -Count $Count -Filter $Filter -Offset $Offset -IncludeTotalCount $IncludeTotalCount
} catch {
    Write-Host ("Exception occurred when calling Get-LEProviders: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **OrderBy** | [**ProviderSortKey**](ProviderSortKey.md)| Sort Key | 
 **Direction** | [**SortOrder**](SortOrder.md)| Sort direction | 
 **Count** | **Int32**| Number of records to return | [default to 100]
 **Filter** | **String**| Filter the query by a subtext or keyword in the provider&#39;s name or description | [optional] 
 **Offset** | **Int32**| Start offset | [optional] [default to 0]
 **IncludeTotalCount** | **Boolean**| Include total number of records | [optional] [default to $false]

### Return type

[**ProviderResultSet**](ProviderResultSet.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Test-LEProviderConnection"></a>
# **Test-LEProviderConnection**
> TestProviderConnectionResult Test-LEProviderConnection<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DataTestProviderConnectionRequest] <PSCustomObject><br>

Test provider connection

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$accessToken = "YOUR_ACCESS_TOKEN"

# Configure your appliance name
$applianceName = "YOUR_APPLIANCE_HOSTNAME"

 
$bearerToken = @{"Authorization"="Bearer $accessToken"}
Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken
 

$DataTestProviderConnectionRequest = Initialize-LEDataTestProviderConnectionRequest -Type "MyType" -ProviderId "MyProviderId" -TenantId "MyTenantId" -ApplicationId "MyApplicationId" -Secret "MySecret" # DataTestProviderConnectionRequest | Test Provider Connection

# Test provider connection
try {
    $Result = Test-LEProviderConnection -DataTestProviderConnectionRequest $DataTestProviderConnectionRequest
} catch {
    Write-Host ("Exception occurred when calling Test-LEProviderConnection: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DataTestProviderConnectionRequest** | [**DataTestProviderConnectionRequest**](DataTestProviderConnectionRequest.md)| Test Provider Connection | 

### Return type

[**TestProviderConnectionResult**](TestProviderConnectionResult.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-LEProvider"></a>
# **Update-LEProvider**
> void Update-LEProvider<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProviderId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DataCreateProviderRequest] <PSCustomObject><br>

Update provider

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$accessToken = "YOUR_ACCESS_TOKEN"

# Configure your appliance name
$applianceName = "YOUR_APPLIANCE_HOSTNAME"

 
$bearerToken = @{"Authorization"="Bearer $accessToken"}
Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken
 

$ProviderId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Provider id
$DataCreateProviderRequest = Initialize-LEDataCreateProviderRequest -Type "MyType" -Name "MyName" -Description "MyDescription" -TenantId "MyTenantId" -ApplicationId "MyApplicationId" -Secret "MySecret" # DataCreateProviderRequest | Provider data

# Update provider
try {
    $Result = Update-LEProvider -ProviderId $ProviderId -DataCreateProviderRequest $DataCreateProviderRequest
} catch {
    Write-Host ("Exception occurred when calling Update-LEProvider: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ProviderId** | **String**| Provider id | 
 **DataCreateProviderRequest** | [**DataCreateProviderRequest**](DataCreateProviderRequest.md)| Provider data | 

### Return type

void (empty response body)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


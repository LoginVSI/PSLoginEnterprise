# PSLoginEnterprise.PSLoginEnterprise\Api.ProviderApi

All URIs are relative to */publicApi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-DataCreateProvider**](ProviderApi.md#Invoke-DataCreateProvider) | **POST** /v7/providers | Create provider
[**Invoke-DataDeleteProvider**](ProviderApi.md#Invoke-DataDeleteProvider) | **DELETE** /v7/providers/{providerId} | Delete provider
[**Invoke-DataGetProviderById**](ProviderApi.md#Invoke-DataGetProviderById) | **GET** /v7/providers/{providerId} | Get provider by id
[**Invoke-DataGetProviders**](ProviderApi.md#Invoke-DataGetProviders) | **GET** /v7/providers | Get a list of providers
[**Invoke-DataTestProviderConnection**](ProviderApi.md#Invoke-DataTestProviderConnection) | **POST** /v7/providers/test-connection | Test provider connection
[**Invoke-DataUpdateProvider**](ProviderApi.md#Invoke-DataUpdateProvider) | **PUT** /v7/providers/{providerId} | Update provider


<a id="Invoke-DataCreateProvider"></a>
# **Invoke-DataCreateProvider**
> ObjectId Invoke-DataCreateProvider<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProviderAzureData] <PSCustomObject><br>

Create provider

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

$ProviderAzureData = Initialize-LEProviderAzureData -Type "MyType" -Name "MyName" -Description "MyDescription" -TenantId "MyTenantId" -ApplicationId "MyApplicationId" -Secret "MySecret" # ProviderAzureData | Provider data

# Create provider
try {
    $Result = Invoke-DataCreateProvider -ProviderAzureData $ProviderAzureData
} catch {
    Write-Host ("Exception occurred when calling Invoke-DataCreateProvider: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ProviderAzureData** | [**ProviderAzureData**](ProviderAzureData.md)| Provider data | 

### Return type

[**ObjectId**](ObjectId.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DataDeleteProvider"></a>
# **Invoke-DataDeleteProvider**
> void Invoke-DataDeleteProvider<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProviderId] <String><br>

Delete provider

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

$ProviderId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Provider id

# Delete provider
try {
    $Result = Invoke-DataDeleteProvider -ProviderId $ProviderId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DataDeleteProvider: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-DataGetProviderById"></a>
# **Invoke-DataGetProviderById**
> ProviderAzure Invoke-DataGetProviderById<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProviderId] <String><br>

Get provider by id

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

$ProviderId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Provider id

# Get provider by id
try {
    $Result = Invoke-DataGetProviderById -ProviderId $ProviderId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DataGetProviderById: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ProviderId** | **String**| Provider id | 

### Return type

[**ProviderAzure**](ProviderAzure.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DataGetProviders"></a>
# **Invoke-DataGetProviders**
> ProviderResultSet Invoke-DataGetProviders<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OrderBy] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Direction] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IncludeTotalCount] <System.Nullable[Boolean]><br>

Get a list of providers

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

$Filter = "MyFilter" # String | Filter the query by a subtext or keyword in the provider's name or description (optional)
$OrderBy = "name" # ProviderSortKey | Sort Key (optional)
$Direction = "asc" # SortOrder | Sort direction (optional)
$Count = 56 # Int32 | Number of records to return (optional) (default to 100)
$Offset = 56 # Int32 | Start offset (optional) (default to 0)
$IncludeTotalCount = $true # Boolean | Include total number of records (optional) (default to $false)

# Get a list of providers
try {
    $Result = Invoke-DataGetProviders -Filter $Filter -OrderBy $OrderBy -Direction $Direction -Count $Count -Offset $Offset -IncludeTotalCount $IncludeTotalCount
} catch {
    Write-Host ("Exception occurred when calling Invoke-DataGetProviders: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Filter** | **String**| Filter the query by a subtext or keyword in the provider&#39;s name or description | [optional] 
 **OrderBy** | [**ProviderSortKey**](ProviderSortKey.md)| Sort Key | [optional] 
 **Direction** | [**SortOrder**](SortOrder.md)| Sort direction | [optional] 
 **Count** | **Int32**| Number of records to return | [optional] [default to 100]
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

<a id="Invoke-DataTestProviderConnection"></a>
# **Invoke-DataTestProviderConnection**
> TestProviderConnectionResult Invoke-DataTestProviderConnection<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestAzureConnectionData] <PSCustomObject><br>

Test provider connection

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

$TestAzureConnectionData = Initialize-LETestAzureConnectionData -Type "MyType" -ProviderId "MyProviderId" -TenantId "MyTenantId" -ApplicationId "MyApplicationId" -Secret "MySecret" # TestAzureConnectionData | Test Provider Connection

# Test provider connection
try {
    $Result = Invoke-DataTestProviderConnection -TestAzureConnectionData $TestAzureConnectionData
} catch {
    Write-Host ("Exception occurred when calling Invoke-DataTestProviderConnection: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestAzureConnectionData** | [**TestAzureConnectionData**](TestAzureConnectionData.md)| Test Provider Connection | 

### Return type

[**TestProviderConnectionResult**](TestProviderConnectionResult.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DataUpdateProvider"></a>
# **Invoke-DataUpdateProvider**
> void Invoke-DataUpdateProvider<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProviderId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProviderAzureData] <PSCustomObject><br>

Update provider

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

$ProviderId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Provider id
$ProviderAzureData = Initialize-LEProviderAzureData -Type "MyType" -Name "MyName" -Description "MyDescription" -TenantId "MyTenantId" -ApplicationId "MyApplicationId" -Secret "MySecret" # ProviderAzureData | Provider data

# Update provider
try {
    $Result = Invoke-DataUpdateProvider -ProviderId $ProviderId -ProviderAzureData $ProviderAzureData
} catch {
    Write-Host ("Exception occurred when calling Invoke-DataUpdateProvider: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ProviderId** | **String**| Provider id | 
 **ProviderAzureData** | [**ProviderAzureData**](ProviderAzureData.md)| Provider data | 

### Return type

void (empty response body)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


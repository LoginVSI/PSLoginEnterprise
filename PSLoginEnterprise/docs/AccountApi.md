# PSLoginEnterprise.PSLoginEnterprise\Api.AccountApi

All URIs are relative to */publicApi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-ConfigurationCreateAccount**](AccountApi.md#Invoke-ConfigurationCreateAccount) | **POST** /v7/accounts | Create account
[**Invoke-ConfigurationCreateAccounts**](AccountApi.md#Invoke-ConfigurationCreateAccounts) | **POST** /v7/accounts/bulk | Create account in bulk
[**Invoke-ConfigurationDeleteAccount**](AccountApi.md#Invoke-ConfigurationDeleteAccount) | **DELETE** /v7/accounts/{accountId} | Delete account
[**Invoke-ConfigurationDeleteAccounts**](AccountApi.md#Invoke-ConfigurationDeleteAccounts) | **DELETE** /v7/accounts | Delete multiple accounts
[**Invoke-ConfigurationGetAccount**](AccountApi.md#Invoke-ConfigurationGetAccount) | **GET** /v7/accounts/{accountId} | Get account by id
[**Invoke-ConfigurationGetAccounts**](AccountApi.md#Invoke-ConfigurationGetAccounts) | **GET** /v7/accounts | Get paginated list of accounts
[**Invoke-ConfigurationUpdateAccount**](AccountApi.md#Invoke-ConfigurationUpdateAccount) | **PUT** /v7/accounts/{accountId} | Update account
[**Invoke-ConfigurationUpdateAccountEnabled**](AccountApi.md#Invoke-ConfigurationUpdateAccountEnabled) | **PUT** /v7/accounts/{accountId}/enabled | Enable or disable account
[**Invoke-ConfigurationUpdateAccountsEnabled**](AccountApi.md#Invoke-ConfigurationUpdateAccountsEnabled) | **PUT** /v7/accounts/enabled | Enable or disable accounts


<a id="Invoke-ConfigurationCreateAccount"></a>
# **Invoke-ConfigurationCreateAccount**
> ObjectId Invoke-ConfigurationCreateAccount<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AccountCreate] <PSCustomObject><br>

Create account

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

$AccountField = Initialize-LEAccountField -Name "MyName" -Value "MyValue"
$AccountCreate = Initialize-LEAccountCreate -Username "MyUsername" -Domain "MyDomain" -Email "MyEmail" -Password "MyPassword" -Fields $AccountField # AccountCreate | Account data

# Create account
try {
    $Result = Invoke-ConfigurationCreateAccount -AccountCreate $AccountCreate
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationCreateAccount: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AccountCreate** | [**AccountCreate**](AccountCreate.md)| Account data | 

### Return type

[**ObjectId**](ObjectId.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-ConfigurationCreateAccounts"></a>
# **Invoke-ConfigurationCreateAccounts**
> ObjectIdList Invoke-ConfigurationCreateAccounts<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AccountBulkCreate] <PSCustomObject><br>

Create account in bulk

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

$AccountField = Initialize-LEAccountField -Name "MyName" -Value "MyValue"
$AccountBulkCreate = Initialize-LEAccountBulkCreate -NumberOfDigits 0 -NumberOfAccounts 0 -Username "MyUsername" -Domain "MyDomain" -Email "MyEmail" -Password "MyPassword" -Fields $AccountField # AccountBulkCreate | Account data

# Create account in bulk
try {
    $Result = Invoke-ConfigurationCreateAccounts -AccountBulkCreate $AccountBulkCreate
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationCreateAccounts: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AccountBulkCreate** | [**AccountBulkCreate**](AccountBulkCreate.md)| Account data | 

### Return type

[**ObjectIdList**](ObjectIdList.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-ConfigurationDeleteAccount"></a>
# **Invoke-ConfigurationDeleteAccount**
> void Invoke-ConfigurationDeleteAccount<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AccountId] <String><br>

Delete account

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

$AccountId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Account id

# Delete account
try {
    $Result = Invoke-ConfigurationDeleteAccount -AccountId $AccountId
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationDeleteAccount: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AccountId** | **String**| Account id | 

### Return type

void (empty response body)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-ConfigurationDeleteAccounts"></a>
# **Invoke-ConfigurationDeleteAccounts**
> Affected Invoke-ConfigurationDeleteAccounts<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RequestBody] <String[]><br>

Delete multiple accounts

InUsed and Locked (reserved for running load-test) accounts cannot be deleted

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

$RequestBody = "MyRequestBody" # String[] | Account ids

# Delete multiple accounts
try {
    $Result = Invoke-ConfigurationDeleteAccounts -RequestBody $RequestBody
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationDeleteAccounts: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RequestBody** | [**String[]**](String.md)| Account ids | 

### Return type

[**Affected**](Affected.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-ConfigurationGetAccount"></a>
# **Invoke-ConfigurationGetAccount**
> Account Invoke-ConfigurationGetAccount<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AccountId] <String><br>

Get account by id

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

$AccountId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Account id

# Get account by id
try {
    $Result = Invoke-ConfigurationGetAccount -AccountId $AccountId
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationGetAccount: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AccountId** | **String**| Account id | 

### Return type

[**Account**](Account.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-ConfigurationGetAccounts"></a>
# **Invoke-ConfigurationGetAccounts**
> AccountResultSet Invoke-ConfigurationGetAccounts<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OrderBy] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Direction] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IncludeTotalCount] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>

Get paginated list of accounts

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

$OrderBy = "username" # AccountSortKey | Sort Key (optional)
$Direction = "asc" # SortOrder | Sort direction (optional)
$Count = 56 # Int32 | Number of records to return (optional) (default to 100)
$Offset = 56 # Int32 | Start offset (optional) (default to 0)
$IncludeTotalCount = $true # Boolean | Include total number of records (optional) (default to $false)
$Filter = "MyFilter" # String | Filter (optional)

# Get paginated list of accounts
try {
    $Result = Invoke-ConfigurationGetAccounts -OrderBy $OrderBy -Direction $Direction -Count $Count -Offset $Offset -IncludeTotalCount $IncludeTotalCount -Filter $Filter
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationGetAccounts: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **OrderBy** | [**AccountSortKey**](AccountSortKey.md)| Sort Key | [optional] 
 **Direction** | [**SortOrder**](SortOrder.md)| Sort direction | [optional] 
 **Count** | **Int32**| Number of records to return | [optional] [default to 100]
 **Offset** | **Int32**| Start offset | [optional] [default to 0]
 **IncludeTotalCount** | **Boolean**| Include total number of records | [optional] [default to $false]
 **Filter** | **String**| Filter | [optional] 

### Return type

[**AccountResultSet**](AccountResultSet.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-ConfigurationUpdateAccount"></a>
# **Invoke-ConfigurationUpdateAccount**
> void Invoke-ConfigurationUpdateAccount<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AccountId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AccountUpdate] <PSCustomObject><br>

Update account

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

$AccountId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Account id
$AccountField = Initialize-LEAccountField -Name "MyName" -Value "MyValue"
$AccountUpdate = Initialize-LEAccountUpdate -Password "MyPassword" -Username "MyUsername" -Domain "MyDomain" -Email "MyEmail" -Fields $AccountField # AccountUpdate | Account data

# Update account
try {
    $Result = Invoke-ConfigurationUpdateAccount -AccountId $AccountId -AccountUpdate $AccountUpdate
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationUpdateAccount: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AccountId** | **String**| Account id | 
 **AccountUpdate** | [**AccountUpdate**](AccountUpdate.md)| Account data | 

### Return type

void (empty response body)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-ConfigurationUpdateAccountEnabled"></a>
# **Invoke-ConfigurationUpdateAccountEnabled**
> void Invoke-ConfigurationUpdateAccountEnabled<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AccountId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <Boolean><br>

Enable or disable account

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

$AccountId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Account id
$Body = $true # Boolean | Enabled state of account

# Enable or disable account
try {
    $Result = Invoke-ConfigurationUpdateAccountEnabled -AccountId $AccountId -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationUpdateAccountEnabled: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AccountId** | **String**| Account id | 
 **Body** | **Boolean**| Enabled state of account | 

### Return type

void (empty response body)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-ConfigurationUpdateAccountsEnabled"></a>
# **Invoke-ConfigurationUpdateAccountsEnabled**
> void Invoke-ConfigurationUpdateAccountsEnabled<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AccountEnabledUpdate] <PSCustomObject><br>

Enable or disable accounts

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

$AccountEnabledUpdate = Initialize-LEAccountEnabledUpdate -AccountIds "MyAccountIds" -Enabled $false # AccountEnabledUpdate | Accounts data

# Enable or disable accounts
try {
    $Result = Invoke-ConfigurationUpdateAccountsEnabled -AccountEnabledUpdate $AccountEnabledUpdate
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationUpdateAccountsEnabled: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AccountEnabledUpdate** | [**AccountEnabledUpdate**](AccountEnabledUpdate.md)| Accounts data | 

### Return type

void (empty response body)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


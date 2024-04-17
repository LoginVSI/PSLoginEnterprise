# PSLoginEnterprise.PSLoginEnterprise\Api.LEAccountApi

All URIs are relative to */publicApi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-LEAccount**](LEAccountApi.md#New-LEAccount) | **POST** /v6/accounts | Create account
[**New-LEAccounts**](LEAccountApi.md#New-LEAccounts) | **POST** /v6/accounts/bulk | Create account in bulk
[**Invoke-LEDeleteAccount**](LEAccountApi.md#Invoke-LEDeleteAccount) | **DELETE** /v6/accounts/{accountId} | Delete account
[**Invoke-LEDeleteAccounts**](LEAccountApi.md#Invoke-LEDeleteAccounts) | **DELETE** /v6/accounts | Delete multiple accounts
[**Get-LEAccount**](LEAccountApi.md#Get-LEAccount) | **GET** /v6/accounts/{accountId} | Get account by id
[**Get-LEAccounts**](LEAccountApi.md#Get-LEAccounts) | **GET** /v6/accounts | Get paginated list of accounts
[**Update-LEAccount**](LEAccountApi.md#Update-LEAccount) | **PUT** /v6/accounts/{accountId} | Update account
[**Update-LEAccountEnabled**](LEAccountApi.md#Update-LEAccountEnabled) | **PUT** /v6/accounts/{accountId}/enabled | Enable or disable account
[**Update-LEAccountsEnabled**](LEAccountApi.md#Update-LEAccountsEnabled) | **PUT** /v6/accounts/enabled | Enable or disable accounts


<a id="New-LEAccount"></a>
# **New-LEAccount**
> ObjectId New-LEAccount<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AccountCreate] <PSCustomObject><br>

Create account

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$accessToken = "YOUR_ACCESS_TOKEN"
$applianceName = "YOUR_APPLIANCE_URL"
$bearerToken = @{"Authorization"="Bearer $accessToken"}
Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken 


$AccountField = Initialize-LEAccountField -Name "MyName" -Value "MyValue"
$AccountCreate = Initialize-LEAccountCreate -Username "MyUsername" -Domain "MyDomain" -Email "MyEmail" -Password "MyPassword" -Fields $AccountField # AccountCreate | Account data

# Create account
try {
    $Result = New-LEAccount -AccountCreate $AccountCreate
} catch {
    Write-Host ("Exception occurred when calling New-LEAccount: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="New-LEAccounts"></a>
# **New-LEAccounts**
> ObjectIdList New-LEAccounts<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AccountBulkCreate] <PSCustomObject><br>

Create account in bulk

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$accessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$applianceName = "YOUR_APPLIANCE_URL"
$bearerToken = @{"Authorization"="Bearer $accessToken"}
Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken 


$AccountField = Initialize-LEAccountField -Name "MyName" -Value "MyValue"
$AccountBulkCreate = Initialize-LEAccountBulkCreate -NumberOfDigits 0 -NumberOfAccounts 0 -Username "MyUsername" -Domain "MyDomain" -Email "MyEmail" -Password "MyPassword" -Fields $AccountField # AccountBulkCreate | Account data

# Create account in bulk
try {
    $Result = New-LEAccounts -AccountBulkCreate $AccountBulkCreate
} catch {
    Write-Host ("Exception occurred when calling New-LEAccounts: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-LEDeleteAccount"></a>
# **Invoke-LEDeleteAccount**
> void Invoke-LEDeleteAccount<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AccountId] <String><br>

Delete account

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$accessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$applianceName = "YOUR_APPLIANCE_URL"
$bearerToken = @{"Authorization"="Bearer $accessToken"}
Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken 


$AccountId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Account id

# Delete account
try {
    $Result = Invoke-LEDeleteAccount -AccountId $AccountId
} catch {
    Write-Host ("Exception occurred when calling Invoke-LEDeleteAccount: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-LEDeleteAccounts"></a>
# **Invoke-LEDeleteAccounts**
> void Invoke-LEDeleteAccounts<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RequestBody] <String[]><br>

Delete multiple accounts

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$accessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$applianceName = "YOUR_APPLIANCE_URL"
$bearerToken = @{"Authorization"="Bearer $accessToken"}
Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken 


$RequestBody = "MyRequestBody" # String[] | Account ids

# Delete multiple accounts
try {
    $Result = Invoke-LEDeleteAccounts -RequestBody $RequestBody
} catch {
    Write-Host ("Exception occurred when calling Invoke-LEDeleteAccounts: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RequestBody** | [**String[]**](String.md)| Account ids | 

### Return type

void (empty response body)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-LEAccount"></a>
# **Get-LEAccount**
> Account Get-LEAccount<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AccountId] <String><br>

Get account by id

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$accessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$applianceName = "YOUR_APPLIANCE_URL"
$bearerToken = @{"Authorization"="Bearer $accessToken"}
Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken 


$AccountId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Account id

# Get account by id
try {
    $Result = Get-LEAccount -AccountId $AccountId
} catch {
    Write-Host ("Exception occurred when calling Get-LEAccount: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Get-LEAccounts"></a>
# **Get-LEAccounts**
> AccountResultSet Get-LEAccounts<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OrderBy] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Direction] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IncludeTotalCount] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>

Get paginated list of accounts

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$accessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$applianceName = "YOUR_APPLIANCE_URL"
$bearerToken = @{"Authorization"="Bearer $accessToken"}
Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken 


$OrderBy = "username" # AccountSortKey | Sort Key
$Direction = "asc" # String | Sort direction (default to "asc")
$Count = 56 # Int32 | Number of records to return (default to 100)
$Offset = 56 # Int32 | Start offset (optional) (default to 0)
$IncludeTotalCount = $true # Boolean | Include total number of records (optional) (default to $false)
$Filter = "MyFilter" # String | Filter (optional)

# Get paginated list of accounts
try {
    $Result = Get-LEAccounts -OrderBy $OrderBy -Direction $Direction -Count $Count -Offset $Offset -IncludeTotalCount $IncludeTotalCount -Filter $Filter
} catch {
    Write-Host ("Exception occurred when calling Get-LEAccounts: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **OrderBy** | [**AccountSortKey**](AccountSortKey.md)| Sort Key | 
 **Direction** | **String**| Sort direction | [default to &quot;asc&quot;]
 **Count** | **Int32**| Number of records to return | [default to 100]
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

<a id="Update-LEAccount"></a>
# **Update-LEAccount**
> void Update-LEAccount<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AccountId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AccountUpdate] <PSCustomObject><br>

Update account

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$accessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$applianceName = "YOUR_APPLIANCE_URL"
$bearerToken = @{"Authorization"="Bearer $accessToken"}
Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken 


$AccountId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Account id
$AccountField = Initialize-LEAccountField -Name "MyName" -Value "MyValue"
$AccountUpdate = Initialize-LEAccountUpdate -Password "MyPassword" -Username "MyUsername" -Domain "MyDomain" -Email "MyEmail" -Fields $AccountField # AccountUpdate | Account data

# Update account
try {
    $Result = Update-LEAccount -AccountId $AccountId -AccountUpdate $AccountUpdate
} catch {
    Write-Host ("Exception occurred when calling Update-LEAccount: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Update-LEAccountEnabled"></a>
# **Update-LEAccountEnabled**
> void Update-LEAccountEnabled<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AccountId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <Boolean><br>

Enable or disable account

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$accessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$applianceName = "YOUR_APPLIANCE_URL"
$bearerToken = @{"Authorization"="Bearer $accessToken"}
Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken 


$AccountId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Account id
$Body = $true # Boolean | Enabled state of account

# Enable or disable account
try {
    $Result = Update-LEAccountEnabled -AccountId $AccountId -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Update-LEAccountEnabled: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Update-LEAccountsEnabled"></a>
# **Update-LEAccountsEnabled**
> void Update-LEAccountsEnabled<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AccountEnabledUpdate] <PSCustomObject><br>

Enable or disable accounts

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$accessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$applianceName = "YOUR_APPLIANCE_URL"
$bearerToken = @{"Authorization"="Bearer $accessToken"}
Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken 


$AccountEnabledUpdate = Initialize-LEAccountEnabledUpdate -AccountIds "MyAccountIds" -Enabled $false # AccountEnabledUpdate | Accounts data

# Enable or disable accounts
try {
    $Result = Update-LEAccountsEnabled -AccountEnabledUpdate $AccountEnabledUpdate
} catch {
    Write-Host ("Exception occurred when calling Update-LEAccountsEnabled: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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


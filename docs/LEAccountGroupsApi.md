# PSLoginEnterprise.PSLoginEnterprise\Api.LEAccountGroupsApi

All URIs are relative to */publicApi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-LEAccountGroup**](LEAccountGroupsApi.md#New-LEAccountGroup) | **POST** /v6/account-groups | Create account-group
[**Invoke-LEDeleteAccountGroup**](LEAccountGroupsApi.md#Invoke-LEDeleteAccountGroup) | **DELETE** /v6/account-groups/{groupId} | Delete account-group
[**Invoke-LEDeleteAccountGroups**](LEAccountGroupsApi.md#Invoke-LEDeleteAccountGroups) | **DELETE** /v6/account-groups | Delete multiple account-groups
[**Get-LEAccountGroup**](LEAccountGroupsApi.md#Get-LEAccountGroup) | **GET** /v6/account-groups/{groupId} | Get account-group by id
[**Get-LEAccountGroupCandidates**](LEAccountGroupsApi.md#Get-LEAccountGroupCandidates) | **GET** /v6/account-groups/candidates | Get account-group candidates
[**Get-LEAccountGroups**](LEAccountGroupsApi.md#Get-LEAccountGroups) | **GET** /v6/account-groups | Get paginated list of account-groups
[**Update-LEAccountGroup**](LEAccountGroupsApi.md#Update-LEAccountGroup) | **PUT** /v6/account-groups/{groupId} | Update account-group


<a id="New-LEAccountGroup"></a>
# **New-LEAccountGroup**
> ObjectId New-LEAccountGroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ConfigurationCreateAccountGroupRequest] <PSCustomObject><br>

Create account-group

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$accessToken = "YOUR_ACCESS_TOKEN"
$applianceName = "YOUR_APPLIANCE_URL"
$bearerToken = @{"Authorization"="Bearer $accessToken"}
Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken 


$ConfigurationCreateAccountGroupRequest = Initialize-LEConfigurationCreateAccountGroupRequest -Type "MyType" -VarFilter "MyVarFilter" -Name "MyName" -Description "MyDescription" -MemberIds "MyMemberIds" # ConfigurationCreateAccountGroupRequest | Account-group data

# Create account-group
try {
    $Result = New-LEAccountGroup -ConfigurationCreateAccountGroupRequest $ConfigurationCreateAccountGroupRequest
} catch {
    Write-Host ("Exception occurred when calling New-LEAccountGroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ConfigurationCreateAccountGroupRequest** | [**ConfigurationCreateAccountGroupRequest**](ConfigurationCreateAccountGroupRequest.md)| Account-group data | 

### Return type

[**ObjectId**](ObjectId.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-LEDeleteAccountGroup"></a>
# **Invoke-LEDeleteAccountGroup**
> void Invoke-LEDeleteAccountGroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <String><br>

Delete account-group

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$accessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$applianceName = "YOUR_APPLIANCE_URL"
$bearerToken = @{"Authorization"="Bearer $accessToken"}
Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken 


$GroupId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Account-group id

# Delete account-group
try {
    $Result = Invoke-LEDeleteAccountGroup -GroupId $GroupId
} catch {
    Write-Host ("Exception occurred when calling Invoke-LEDeleteAccountGroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **GroupId** | **String**| Account-group id | 

### Return type

void (empty response body)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-LEDeleteAccountGroups"></a>
# **Invoke-LEDeleteAccountGroups**
> void Invoke-LEDeleteAccountGroups<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RequestBody] <String[]><br>

Delete multiple account-groups

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$accessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$applianceName = "YOUR_APPLIANCE_URL"
$bearerToken = @{"Authorization"="Bearer $accessToken"}
Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken 


$RequestBody = "MyRequestBody" # String[] | Account-group ids

# Delete multiple account-groups
try {
    $Result = Invoke-LEDeleteAccountGroups -RequestBody $RequestBody
} catch {
    Write-Host ("Exception occurred when calling Invoke-LEDeleteAccountGroups: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RequestBody** | [**String[]**](String.md)| Account-group ids | 

### Return type

void (empty response body)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-LEAccountGroup"></a>
# **Get-LEAccountGroup**
> ConfigurationGetAccountGroup200Response Get-LEAccountGroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Include] <PSCustomObject[]><br>

Get account-group by id

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$accessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$applianceName = "YOUR_APPLIANCE_URL"
$bearerToken = @{"Authorization"="Bearer $accessToken"}
Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken 


$GroupId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Account-group id
$Include = "none" # AccountGroupInclude[] | Include options (optional)

# Get account-group by id
try {
    $Result = Get-LEAccountGroup -GroupId $GroupId -Include $Include
} catch {
    Write-Host ("Exception occurred when calling Get-LEAccountGroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **GroupId** | **String**| Account-group id | 
 **Include** | [**AccountGroupInclude[]**](AccountGroupInclude.md)| Include options | [optional] 

### Return type

[**ConfigurationGetAccountGroup200Response**](ConfigurationGetAccountGroup200Response.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-LEAccountGroupCandidates"></a>
# **Get-LEAccountGroupCandidates**
> AccountResultSet Get-LEAccountGroupCandidates<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OrderBy] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Direction] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IncludeTotalCount] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SupportWildcards] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ExcludeInGroup] <System.Nullable[Boolean]><br>

Get account-group candidates

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
$Filter = "MyFilter" # String | Filter on username or domain (optional)
$GroupId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Include accounts already member of a given group (optional)
$SupportWildcards = $true # Boolean | If set to true supports wildcards in the 'filter' ('?' and '*') (optional) (default to $false)
$ExcludeInGroup = $true # Boolean | If true returns only accounts which don't belong to any group (optional) (default to $false)

# Get account-group candidates
try {
    $Result = Get-LEAccountGroupCandidates -OrderBy $OrderBy -Direction $Direction -Count $Count -Offset $Offset -IncludeTotalCount $IncludeTotalCount -Filter $Filter -GroupId $GroupId -SupportWildcards $SupportWildcards -ExcludeInGroup $ExcludeInGroup
} catch {
    Write-Host ("Exception occurred when calling Get-LEAccountGroupCandidates: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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
 **Filter** | **String**| Filter on username or domain | [optional] 
 **GroupId** | **String**| Include accounts already member of a given group | [optional] 
 **SupportWildcards** | **Boolean**| If set to true supports wildcards in the &#39;filter&#39; (&#39;?&#39; and &#39;*&#39;) | [optional] [default to $false]
 **ExcludeInGroup** | **Boolean**| If true returns only accounts which don&#39;t belong to any group | [optional] [default to $false]

### Return type

[**AccountResultSet**](AccountResultSet.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-LEAccountGroups"></a>
# **Get-LEAccountGroups**
> AccountGroupResultSet Get-LEAccountGroups<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OrderBy] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Direction] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IncludeTotalCount] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AccountGroupTypeFilter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Include] <PSCustomObject[]><br>

Get paginated list of account-groups

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$accessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$applianceName = "YOUR_APPLIANCE_URL"
$bearerToken = @{"Authorization"="Bearer $accessToken"}
Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken 


$OrderBy = "name" # AccountGroupSortKey | Sort Key
$Direction = "asc" # String | Sort direction (default to "asc")
$Count = 56 # Int32 | Number of records to return (default to 100)
$Filter = "MyFilter" # String | Filter on group name or group description (optional)
$Offset = 56 # Int32 | Start offset (optional) (default to 0)
$IncludeTotalCount = $true # Boolean | Include total number of records (optional) (default to $false)
$AccountGroupTypeFilter = "selection" # String | Filter on account-group type (ignore when 'null') (optional)
$Include = "none" # AccountGroupInclude[] | Include options (optional)

# Get paginated list of account-groups
try {
    $Result = Get-LEAccountGroups -OrderBy $OrderBy -Direction $Direction -Count $Count -Filter $Filter -Offset $Offset -IncludeTotalCount $IncludeTotalCount -AccountGroupTypeFilter $AccountGroupTypeFilter -Include $Include
} catch {
    Write-Host ("Exception occurred when calling Get-LEAccountGroups: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **OrderBy** | [**AccountGroupSortKey**](AccountGroupSortKey.md)| Sort Key | 
 **Direction** | **String**| Sort direction | [default to &quot;asc&quot;]
 **Count** | **Int32**| Number of records to return | [default to 100]
 **Filter** | **String**| Filter on group name or group description | [optional] 
 **Offset** | **Int32**| Start offset | [optional] [default to 0]
 **IncludeTotalCount** | **Boolean**| Include total number of records | [optional] [default to $false]
 **AccountGroupTypeFilter** | **String**| Filter on account-group type (ignore when &#39;null&#39;) | [optional] 
 **Include** | [**AccountGroupInclude[]**](AccountGroupInclude.md)| Include options | [optional] 

### Return type

[**AccountGroupResultSet**](AccountGroupResultSet.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-LEAccountGroup"></a>
# **Update-LEAccountGroup**
> void Update-LEAccountGroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ConfigurationUpdateAccountGroupRequest] <PSCustomObject><br>

Update account-group

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$accessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$applianceName = "YOUR_APPLIANCE_URL"
$bearerToken = @{"Authorization"="Bearer $accessToken"}
Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken 


$GroupId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Account-group id
$ConfigurationUpdateAccountGroupRequest = Initialize-LEConfigurationUpdateAccountGroupRequest -Type "MyType" -VarFilter "MyVarFilter" -Name "MyName" -Description "MyDescription" -MemberIds "MyMemberIds" # ConfigurationUpdateAccountGroupRequest | Account-group data

# Update account-group
try {
    $Result = Update-LEAccountGroup -GroupId $GroupId -ConfigurationUpdateAccountGroupRequest $ConfigurationUpdateAccountGroupRequest
} catch {
    Write-Host ("Exception occurred when calling Update-LEAccountGroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **GroupId** | **String**| Account-group id | 
 **ConfigurationUpdateAccountGroupRequest** | [**ConfigurationUpdateAccountGroupRequest**](ConfigurationUpdateAccountGroupRequest.md)| Account-group data | 

### Return type

void (empty response body)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


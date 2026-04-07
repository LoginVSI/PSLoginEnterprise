# PSLoginEnterprise.PSLoginEnterprise\Api.LauncherGroupApi

All URIs are relative to */publicApi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-ConfigurationCreateLauncherGroup**](LauncherGroupApi.md#Invoke-ConfigurationCreateLauncherGroup) | **POST** /v7/launcher-groups | Create launcher-group
[**Invoke-ConfigurationDeleteLauncherGroup**](LauncherGroupApi.md#Invoke-ConfigurationDeleteLauncherGroup) | **DELETE** /v7/launcher-groups/{groupId} | Delete launcher-group
[**Invoke-ConfigurationDeleteLauncherGroups**](LauncherGroupApi.md#Invoke-ConfigurationDeleteLauncherGroups) | **DELETE** /v7/launcher-groups | delete multiple launcher-groups
[**Invoke-ConfigurationGetLauncherGroup**](LauncherGroupApi.md#Invoke-ConfigurationGetLauncherGroup) | **GET** /v7/launcher-groups/{groupId} | Get launcher-group by id
[**Invoke-ConfigurationGetLauncherGroups**](LauncherGroupApi.md#Invoke-ConfigurationGetLauncherGroups) | **GET** /v7/launcher-groups | Get paginated list of launcher-groups
[**Invoke-ConfigurationUpdateLauncherGroup**](LauncherGroupApi.md#Invoke-ConfigurationUpdateLauncherGroup) | **PUT** /v7/launcher-groups/{groupId} | Update launcher-group


<a id="Invoke-ConfigurationCreateLauncherGroup"></a>
# **Invoke-ConfigurationCreateLauncherGroup**
> ObjectId Invoke-ConfigurationCreateLauncherGroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ConfigurationCreateLauncherGroupRequest] <PSCustomObject><br>

Create launcher-group

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

$ConfigurationCreateLauncherGroupRequest = Initialize-LEConfigurationCreateLauncherGroupRequest -Type "MyType" -Name "MyName" -Description "MyDescription" -VarFilter "MyVarFilter" -LauncherNames "MyLauncherNames" # ConfigurationCreateLauncherGroupRequest | Launcher-group data

# Create launcher-group
try {
    $Result = Invoke-ConfigurationCreateLauncherGroup -ConfigurationCreateLauncherGroupRequest $ConfigurationCreateLauncherGroupRequest
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationCreateLauncherGroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ConfigurationCreateLauncherGroupRequest** | [**ConfigurationCreateLauncherGroupRequest**](ConfigurationCreateLauncherGroupRequest.md)| Launcher-group data | 

### Return type

[**ObjectId**](ObjectId.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-ConfigurationDeleteLauncherGroup"></a>
# **Invoke-ConfigurationDeleteLauncherGroup**
> void Invoke-ConfigurationDeleteLauncherGroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <String><br>

Delete launcher-group

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

$GroupId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Launcher-group id

# Delete launcher-group
try {
    $Result = Invoke-ConfigurationDeleteLauncherGroup -GroupId $GroupId
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationDeleteLauncherGroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **GroupId** | **String**| Launcher-group id | 

### Return type

void (empty response body)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-ConfigurationDeleteLauncherGroups"></a>
# **Invoke-ConfigurationDeleteLauncherGroups**
> void Invoke-ConfigurationDeleteLauncherGroups<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RequestBody] <String[]><br>

delete multiple launcher-groups

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

$RequestBody = "MyRequestBody" # String[] | Launcher-group ids (optional)

# delete multiple launcher-groups
try {
    $Result = Invoke-ConfigurationDeleteLauncherGroups -RequestBody $RequestBody
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationDeleteLauncherGroups: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RequestBody** | [**String[]**](String.md)| Launcher-group ids | [optional] 

### Return type

void (empty response body)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-ConfigurationGetLauncherGroup"></a>
# **Invoke-ConfigurationGetLauncherGroup**
> ConfigurationGetLauncherGroup200Response Invoke-ConfigurationGetLauncherGroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Include] <PSCustomObject[]><br>

Get launcher-group by id

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

$GroupId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Launcher-group id
$Include = "none" # LauncherGroupInclude[] | Include options (optional)

# Get launcher-group by id
try {
    $Result = Invoke-ConfigurationGetLauncherGroup -GroupId $GroupId -Include $Include
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationGetLauncherGroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **GroupId** | **String**| Launcher-group id | 
 **Include** | [**LauncherGroupInclude[]**](LauncherGroupInclude.md)| Include options | [optional] 

### Return type

[**ConfigurationGetLauncherGroup200Response**](ConfigurationGetLauncherGroup200Response.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-ConfigurationGetLauncherGroups"></a>
# **Invoke-ConfigurationGetLauncherGroups**
> LauncherGroupResultSet Invoke-ConfigurationGetLauncherGroups<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OrderBy] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Direction] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IncludeTotalCount] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Include] <PSCustomObject[]><br>

Get paginated list of launcher-groups

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

$Filter = "MyFilter" # String | A Launcher-Group Filter applied on Name and Description fields (optional)
$OrderBy = "name" # LauncherGroupSortKey | Sort Key (optional)
$Direction = "asc" # SortOrder | Sort direction (optional)
$Count = 56 # Int32 | Number of records to return (optional) (default to 100)
$Offset = 56 # Int32 | Start offset (optional) (default to 0)
$IncludeTotalCount = $true # Boolean | Include total number of records (optional) (default to $false)
$Include = "none" # LauncherGroupInclude[] | Include options (optional)

# Get paginated list of launcher-groups
try {
    $Result = Invoke-ConfigurationGetLauncherGroups -Filter $Filter -OrderBy $OrderBy -Direction $Direction -Count $Count -Offset $Offset -IncludeTotalCount $IncludeTotalCount -Include $Include
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationGetLauncherGroups: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Filter** | **String**| A Launcher-Group Filter applied on Name and Description fields | [optional] 
 **OrderBy** | [**LauncherGroupSortKey**](LauncherGroupSortKey.md)| Sort Key | [optional] 
 **Direction** | [**SortOrder**](SortOrder.md)| Sort direction | [optional] 
 **Count** | **Int32**| Number of records to return | [optional] [default to 100]
 **Offset** | **Int32**| Start offset | [optional] [default to 0]
 **IncludeTotalCount** | **Boolean**| Include total number of records | [optional] [default to $false]
 **Include** | [**LauncherGroupInclude[]**](LauncherGroupInclude.md)| Include options | [optional] 

### Return type

[**LauncherGroupResultSet**](LauncherGroupResultSet.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-ConfigurationUpdateLauncherGroup"></a>
# **Invoke-ConfigurationUpdateLauncherGroup**
> void Invoke-ConfigurationUpdateLauncherGroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ConfigurationCreateLauncherGroupRequest] <PSCustomObject><br>

Update launcher-group

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

$GroupId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Launcher-group id
$ConfigurationCreateLauncherGroupRequest = Initialize-LEConfigurationCreateLauncherGroupRequest -Type "MyType" -Name "MyName" -Description "MyDescription" -VarFilter "MyVarFilter" -LauncherNames "MyLauncherNames" # ConfigurationCreateLauncherGroupRequest | Launcher-group data

# Update launcher-group
try {
    $Result = Invoke-ConfigurationUpdateLauncherGroup -GroupId $GroupId -ConfigurationCreateLauncherGroupRequest $ConfigurationCreateLauncherGroupRequest
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationUpdateLauncherGroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **GroupId** | **String**| Launcher-group id | 
 **ConfigurationCreateLauncherGroupRequest** | [**ConfigurationCreateLauncherGroupRequest**](ConfigurationCreateLauncherGroupRequest.md)| Launcher-group data | 

### Return type

void (empty response body)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


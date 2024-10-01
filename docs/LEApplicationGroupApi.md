# PSLoginEnterprise.PSLoginEnterprise\Api.LEApplicationGroupApi

All URIs are relative to */publicApi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Add-LEStepsToApplicationGroup**](LEApplicationGroupApi.md#Add-LEStepsToApplicationGroup) | **POST** /v7-preview/application-groups/{groupId}/steps | Add steps to application-group
[**New-LEApplicationGroup**](LEApplicationGroupApi.md#New-LEApplicationGroup) | **POST** /v7-preview/application-groups | Create application-group
[**Invoke-LEDeleteApplicationGroup**](LEApplicationGroupApi.md#Invoke-LEDeleteApplicationGroup) | **DELETE** /v7-preview/application-groups/{groupId} | Delete application-group
[**Invoke-LEDeleteApplicationGroupList**](LEApplicationGroupApi.md#Invoke-LEDeleteApplicationGroupList) | **DELETE** /v7-preview/application-groups | Delete multiple application-groups
[**Get-LEApplicationGroup**](LEApplicationGroupApi.md#Get-LEApplicationGroup) | **GET** /v7-preview/application-groups/{groupId} | Get application-group by id
[**Get-LEApplicationGroups**](LEApplicationGroupApi.md#Get-LEApplicationGroups) | **GET** /v7-preview/application-groups | Get paginated list of application-groups
[**Remove-LEStepsFromApplicationGroup**](LEApplicationGroupApi.md#Remove-LEStepsFromApplicationGroup) | **DELETE** /v7-preview/application-groups/{groupId}/steps | Remove steps from application-group
[**Invoke-LEReplaceApplicationGroupSteps**](LEApplicationGroupApi.md#Invoke-LEReplaceApplicationGroupSteps) | **PUT** /v7-preview/application-groups/{groupId}/steps | Replace application-group Steps
[**Update-LEApplicationGroup**](LEApplicationGroupApi.md#Update-LEApplicationGroup) | **PUT** /v7-preview/application-groups/{groupId} | Update application-group
[**Update-LEStepInApplicationGroup**](LEApplicationGroupApi.md#Update-LEStepInApplicationGroup) | **PUT** /v7-preview/application-groups/{groupId}/steps/{stepId} | Update single step in application-group


<a id="Add-LEStepsToApplicationGroup"></a>
# **Add-LEStepsToApplicationGroup**
> void Add-LEStepsToApplicationGroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ConfigurationReplaceApplicationGroupStepsRequestInner] <PSCustomObject[]><br>

Add steps to application-group

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$accessToken = "YOUR_ACCESS_TOKEN"

# Configure your appliance name
$applianceName = "YOUR_APPLIANCE_HOSTNAME"

 
$bearerToken = @{"Authorization"="Bearer $accessToken"}
Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken
 

$GroupId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Application-group id
$ConfigurationReplaceApplicationGroupStepsRequestInner = Initialize-LEConfigurationReplaceApplicationGroupStepsRequestInner -Type "MyType" -IsEnabled $false -ApplicationId "MyApplicationId" -RunOnce $false -LeaveRunning $false -DelayInSeconds 0 -ApplicationGroupId "MyApplicationGroupId" # ConfigurationReplaceApplicationGroupStepsRequestInner[] | List of step data

# Add steps to application-group
try {
    $Result = Add-LEStepsToApplicationGroup -GroupId $GroupId -ConfigurationReplaceApplicationGroupStepsRequestInner $ConfigurationReplaceApplicationGroupStepsRequestInner
} catch {
    Write-Host ("Exception occurred when calling Add-LEStepsToApplicationGroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **GroupId** | **String**| Application-group id | 
 **ConfigurationReplaceApplicationGroupStepsRequestInner** | [**ConfigurationReplaceApplicationGroupStepsRequestInner[]**](ConfigurationReplaceApplicationGroupStepsRequestInner.md)| List of step data | 

### Return type

void (empty response body)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="New-LEApplicationGroup"></a>
# **New-LEApplicationGroup**
> ObjectId New-LEApplicationGroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ApplicationGroupCreate] <PSCustomObject><br>

Create application-group

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$accessToken = "YOUR_ACCESS_TOKEN"

# Configure your appliance name
$applianceName = "YOUR_APPLIANCE_HOSTNAME"

 
$bearerToken = @{"Authorization"="Bearer $accessToken"}
Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken
 

$ConfigurationReplaceApplicationGroupStepsRequestInner = Initialize-LEConfigurationReplaceApplicationGroupStepsRequestInner -Type "MyType" -IsEnabled $false -ApplicationId "MyApplicationId" -RunOnce $false -LeaveRunning $false -DelayInSeconds 0 -ApplicationGroupId "MyApplicationGroupId"
$ApplicationGroupCreate = Initialize-LEApplicationGroupCreate -Name "MyName" -Description "MyDescription" -Steps $ConfigurationReplaceApplicationGroupStepsRequestInner # ApplicationGroupCreate | Application-group data

# Create application-group
try {
    $Result = New-LEApplicationGroup -ApplicationGroupCreate $ApplicationGroupCreate
} catch {
    Write-Host ("Exception occurred when calling New-LEApplicationGroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ApplicationGroupCreate** | [**ApplicationGroupCreate**](ApplicationGroupCreate.md)| Application-group data | 

### Return type

[**ObjectId**](ObjectId.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-LEDeleteApplicationGroup"></a>
# **Invoke-LEDeleteApplicationGroup**
> void Invoke-LEDeleteApplicationGroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <String><br>

Delete application-group

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$accessToken = "YOUR_ACCESS_TOKEN"

# Configure your appliance name
$applianceName = "YOUR_APPLIANCE_HOSTNAME"

 
$bearerToken = @{"Authorization"="Bearer $accessToken"}
Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken
 

$GroupId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Application-group id

# Delete application-group
try {
    $Result = Invoke-LEDeleteApplicationGroup -GroupId $GroupId
} catch {
    Write-Host ("Exception occurred when calling Invoke-LEDeleteApplicationGroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **GroupId** | **String**| Application-group id | 

### Return type

void (empty response body)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-LEDeleteApplicationGroupList"></a>
# **Invoke-LEDeleteApplicationGroupList**
> void Invoke-LEDeleteApplicationGroupList<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RequestBody] <String[]><br>

Delete multiple application-groups

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$accessToken = "YOUR_ACCESS_TOKEN"

# Configure your appliance name
$applianceName = "YOUR_APPLIANCE_HOSTNAME"

 
$bearerToken = @{"Authorization"="Bearer $accessToken"}
Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken
 

$RequestBody = "MyRequestBody" # String[] | Application-group ids

# Delete multiple application-groups
try {
    $Result = Invoke-LEDeleteApplicationGroupList -RequestBody $RequestBody
} catch {
    Write-Host ("Exception occurred when calling Invoke-LEDeleteApplicationGroupList: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RequestBody** | [**String[]**](String.md)| Application-group ids | 

### Return type

void (empty response body)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-LEApplicationGroup"></a>
# **Get-LEApplicationGroup**
> ApplicationGroup Get-LEApplicationGroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Include] <PSCustomObject[]><br>

Get application-group by id

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$accessToken = "YOUR_ACCESS_TOKEN"

# Configure your appliance name
$applianceName = "YOUR_APPLIANCE_HOSTNAME"

 
$bearerToken = @{"Authorization"="Bearer $accessToken"}
Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken
 

$GroupId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Application-group id
$Include = "none" # ApplicationGroupInclude[] | Include options (optional)

# Get application-group by id
try {
    $Result = Get-LEApplicationGroup -GroupId $GroupId -Include $Include
} catch {
    Write-Host ("Exception occurred when calling Get-LEApplicationGroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **GroupId** | **String**| Application-group id | 
 **Include** | [**ApplicationGroupInclude[]**](ApplicationGroupInclude.md)| Include options | [optional] 

### Return type

[**ApplicationGroup**](ApplicationGroup.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-LEApplicationGroups"></a>
# **Get-LEApplicationGroups**
> ApplicationGroupResultSet Get-LEApplicationGroups<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OrderBy] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Direction] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IncludeTotalCount] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Include] <PSCustomObject[]><br>

Get paginated list of application-groups

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$accessToken = "YOUR_ACCESS_TOKEN"

# Configure your appliance name
$applianceName = "YOUR_APPLIANCE_HOSTNAME"

 
$bearerToken = @{"Authorization"="Bearer $accessToken"}
Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken
 

$OrderBy = "name" # ApplicationGroupSortKey | Sort Key
$Direction = "asc" # SortOrder | Sort direction
$Count = 56 # Int32 | Number of records to return (default to 100)
$Filter = "MyFilter" # String | Filter on group name or group description (optional)
$Offset = 56 # Int32 | Start offset (optional) (default to 0)
$IncludeTotalCount = $true # Boolean | Include total number of records (optional) (default to $false)
$Include = "none" # ApplicationGroupInclude[] | Include options (optional)

# Get paginated list of application-groups
try {
    $Result = Get-LEApplicationGroups -OrderBy $OrderBy -Direction $Direction -Count $Count -Filter $Filter -Offset $Offset -IncludeTotalCount $IncludeTotalCount -Include $Include
} catch {
    Write-Host ("Exception occurred when calling Get-LEApplicationGroups: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **OrderBy** | [**ApplicationGroupSortKey**](ApplicationGroupSortKey.md)| Sort Key | 
 **Direction** | [**SortOrder**](SortOrder.md)| Sort direction | 
 **Count** | **Int32**| Number of records to return | [default to 100]
 **Filter** | **String**| Filter on group name or group description | [optional] 
 **Offset** | **Int32**| Start offset | [optional] [default to 0]
 **IncludeTotalCount** | **Boolean**| Include total number of records | [optional] [default to $false]
 **Include** | [**ApplicationGroupInclude[]**](ApplicationGroupInclude.md)| Include options | [optional] 

### Return type

[**ApplicationGroupResultSet**](ApplicationGroupResultSet.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Remove-LEStepsFromApplicationGroup"></a>
# **Remove-LEStepsFromApplicationGroup**
> void Remove-LEStepsFromApplicationGroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RequestBody] <String[]><br>

Remove steps from application-group

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$accessToken = "YOUR_ACCESS_TOKEN"

# Configure your appliance name
$applianceName = "YOUR_APPLIANCE_HOSTNAME"

 
$bearerToken = @{"Authorization"="Bearer $accessToken"}
Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken
 

$GroupId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Application-group id
$RequestBody = "MyRequestBody" # String[] | Step ids

# Remove steps from application-group
try {
    $Result = Remove-LEStepsFromApplicationGroup -GroupId $GroupId -RequestBody $RequestBody
} catch {
    Write-Host ("Exception occurred when calling Remove-LEStepsFromApplicationGroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **GroupId** | **String**| Application-group id | 
 **RequestBody** | [**String[]**](String.md)| Step ids | 

### Return type

void (empty response body)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-LEReplaceApplicationGroupSteps"></a>
# **Invoke-LEReplaceApplicationGroupSteps**
> void Invoke-LEReplaceApplicationGroupSteps<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ConfigurationReplaceApplicationGroupStepsRequestInner] <PSCustomObject[]><br>

Replace application-group Steps

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$accessToken = "YOUR_ACCESS_TOKEN"

# Configure your appliance name
$applianceName = "YOUR_APPLIANCE_HOSTNAME"

 
$bearerToken = @{"Authorization"="Bearer $accessToken"}
Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken
 

$GroupId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Application-group id
$ConfigurationReplaceApplicationGroupStepsRequestInner = Initialize-LEConfigurationReplaceApplicationGroupStepsRequestInner -Type "MyType" -IsEnabled $false -ApplicationId "MyApplicationId" -RunOnce $false -LeaveRunning $false -DelayInSeconds 0 -ApplicationGroupId "MyApplicationGroupId" # ConfigurationReplaceApplicationGroupStepsRequestInner[] | Application-group data

# Replace application-group Steps
try {
    $Result = Invoke-LEReplaceApplicationGroupSteps -GroupId $GroupId -ConfigurationReplaceApplicationGroupStepsRequestInner $ConfigurationReplaceApplicationGroupStepsRequestInner
} catch {
    Write-Host ("Exception occurred when calling Invoke-LEReplaceApplicationGroupSteps: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **GroupId** | **String**| Application-group id | 
 **ConfigurationReplaceApplicationGroupStepsRequestInner** | [**ConfigurationReplaceApplicationGroupStepsRequestInner[]**](ConfigurationReplaceApplicationGroupStepsRequestInner.md)| Application-group data | 

### Return type

void (empty response body)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-LEApplicationGroup"></a>
# **Update-LEApplicationGroup**
> void Update-LEApplicationGroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ApplicationGroupUpdate] <PSCustomObject><br>

Update application-group

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$accessToken = "YOUR_ACCESS_TOKEN"

# Configure your appliance name
$applianceName = "YOUR_APPLIANCE_HOSTNAME"

 
$bearerToken = @{"Authorization"="Bearer $accessToken"}
Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken
 

$GroupId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Application-group id
$ConfigurationReplaceApplicationGroupStepsRequestInner = Initialize-LEConfigurationReplaceApplicationGroupStepsRequestInner -Type "MyType" -IsEnabled $false -ApplicationId "MyApplicationId" -RunOnce $false -LeaveRunning $false -DelayInSeconds 0 -ApplicationGroupId "MyApplicationGroupId"
$ApplicationGroupUpdate = Initialize-LEApplicationGroupUpdate -Name "MyName" -Description "MyDescription" -Steps $ConfigurationReplaceApplicationGroupStepsRequestInner # ApplicationGroupUpdate | Application-group data

# Update application-group
try {
    $Result = Update-LEApplicationGroup -GroupId $GroupId -ApplicationGroupUpdate $ApplicationGroupUpdate
} catch {
    Write-Host ("Exception occurred when calling Update-LEApplicationGroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **GroupId** | **String**| Application-group id | 
 **ApplicationGroupUpdate** | [**ApplicationGroupUpdate**](ApplicationGroupUpdate.md)| Application-group data | 

### Return type

void (empty response body)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-LEStepInApplicationGroup"></a>
# **Update-LEStepInApplicationGroup**
> void Update-LEStepInApplicationGroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StepId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ConfigurationUpdateStepInApplicationGroupRequest] <PSCustomObject><br>

Update single step in application-group

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$accessToken = "YOUR_ACCESS_TOKEN"

# Configure your appliance name
$applianceName = "YOUR_APPLIANCE_HOSTNAME"

 
$bearerToken = @{"Authorization"="Bearer $accessToken"}
Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken
 

$GroupId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Application-group id
$StepId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Step id
$ConfigurationUpdateStepInApplicationGroupRequest = Initialize-LEConfigurationUpdateStepInApplicationGroupRequest -Type "MyType" -IsEnabled $false -RunOnce $false -LeaveRunning $false -DelayInSeconds 0 # ConfigurationUpdateStepInApplicationGroupRequest | Step data (optional)

# Update single step in application-group
try {
    $Result = Update-LEStepInApplicationGroup -GroupId $GroupId -StepId $StepId -ConfigurationUpdateStepInApplicationGroupRequest $ConfigurationUpdateStepInApplicationGroupRequest
} catch {
    Write-Host ("Exception occurred when calling Update-LEStepInApplicationGroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **GroupId** | **String**| Application-group id | 
 **StepId** | **String**| Step id | 
 **ConfigurationUpdateStepInApplicationGroupRequest** | [**ConfigurationUpdateStepInApplicationGroupRequest**](ConfigurationUpdateStepInApplicationGroupRequest.md)| Step data | [optional] 

### Return type

void (empty response body)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


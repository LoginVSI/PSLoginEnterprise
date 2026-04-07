# PSLoginEnterprise.PSLoginEnterprise\Api.ApplicationGroupApi

All URIs are relative to */publicApi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-ConfigurationAddStepsToApplicationGroup**](ApplicationGroupApi.md#Invoke-ConfigurationAddStepsToApplicationGroup) | **POST** /v7/application-groups/{groupId}/steps | Add steps to application-group
[**Invoke-ConfigurationCreateApplicationGroup**](ApplicationGroupApi.md#Invoke-ConfigurationCreateApplicationGroup) | **POST** /v7/application-groups | Create application-group
[**Invoke-ConfigurationDeleteApplicationGroup**](ApplicationGroupApi.md#Invoke-ConfigurationDeleteApplicationGroup) | **DELETE** /v7/application-groups/{groupId} | Delete application-group
[**Invoke-ConfigurationDeleteApplicationGroupList**](ApplicationGroupApi.md#Invoke-ConfigurationDeleteApplicationGroupList) | **DELETE** /v7/application-groups | Delete multiple application-groups
[**Invoke-ConfigurationGetApplicationGroup**](ApplicationGroupApi.md#Invoke-ConfigurationGetApplicationGroup) | **GET** /v7/application-groups/{groupId} | Get application-group by id
[**Invoke-ConfigurationGetApplicationGroups**](ApplicationGroupApi.md#Invoke-ConfigurationGetApplicationGroups) | **GET** /v7/application-groups | Get paginated list of application-groups
[**Invoke-ConfigurationRemoveStepsFromApplicationGroup**](ApplicationGroupApi.md#Invoke-ConfigurationRemoveStepsFromApplicationGroup) | **DELETE** /v7/application-groups/{groupId}/steps | Remove steps from application-group
[**Invoke-ConfigurationReplaceApplicationGroupSteps**](ApplicationGroupApi.md#Invoke-ConfigurationReplaceApplicationGroupSteps) | **PUT** /v7/application-groups/{groupId}/steps | Replace application-group Steps
[**Invoke-ConfigurationUpdateApplicationGroup**](ApplicationGroupApi.md#Invoke-ConfigurationUpdateApplicationGroup) | **PUT** /v7/application-groups/{groupId} | Update application-group
[**Invoke-ConfigurationUpdateStepInApplicationGroup**](ApplicationGroupApi.md#Invoke-ConfigurationUpdateStepInApplicationGroup) | **PUT** /v7/application-groups/{groupId}/steps/{stepId} | Update single step in application-group


<a id="Invoke-ConfigurationAddStepsToApplicationGroup"></a>
# **Invoke-ConfigurationAddStepsToApplicationGroup**
> void Invoke-ConfigurationAddStepsToApplicationGroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ConfigurationReplaceApplicationGroupStepsRequestInner] <PSCustomObject[]><br>

Add steps to application-group

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

$GroupId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Application-group id
$ConfigurationReplaceApplicationGroupStepsRequestInner = Initialize-LEConfigurationReplaceApplicationGroupStepsRequestInner -Type "MyType" -IsEnabled $false -ApplicationId "MyApplicationId" -RunOnce $false -LeaveRunning $false -DelayInSeconds 0 -ApplicationGroupId "MyApplicationGroupId" # ConfigurationReplaceApplicationGroupStepsRequestInner[] | List of step data

# Add steps to application-group
try {
    $Result = Invoke-ConfigurationAddStepsToApplicationGroup -GroupId $GroupId -ConfigurationReplaceApplicationGroupStepsRequestInner $ConfigurationReplaceApplicationGroupStepsRequestInner
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationAddStepsToApplicationGroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-ConfigurationCreateApplicationGroup"></a>
# **Invoke-ConfigurationCreateApplicationGroup**
> ObjectId Invoke-ConfigurationCreateApplicationGroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ApplicationGroupCreate] <PSCustomObject><br>

Create application-group

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

$ConfigurationReplaceApplicationGroupStepsRequestInner = Initialize-LEConfigurationReplaceApplicationGroupStepsRequestInner -Type "MyType" -IsEnabled $false -ApplicationId "MyApplicationId" -RunOnce $false -LeaveRunning $false -DelayInSeconds 0 -ApplicationGroupId "MyApplicationGroupId"
$ApplicationGroupCreate = Initialize-LEApplicationGroupCreate -Name "MyName" -Description "MyDescription" -Steps $ConfigurationReplaceApplicationGroupStepsRequestInner -Roles "MyRoles" # ApplicationGroupCreate | Application-group data

# Create application-group
try {
    $Result = Invoke-ConfigurationCreateApplicationGroup -ApplicationGroupCreate $ApplicationGroupCreate
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationCreateApplicationGroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-ConfigurationDeleteApplicationGroup"></a>
# **Invoke-ConfigurationDeleteApplicationGroup**
> void Invoke-ConfigurationDeleteApplicationGroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <String><br>

Delete application-group

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

$GroupId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Application-group id

# Delete application-group
try {
    $Result = Invoke-ConfigurationDeleteApplicationGroup -GroupId $GroupId
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationDeleteApplicationGroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-ConfigurationDeleteApplicationGroupList"></a>
# **Invoke-ConfigurationDeleteApplicationGroupList**
> void Invoke-ConfigurationDeleteApplicationGroupList<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RequestBody] <String[]><br>

Delete multiple application-groups

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

$RequestBody = "MyRequestBody" # String[] | Application-group ids

# Delete multiple application-groups
try {
    $Result = Invoke-ConfigurationDeleteApplicationGroupList -RequestBody $RequestBody
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationDeleteApplicationGroupList: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-ConfigurationGetApplicationGroup"></a>
# **Invoke-ConfigurationGetApplicationGroup**
> ApplicationGroup Invoke-ConfigurationGetApplicationGroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Include] <PSCustomObject[]><br>

Get application-group by id

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

$GroupId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Application-group id
$Include = "none" # ApplicationGroupInclude[] | Include options (optional)

# Get application-group by id
try {
    $Result = Invoke-ConfigurationGetApplicationGroup -GroupId $GroupId -Include $Include
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationGetApplicationGroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-ConfigurationGetApplicationGroups"></a>
# **Invoke-ConfigurationGetApplicationGroups**
> ApplicationGroupResultSet Invoke-ConfigurationGetApplicationGroups<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OrderBy] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Direction] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Int32]><br>
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

# $applianceName = "YOUR_APPLIANCE_HOSTNAME"
$bearerToken = @{"Authorization"="Bearer $accessToken"}
Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken
""

$Filter = "MyFilter" # String | Filter on group name or group description (optional)
$OrderBy = "name" # ApplicationGroupSortKey | Sort Key (optional)
$Direction = "asc" # SortOrder | Sort direction (optional)
$Count = 56 # Int32 | Number of records to return (optional) (default to 100)
$Offset = 56 # Int32 | Start offset (optional) (default to 0)
$IncludeTotalCount = $true # Boolean | Include total number of records (optional) (default to $false)
$Include = "none" # ApplicationGroupInclude[] | Include options (optional)

# Get paginated list of application-groups
try {
    $Result = Invoke-ConfigurationGetApplicationGroups -Filter $Filter -OrderBy $OrderBy -Direction $Direction -Count $Count -Offset $Offset -IncludeTotalCount $IncludeTotalCount -Include $Include
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationGetApplicationGroups: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Filter** | **String**| Filter on group name or group description | [optional] 
 **OrderBy** | [**ApplicationGroupSortKey**](ApplicationGroupSortKey.md)| Sort Key | [optional] 
 **Direction** | [**SortOrder**](SortOrder.md)| Sort direction | [optional] 
 **Count** | **Int32**| Number of records to return | [optional] [default to 100]
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

<a id="Invoke-ConfigurationRemoveStepsFromApplicationGroup"></a>
# **Invoke-ConfigurationRemoveStepsFromApplicationGroup**
> void Invoke-ConfigurationRemoveStepsFromApplicationGroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RequestBody] <String[]><br>

Remove steps from application-group

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

$GroupId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Application-group id
$RequestBody = "MyRequestBody" # String[] | Step ids

# Remove steps from application-group
try {
    $Result = Invoke-ConfigurationRemoveStepsFromApplicationGroup -GroupId $GroupId -RequestBody $RequestBody
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationRemoveStepsFromApplicationGroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-ConfigurationReplaceApplicationGroupSteps"></a>
# **Invoke-ConfigurationReplaceApplicationGroupSteps**
> void Invoke-ConfigurationReplaceApplicationGroupSteps<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ConfigurationReplaceApplicationGroupStepsRequestInner] <PSCustomObject[]><br>

Replace application-group Steps

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

$GroupId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Application-group id
$ConfigurationReplaceApplicationGroupStepsRequestInner = Initialize-LEConfigurationReplaceApplicationGroupStepsRequestInner -Type "MyType" -IsEnabled $false -ApplicationId "MyApplicationId" -RunOnce $false -LeaveRunning $false -DelayInSeconds 0 -ApplicationGroupId "MyApplicationGroupId" # ConfigurationReplaceApplicationGroupStepsRequestInner[] | Application-group data

# Replace application-group Steps
try {
    $Result = Invoke-ConfigurationReplaceApplicationGroupSteps -GroupId $GroupId -ConfigurationReplaceApplicationGroupStepsRequestInner $ConfigurationReplaceApplicationGroupStepsRequestInner
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationReplaceApplicationGroupSteps: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-ConfigurationUpdateApplicationGroup"></a>
# **Invoke-ConfigurationUpdateApplicationGroup**
> void Invoke-ConfigurationUpdateApplicationGroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ApplicationGroupUpdate] <PSCustomObject><br>

Update application-group

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

$GroupId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Application-group id
$ConfigurationReplaceApplicationGroupStepsRequestInner = Initialize-LEConfigurationReplaceApplicationGroupStepsRequestInner -Type "MyType" -IsEnabled $false -ApplicationId "MyApplicationId" -RunOnce $false -LeaveRunning $false -DelayInSeconds 0 -ApplicationGroupId "MyApplicationGroupId"
$ApplicationGroupUpdate = Initialize-LEApplicationGroupUpdate -Name "MyName" -Description "MyDescription" -Steps $ConfigurationReplaceApplicationGroupStepsRequestInner # ApplicationGroupUpdate | Application-group data

# Update application-group
try {
    $Result = Invoke-ConfigurationUpdateApplicationGroup -GroupId $GroupId -ApplicationGroupUpdate $ApplicationGroupUpdate
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationUpdateApplicationGroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-ConfigurationUpdateStepInApplicationGroup"></a>
# **Invoke-ConfigurationUpdateStepInApplicationGroup**
> void Invoke-ConfigurationUpdateStepInApplicationGroup<br>
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

# $applianceName = "YOUR_APPLIANCE_HOSTNAME"
$bearerToken = @{"Authorization"="Bearer $accessToken"}
Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken
""

$GroupId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Application-group id
$StepId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Step id
$ConfigurationUpdateStepInApplicationGroupRequest = Initialize-LEConfigurationUpdateStepInApplicationGroupRequest -Type "MyType" -IsEnabled $false -RunOnce $false -LeaveRunning $false -DelayInSeconds 0 # ConfigurationUpdateStepInApplicationGroupRequest | Step data (optional)

# Update single step in application-group
try {
    $Result = Invoke-ConfigurationUpdateStepInApplicationGroup -GroupId $GroupId -StepId $StepId -ConfigurationUpdateStepInApplicationGroupRequest $ConfigurationUpdateStepInApplicationGroupRequest
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationUpdateStepInApplicationGroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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


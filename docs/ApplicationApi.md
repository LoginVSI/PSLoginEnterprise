# PSLoginEnterprise.PSLoginEnterprise\Api.ApplicationApi

All URIs are relative to */publicApi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-ConfigurationCreateApplication**](ApplicationApi.md#Invoke-ConfigurationCreateApplication) | **POST** /v7/applications | Create application.
[**Invoke-ConfigurationDeleteApplication**](ApplicationApi.md#Invoke-ConfigurationDeleteApplication) | **DELETE** /v7/applications/{applicationId} | Delete application
[**Invoke-ConfigurationDeleteApplications**](ApplicationApi.md#Invoke-ConfigurationDeleteApplications) | **DELETE** /v7/applications | Delete multiple applications
[**Invoke-ConfigurationGetApplication**](ApplicationApi.md#Invoke-ConfigurationGetApplication) | **GET** /v7/applications/{applicationId} | Get application by id
[**Invoke-ConfigurationGetApplications**](ApplicationApi.md#Invoke-ConfigurationGetApplications) | **GET** /v7/applications | Gets a paginated list of applications
[**Invoke-ConfigurationParseApplicationDetails**](ApplicationApi.md#Invoke-ConfigurationParseApplicationDetails) | **POST** /v7/applications/parse | Parse application details from script content
[**Invoke-ConfigurationUpdateApplication**](ApplicationApi.md#Invoke-ConfigurationUpdateApplication) | **PUT** /v7/applications/{applicationId} | Update application


<a id="Invoke-ConfigurationCreateApplication"></a>
# **Invoke-ConfigurationCreateApplication**
> ObjectId Invoke-ConfigurationCreateApplication<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ConfigurationCreateApplicationRequest] <PSCustomObject><br>

Create application.

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

$ConfigurationCreateApplicationRequest = Initialize-LEConfigurationCreateApplicationRequest -Type "MyType" -Name "MyName" -Description "MyDescription" -Username "MyUsername" -Password "MyPassword" -TakeScreenshots $false -ScriptContent "MyScriptContent" -Roles "MyRoles" -BrowserName "chrome" -Url "MyUrl" -ProfileLocation "MyProfileLocation" -CommandLine "MyCommandLine" -WorkingDirectory "MyWorkingDirectory" # ConfigurationCreateApplicationRequest | Application data

# Create application.
try {
    $Result = Invoke-ConfigurationCreateApplication -ConfigurationCreateApplicationRequest $ConfigurationCreateApplicationRequest
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationCreateApplication: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ConfigurationCreateApplicationRequest** | [**ConfigurationCreateApplicationRequest**](ConfigurationCreateApplicationRequest.md)| Application data | 

### Return type

[**ObjectId**](ObjectId.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-ConfigurationDeleteApplication"></a>
# **Invoke-ConfigurationDeleteApplication**
> void Invoke-ConfigurationDeleteApplication<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ApplicationId] <String><br>

Delete application

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

$ApplicationId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Application id

# Delete application
try {
    $Result = Invoke-ConfigurationDeleteApplication -ApplicationId $ApplicationId
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationDeleteApplication: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ApplicationId** | **String**| Application id | 

### Return type

void (empty response body)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-ConfigurationDeleteApplications"></a>
# **Invoke-ConfigurationDeleteApplications**
> void Invoke-ConfigurationDeleteApplications<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RequestBody] <String[]><br>

Delete multiple applications

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

$RequestBody = "MyRequestBody" # String[] | Application ids (optional)

# Delete multiple applications
try {
    $Result = Invoke-ConfigurationDeleteApplications -RequestBody $RequestBody
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationDeleteApplications: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RequestBody** | [**String[]**](String.md)| Application ids | [optional] 

### Return type

void (empty response body)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-ConfigurationGetApplication"></a>
# **Invoke-ConfigurationGetApplication**
> ConfigurationGetApplication200Response Invoke-ConfigurationGetApplication<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ApplicationId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Include] <PSCustomObject[]><br>

Get application by id

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

$ApplicationId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Application id
$Include = "none" # ApplicationInclude[] | Include options (optional)

# Get application by id
try {
    $Result = Invoke-ConfigurationGetApplication -ApplicationId $ApplicationId -Include $Include
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationGetApplication: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ApplicationId** | **String**| Application id | 
 **Include** | [**ApplicationInclude[]**](ApplicationInclude.md)| Include options | [optional] 

### Return type

[**ConfigurationGetApplication200Response**](ConfigurationGetApplication200Response.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-ConfigurationGetApplications"></a>
# **Invoke-ConfigurationGetApplications**
> ApplicationResultSet Invoke-ConfigurationGetApplications<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OrderBy] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Direction] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IncludeTotalCount] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Include] <PSCustomObject[]><br>

Gets a paginated list of applications

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

$OrderBy = "name" # ApplicationSortKey | Sort Key (optional)
$Direction = "asc" # SortOrder | Sort direction (optional)
$Count = 56 # Int32 | Number of records to return (optional) (default to 100)
$Offset = 56 # Int32 | Start offset (optional) (default to 0)
$IncludeTotalCount = $true # Boolean | Include total number of records (optional) (default to $false)
$Filter = "MyFilter" # String | Filter on name or description (optional)
$Include = "none" # ApplicationInclude[] | Include options (optional)

# Gets a paginated list of applications
try {
    $Result = Invoke-ConfigurationGetApplications -OrderBy $OrderBy -Direction $Direction -Count $Count -Offset $Offset -IncludeTotalCount $IncludeTotalCount -Filter $Filter -Include $Include
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationGetApplications: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **OrderBy** | [**ApplicationSortKey**](ApplicationSortKey.md)| Sort Key | [optional] 
 **Direction** | [**SortOrder**](SortOrder.md)| Sort direction | [optional] 
 **Count** | **Int32**| Number of records to return | [optional] [default to 100]
 **Offset** | **Int32**| Start offset | [optional] [default to 0]
 **IncludeTotalCount** | **Boolean**| Include total number of records | [optional] [default to $false]
 **Filter** | **String**| Filter on name or description | [optional] 
 **Include** | [**ApplicationInclude[]**](ApplicationInclude.md)| Include options | [optional] 

### Return type

[**ApplicationResultSet**](ApplicationResultSet.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-ConfigurationParseApplicationDetails"></a>
# **Invoke-ConfigurationParseApplicationDetails**
> ConfigurationParseApplicationDetails200Response Invoke-ConfigurationParseApplicationDetails<br>

Parse application details from script content

To specify a Script, the following payloads may be added to the POST request:    a) A script file with valid script content (.cs file extension)   b) A manual input of text via the POST request's text payload

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


# Parse application details from script content
try {
    $Result = Invoke-ConfigurationParseApplicationDetails
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationParseApplicationDetails: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ConfigurationParseApplicationDetails200Response**](ConfigurationParseApplicationDetails200Response.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-ConfigurationUpdateApplication"></a>
# **Invoke-ConfigurationUpdateApplication**
> void Invoke-ConfigurationUpdateApplication<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ApplicationId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ConfigurationUpdateApplicationRequest] <PSCustomObject><br>

Update application

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

$ApplicationId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Application id
$ConfigurationUpdateApplicationRequest = Initialize-LEConfigurationUpdateApplicationRequest -Type "MyType" -Name "MyName" -Description "MyDescription" -Username "MyUsername" -Password "MyPassword" -MustUpdatePassword $false -TakeScreenshots $false -ScriptContent "MyScriptContent" -BrowserName "chrome" -Url "MyUrl" -ProfileLocation "MyProfileLocation" -CommandLine "MyCommandLine" -WorkingDirectory "MyWorkingDirectory" # ConfigurationUpdateApplicationRequest | Application data

# Update application
try {
    $Result = Invoke-ConfigurationUpdateApplication -ApplicationId $ApplicationId -ConfigurationUpdateApplicationRequest $ConfigurationUpdateApplicationRequest
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationUpdateApplication: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ApplicationId** | **String**| Application id | 
 **ConfigurationUpdateApplicationRequest** | [**ConfigurationUpdateApplicationRequest**](ConfigurationUpdateApplicationRequest.md)| Application data | 

### Return type

void (empty response body)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


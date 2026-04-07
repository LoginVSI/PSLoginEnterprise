# PSLoginEnterprise.PSLoginEnterprise\Api.WorkloadApi

All URIs are relative to */publicApi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-ConfigurationCreateTestWorkloadSteps**](WorkloadApi.md#Invoke-ConfigurationCreateTestWorkloadSteps) | **POST** /v7/tests/{testId}/workload | Add test-workload steps
[**Invoke-ConfigurationDeleteTestWorkloadStep**](WorkloadApi.md#Invoke-ConfigurationDeleteTestWorkloadStep) | **DELETE** /v7/tests/{testId}/workload/{stepId} | Remove test-workload step
[**Invoke-ConfigurationDeleteTestWorkloadSteps**](WorkloadApi.md#Invoke-ConfigurationDeleteTestWorkloadSteps) | **DELETE** /v7/tests/{testId}/workload | Remove test-workload steps
[**Invoke-ConfigurationGetTestWorkload**](WorkloadApi.md#Invoke-ConfigurationGetTestWorkload) | **GET** /v7/tests/{testId}/workload | Get test-workload by test id
[**Invoke-ConfigurationReplaceTestWorkloadSteps**](WorkloadApi.md#Invoke-ConfigurationReplaceTestWorkloadSteps) | **PUT** /v7/tests/{testId}/workload | Replace test-workload steps
[**Invoke-ConfigurationUpdateTestWorkloadStep**](WorkloadApi.md#Invoke-ConfigurationUpdateTestWorkloadStep) | **PUT** /v7/tests/{testId}/workload/{stepId} | Update test-workload step


<a id="Invoke-ConfigurationCreateTestWorkloadSteps"></a>
# **Invoke-ConfigurationCreateTestWorkloadSteps**
> void Invoke-ConfigurationCreateTestWorkloadSteps<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ConfigurationReplaceApplicationGroupStepsRequestInner] <PSCustomObject[]><br>

Add test-workload steps

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

$TestId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Test id
$ConfigurationReplaceApplicationGroupStepsRequestInner = Initialize-LEConfigurationReplaceApplicationGroupStepsRequestInner -Type "MyType" -IsEnabled $false -ApplicationId "MyApplicationId" -RunOnce $false -LeaveRunning $false -DelayInSeconds 0 -ApplicationGroupId "MyApplicationGroupId" # ConfigurationReplaceApplicationGroupStepsRequestInner[] | List of step data

# Add test-workload steps
try {
    $Result = Invoke-ConfigurationCreateTestWorkloadSteps -TestId $TestId -ConfigurationReplaceApplicationGroupStepsRequestInner $ConfigurationReplaceApplicationGroupStepsRequestInner
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationCreateTestWorkloadSteps: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestId** | **String**| Test id | 
 **ConfigurationReplaceApplicationGroupStepsRequestInner** | [**ConfigurationReplaceApplicationGroupStepsRequestInner[]**](ConfigurationReplaceApplicationGroupStepsRequestInner.md)| List of step data | 

### Return type

void (empty response body)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-ConfigurationDeleteTestWorkloadStep"></a>
# **Invoke-ConfigurationDeleteTestWorkloadStep**
> void Invoke-ConfigurationDeleteTestWorkloadStep<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StepId] <String><br>

Remove test-workload step

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

$TestId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Test id
$StepId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Step id

# Remove test-workload step
try {
    $Result = Invoke-ConfigurationDeleteTestWorkloadStep -TestId $TestId -StepId $StepId
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationDeleteTestWorkloadStep: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestId** | **String**| Test id | 
 **StepId** | **String**| Step id | 

### Return type

void (empty response body)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-ConfigurationDeleteTestWorkloadSteps"></a>
# **Invoke-ConfigurationDeleteTestWorkloadSteps**
> void Invoke-ConfigurationDeleteTestWorkloadSteps<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RequestBody] <String[]><br>

Remove test-workload steps

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

$TestId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Test id
$RequestBody = "MyRequestBody" # String[] | Step ids

# Remove test-workload steps
try {
    $Result = Invoke-ConfigurationDeleteTestWorkloadSteps -TestId $TestId -RequestBody $RequestBody
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationDeleteTestWorkloadSteps: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestId** | **String**| Test id | 
 **RequestBody** | [**String[]**](String.md)| Step ids | 

### Return type

void (empty response body)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-ConfigurationGetTestWorkload"></a>
# **Invoke-ConfigurationGetTestWorkload**
> Workload Invoke-ConfigurationGetTestWorkload<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestId] <String><br>

Get test-workload by test id

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

$TestId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Test id

# Get test-workload by test id
try {
    $Result = Invoke-ConfigurationGetTestWorkload -TestId $TestId
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationGetTestWorkload: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestId** | **String**| Test id | 

### Return type

[**Workload**](Workload.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-ConfigurationReplaceTestWorkloadSteps"></a>
# **Invoke-ConfigurationReplaceTestWorkloadSteps**
> void Invoke-ConfigurationReplaceTestWorkloadSteps<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ConfigurationReplaceApplicationGroupStepsRequestInner] <PSCustomObject[]><br>

Replace test-workload steps

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

$TestId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Test id
$ConfigurationReplaceApplicationGroupStepsRequestInner = Initialize-LEConfigurationReplaceApplicationGroupStepsRequestInner -Type "MyType" -IsEnabled $false -ApplicationId "MyApplicationId" -RunOnce $false -LeaveRunning $false -DelayInSeconds 0 -ApplicationGroupId "MyApplicationGroupId" # ConfigurationReplaceApplicationGroupStepsRequestInner[] | List of step data (optional)

# Replace test-workload steps
try {
    $Result = Invoke-ConfigurationReplaceTestWorkloadSteps -TestId $TestId -ConfigurationReplaceApplicationGroupStepsRequestInner $ConfigurationReplaceApplicationGroupStepsRequestInner
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationReplaceTestWorkloadSteps: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestId** | **String**| Test id | 
 **ConfigurationReplaceApplicationGroupStepsRequestInner** | [**ConfigurationReplaceApplicationGroupStepsRequestInner[]**](ConfigurationReplaceApplicationGroupStepsRequestInner.md)| List of step data | [optional] 

### Return type

void (empty response body)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-ConfigurationUpdateTestWorkloadStep"></a>
# **Invoke-ConfigurationUpdateTestWorkloadStep**
> void Invoke-ConfigurationUpdateTestWorkloadStep<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StepId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ConfigurationUpdateStepInApplicationGroupRequest] <PSCustomObject><br>

Update test-workload step

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

$TestId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Test id
$StepId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Step id
$ConfigurationUpdateStepInApplicationGroupRequest = Initialize-LEConfigurationUpdateStepInApplicationGroupRequest -Type "MyType" -IsEnabled $false -RunOnce $false -LeaveRunning $false -DelayInSeconds 0 # ConfigurationUpdateStepInApplicationGroupRequest | Step data

# Update test-workload step
try {
    $Result = Invoke-ConfigurationUpdateTestWorkloadStep -TestId $TestId -StepId $StepId -ConfigurationUpdateStepInApplicationGroupRequest $ConfigurationUpdateStepInApplicationGroupRequest
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationUpdateTestWorkloadStep: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestId** | **String**| Test id | 
 **StepId** | **String**| Step id | 
 **ConfigurationUpdateStepInApplicationGroupRequest** | [**ConfigurationUpdateStepInApplicationGroupRequest**](ConfigurationUpdateStepInApplicationGroupRequest.md)| Step data | 

### Return type

void (empty response body)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


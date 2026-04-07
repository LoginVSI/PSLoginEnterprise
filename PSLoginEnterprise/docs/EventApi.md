# PSLoginEnterprise.PSLoginEnterprise\Api.EventApi

All URIs are relative to */publicApi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-DataGetEvent**](EventApi.md#Invoke-DataGetEvent) | **GET** /v7/events/{eventId} | Get event by id
[**Invoke-DataGetEvents**](EventApi.md#Invoke-DataGetEvents) | **GET** /v7/events | Get paginated list of all events
[**Invoke-DataGetEventsByAppExecution**](EventApi.md#Invoke-DataGetEventsByAppExecution) | **GET** /v7/test-runs/{testRunId}/app-executions/{appExecutionId}/events | Get paginated list of events by app-execution id
[**Invoke-DataGetEventsByTestRun**](EventApi.md#Invoke-DataGetEventsByTestRun) | **GET** /v7/test-runs/{testRunId}/events | Get paginated list of events by test-run id
[**Invoke-DataGetEventsByUserSession**](EventApi.md#Invoke-DataGetEventsByUserSession) | **GET** /v7/test-runs/{testRunId}/user-sessions/{userSessionId}/events | Get paginated list of events by user-session id


<a id="Invoke-DataGetEvent"></a>
# **Invoke-DataGetEvent**
> ModelEvent Invoke-DataGetEvent<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EventId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Include] <PSCustomObject[]><br>

Get event by id

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

$EventId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Event id
$Include = "none" # EventInclude[] | Include options (optional)

# Get event by id
try {
    $Result = Invoke-DataGetEvent -EventId $EventId -Include $Include
} catch {
    Write-Host ("Exception occurred when calling Invoke-DataGetEvent: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EventId** | **String**| Event id | 
 **Include** | [**EventInclude[]**](EventInclude.md)| Include options | [optional] 

### Return type

[**ModelEvent**](ModelEvent.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DataGetEvents"></a>
# **Invoke-DataGetEvents**
> EventResultSet Invoke-DataGetEvents<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Direction] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IncludeTotalCount] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-From] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-To] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Include] <PSCustomObject[]><br>

Get paginated list of all events

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

$Direction = "asc" # SortOrder | Sort direction (optional)
$Count = 56 # Int32 | Number of records to return (optional) (default to 100)
$Offset = 56 # Int32 | Start offset (optional) (default to 0)
$IncludeTotalCount = $true # Boolean | Include total number of records (optional) (default to $false)
$From = (Get-Date) # System.DateTime | From date-time (optional)
$To = (Get-Date) # System.DateTime | To date-time (optional)
$Include = "none" # EventInclude[] | Include options (optional)

# Get paginated list of all events
try {
    $Result = Invoke-DataGetEvents -Direction $Direction -Count $Count -Offset $Offset -IncludeTotalCount $IncludeTotalCount -From $From -To $To -Include $Include
} catch {
    Write-Host ("Exception occurred when calling Invoke-DataGetEvents: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Direction** | [**SortOrder**](SortOrder.md)| Sort direction | [optional] 
 **Count** | **Int32**| Number of records to return | [optional] [default to 100]
 **Offset** | **Int32**| Start offset | [optional] [default to 0]
 **IncludeTotalCount** | **Boolean**| Include total number of records | [optional] [default to $false]
 **From** | **System.DateTime**| From date-time | [optional] 
 **To** | **System.DateTime**| To date-time | [optional] 
 **Include** | [**EventInclude[]**](EventInclude.md)| Include options | [optional] 

### Return type

[**EventResultSet**](EventResultSet.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DataGetEventsByAppExecution"></a>
# **Invoke-DataGetEventsByAppExecution**
> EventResultSet Invoke-DataGetEventsByAppExecution<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestRunId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AppExecutionId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Direction] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IncludeTotalCount] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Include] <PSCustomObject[]><br>

Get paginated list of events by app-execution id

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

$TestRunId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Test-run id
$AppExecutionId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | App-execution id
$Direction = "asc" # SortOrder | Sort direction (optional)
$Count = 56 # Int32 | Number of records to return (optional) (default to 100)
$Offset = 56 # Int32 | Start offset (optional) (default to 0)
$IncludeTotalCount = $true # Boolean | Include total number of records (optional) (default to $false)
$Include = "none" # EventInclude[] | Include options (optional)

# Get paginated list of events by app-execution id
try {
    $Result = Invoke-DataGetEventsByAppExecution -TestRunId $TestRunId -AppExecutionId $AppExecutionId -Direction $Direction -Count $Count -Offset $Offset -IncludeTotalCount $IncludeTotalCount -Include $Include
} catch {
    Write-Host ("Exception occurred when calling Invoke-DataGetEventsByAppExecution: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestRunId** | **String**| Test-run id | 
 **AppExecutionId** | **String**| App-execution id | 
 **Direction** | [**SortOrder**](SortOrder.md)| Sort direction | [optional] 
 **Count** | **Int32**| Number of records to return | [optional] [default to 100]
 **Offset** | **Int32**| Start offset | [optional] [default to 0]
 **IncludeTotalCount** | **Boolean**| Include total number of records | [optional] [default to $false]
 **Include** | [**EventInclude[]**](EventInclude.md)| Include options | [optional] 

### Return type

[**EventResultSet**](EventResultSet.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DataGetEventsByTestRun"></a>
# **Invoke-DataGetEventsByTestRun**
> EventResultSet Invoke-DataGetEventsByTestRun<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestRunId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Direction] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IncludeTotalCount] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-From] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-To] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Include] <PSCustomObject[]><br>

Get paginated list of events by test-run id

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

$TestRunId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Test-run id
$Direction = "asc" # SortOrder | Sort direction (optional)
$Count = 56 # Int32 | Number of records to return (optional) (default to 100)
$Offset = 56 # Int32 | Start offset (optional) (default to 0)
$IncludeTotalCount = $true # Boolean | Include total number of records (optional) (default to $false)
$From = (Get-Date) # System.DateTime | From date-time (optional)
$To = (Get-Date) # System.DateTime | To date-time (optional)
$Include = "none" # EventInclude[] | Include options (optional)

# Get paginated list of events by test-run id
try {
    $Result = Invoke-DataGetEventsByTestRun -TestRunId $TestRunId -Direction $Direction -Count $Count -Offset $Offset -IncludeTotalCount $IncludeTotalCount -From $From -To $To -Include $Include
} catch {
    Write-Host ("Exception occurred when calling Invoke-DataGetEventsByTestRun: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestRunId** | **String**| Test-run id | 
 **Direction** | [**SortOrder**](SortOrder.md)| Sort direction | [optional] 
 **Count** | **Int32**| Number of records to return | [optional] [default to 100]
 **Offset** | **Int32**| Start offset | [optional] [default to 0]
 **IncludeTotalCount** | **Boolean**| Include total number of records | [optional] [default to $false]
 **From** | **System.DateTime**| From date-time | [optional] 
 **To** | **System.DateTime**| To date-time | [optional] 
 **Include** | [**EventInclude[]**](EventInclude.md)| Include options | [optional] 

### Return type

[**EventResultSet**](EventResultSet.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DataGetEventsByUserSession"></a>
# **Invoke-DataGetEventsByUserSession**
> EventResultSet Invoke-DataGetEventsByUserSession<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestRunId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserSessionId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Direction] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IncludeTotalCount] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Include] <PSCustomObject[]><br>

Get paginated list of events by user-session id

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

$TestRunId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Test-run id
$UserSessionId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | User-session id
$Direction = "asc" # SortOrder | Sort direction (optional)
$Count = 56 # Int32 | Number of records to return (optional) (default to 100)
$Offset = 56 # Int32 | Start offset (optional) (default to 0)
$IncludeTotalCount = $true # Boolean | Include total number of records (optional) (default to $false)
$Include = "none" # EventInclude[] | Include options (optional)

# Get paginated list of events by user-session id
try {
    $Result = Invoke-DataGetEventsByUserSession -TestRunId $TestRunId -UserSessionId $UserSessionId -Direction $Direction -Count $Count -Offset $Offset -IncludeTotalCount $IncludeTotalCount -Include $Include
} catch {
    Write-Host ("Exception occurred when calling Invoke-DataGetEventsByUserSession: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestRunId** | **String**| Test-run id | 
 **UserSessionId** | **String**| User-session id | 
 **Direction** | [**SortOrder**](SortOrder.md)| Sort direction | [optional] 
 **Count** | **Int32**| Number of records to return | [optional] [default to 100]
 **Offset** | **Int32**| Start offset | [optional] [default to 0]
 **IncludeTotalCount** | **Boolean**| Include total number of records | [optional] [default to $false]
 **Include** | [**EventInclude[]**](EventInclude.md)| Include options | [optional] 

### Return type

[**EventResultSet**](EventResultSet.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# AppExecution
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TestRunId** | **String** | Test run id | [optional] 
**Id** | **String** | App execution id | [optional] 
**UserSessionId** | **String** | User session id | [optional] 
**ApplicationId** | **String** | Application id | [optional] 
**State** | [**AppExecutionState**](AppExecutionState.md) |  | [optional] 
**Created** | **System.DateTime** | Created date-time | [optional] 
**LastModified** | **System.DateTime** | Last modified date-time | [optional] 

## Examples

- Prepare the resource
```powershell
$AppExecution = Initialize-LEPSLoginEnterpriseAppExecution  -TestRunId null `
 -Id null `
 -UserSessionId null `
 -ApplicationId null `
 -State null `
 -Created null `
 -LastModified null
```

- Convert the resource to JSON
```powershell
$AppExecution | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


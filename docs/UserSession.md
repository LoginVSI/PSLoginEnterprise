# UserSession
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | User session id | [optional] 
**TestRunId** | **String** | Test run id | [optional] 
**TestId** | **String** | Test id | [optional] 
**Created** | **System.DateTime** | Created date-time | [optional] 
**LoginState** | [**LoginState**](LoginState.md) |  | [optional] 
**SessionState** | [**SessionState**](SessionState.md) |  | [optional] 
**StateLastModified** | **System.DateTime** | State last modified date-time | [optional] 
**TestType** | [**TestType**](TestType.md) |  | [optional] 
**AccountId** | **String** | Account id | [optional] 
**LauncherName** | **String** | Launcher name | [optional] 
**LoginStartTime** | **System.DateTime** | Login start date-time | [optional] 
**LoginEndTime** | **System.DateTime** | Login end date-time | [optional] 
**SessionEndTime** | **System.DateTime** | Session end date-time | [optional] 
**SessionMetricEnabled** | **Boolean** | User Session Metrics Enabled | [optional] 
**Properties** | [**Property[]**](Property.md) | Session properties | [optional] 

## Examples

- Prepare the resource
```powershell
$UserSession = Initialize-LEPSLoginEnterpriseUserSession  -Id null `
 -TestRunId null `
 -TestId null `
 -Created null `
 -LoginState null `
 -SessionState null `
 -StateLastModified null `
 -TestType null `
 -AccountId null `
 -LauncherName null `
 -LoginStartTime null `
 -LoginEndTime null `
 -SessionEndTime null `
 -SessionMetricEnabled null `
 -Properties null
```

- Convert the resource to JSON
```powershell
$UserSession | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


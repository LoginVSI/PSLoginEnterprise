# AppInvocationSnapshot
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | 
**AppId** | **String** | Application id | [optional] 
**ApplicationName** | **String** | Application name | [optional] 
**Timers** | **String[]** | Timers | [optional] 
**RunOnce** | **Boolean** | Run the application only once | [optional] 
**LeaveRunning** | **Boolean** | Do not close the application | [optional] 

## Examples

- Prepare the resource
```powershell
$AppInvocationSnapshot = Initialize-LEPSLoginEnterpriseAppInvocationSnapshot  -Type null `
 -AppId null `
 -ApplicationName null `
 -Timers null `
 -RunOnce null `
 -LeaveRunning null
```

- Convert the resource to JSON
```powershell
$AppInvocationSnapshot | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


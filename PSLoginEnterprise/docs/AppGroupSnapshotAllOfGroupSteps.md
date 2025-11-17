# AppGroupSnapshotAllOfGroupSteps
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | 
**AppId** | **String** | Application id | [optional] 
**ApplicationName** | **String** | Application name | [optional] 
**Timers** | **String[]** | Timers | [optional] 
**RunOnce** | **Boolean** | Run the application only once | [optional] 
**LeaveRunning** | **Boolean** | Do not close the application | [optional] 
**DelayInSeconds** | **Int32** | Delay in seconds | [optional] 
**Name** | **String** | Application group name | [optional] 
**GroupSteps** | [**AppGroupSnapshotAllOfGroupSteps[]**](AppGroupSnapshotAllOfGroupSteps.md) | Group step | [optional] 

## Examples

- Prepare the resource
```powershell
$AppGroupSnapshotAllOfGroupSteps = Initialize-LEPSLoginEnterpriseAppGroupSnapshotAllOfGroupSteps  -Type null `
 -AppId null `
 -ApplicationName null `
 -Timers null `
 -RunOnce null `
 -LeaveRunning null `
 -DelayInSeconds null `
 -Name null `
 -GroupSteps null
```

- Convert the resource to JSON
```powershell
$AppGroupSnapshotAllOfGroupSteps | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


# AppInvocationCreate
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | 
**ApplicationId** | **String** | Application id | 
**RunOnce** | **Boolean** | Run the application only once | 
**LeaveRunning** | **Boolean** | Do not close the application | 
**IsEnabled** | **Boolean** | Enable step | 

## Examples

- Prepare the resource
```powershell
$AppInvocationCreate = Initialize-LEPSLoginEnterpriseAppInvocationCreate  -Type null `
 -ApplicationId null `
 -RunOnce null `
 -LeaveRunning null `
 -IsEnabled null
```

- Convert the resource to JSON
```powershell
$AppInvocationCreate | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


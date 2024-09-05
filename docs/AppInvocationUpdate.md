# AppInvocationUpdate
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**RunOnce** | **Boolean** | Run the application only once | 
**LeaveRunning** | **Boolean** | Do not close the application | 
**Type** | **String** |  | 
**IsEnabled** | **Boolean** | Enable step | 

## Examples

- Prepare the resource
```powershell
$AppInvocationUpdate = Initialize-LEPSLoginEnterpriseAppInvocationUpdate  -RunOnce null `
 -LeaveRunning null `
 -Type null `
 -IsEnabled null
```

- Convert the resource to JSON
```powershell
$AppInvocationUpdate | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


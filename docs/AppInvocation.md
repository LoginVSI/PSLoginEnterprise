# AppInvocation
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | 
**Application** | [**AppInvocationApplication**](AppInvocationApplication.md) |  | [optional] 
**RunOnce** | **Boolean** | Run the application only once | [optional] 
**LeaveRunning** | **Boolean** | Do not close the application | [optional] 
**Id** | **String** | Step id | [optional] 
**IsEnabled** | **Boolean** | Enable step | [optional] 

## Examples

- Prepare the resource
```powershell
$AppInvocation = Initialize-LEPSLoginEnterpriseAppInvocation  -Type null `
 -Application null `
 -RunOnce null `
 -LeaveRunning null `
 -Id null `
 -IsEnabled null
```

- Convert the resource to JSON
```powershell
$AppInvocation | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


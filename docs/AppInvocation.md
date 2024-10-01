# AppInvocation
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | 
**Id** | **String** | Step id | [optional] 
**IsEnabled** | **Boolean** | Enable step | [optional] 
**Application** | [**AppInvocationAllOfApplication**](AppInvocationAllOfApplication.md) |  | [optional] 
**RunOnce** | **Boolean** | Run the application only once | [optional] 
**LeaveRunning** | **Boolean** | Do not close the application | [optional] 

## Examples

- Prepare the resource
```powershell
$AppInvocation = Initialize-LEPSLoginEnterpriseAppInvocation  -Type null `
 -Id null `
 -IsEnabled null `
 -Application null `
 -RunOnce null `
 -LeaveRunning null
```

- Convert the resource to JSON
```powershell
$AppInvocation | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


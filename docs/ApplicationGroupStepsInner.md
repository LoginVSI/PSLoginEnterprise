# ApplicationGroupStepsInner
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | 
**Id** | **String** | Step id | [optional] 
**IsEnabled** | **Boolean** | Enable step | [optional] 
**Application** | [**AppInvocationAllOfApplication**](AppInvocationAllOfApplication.md) |  | [optional] 
**RunOnce** | **Boolean** | Run the application only once | [optional] 
**LeaveRunning** | **Boolean** | Do not close the application | [optional] 
**DelayInSeconds** | **Int32** | Delay in seconds | [optional] 
**ApplicationGroup** | [**ApplicationGroup**](ApplicationGroup.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ApplicationGroupStepsInner = Initialize-LEPSLoginEnterpriseApplicationGroupStepsInner  -Type null `
 -Id null `
 -IsEnabled null `
 -Application null `
 -RunOnce null `
 -LeaveRunning null `
 -DelayInSeconds null `
 -ApplicationGroup null
```

- Convert the resource to JSON
```powershell
$ApplicationGroupStepsInner | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


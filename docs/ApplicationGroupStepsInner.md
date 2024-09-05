# ApplicationGroupStepsInner
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Application** | [**OneOfWebApplicationWindowsApplication**](OneOfWebApplicationWindowsApplication.md) | Application | [optional] 
**RunOnce** | **Boolean** | Run the application only once | [optional] 
**LeaveRunning** | **Boolean** | Do not close the application | [optional] 
**Type** | **String** |  | 
**Id** | **String** | Step id | [optional] 
**IsEnabled** | **Boolean** | Enable step | [optional] 
**DelayInSeconds** | **Int32** | Delay in seconds | [optional] 
**ApplicationGroup** | [**ApplicationGroup**](ApplicationGroup.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ApplicationGroupStepsInner = Initialize-LEPSLoginEnterpriseApplicationGroupStepsInner  -Application null `
 -RunOnce null `
 -LeaveRunning null `
 -Type null `
 -Id null `
 -IsEnabled null `
 -DelayInSeconds null `
 -ApplicationGroup null
```

- Convert the resource to JSON
```powershell
$ApplicationGroupStepsInner | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


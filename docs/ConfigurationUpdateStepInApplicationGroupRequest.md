# ConfigurationUpdateStepInApplicationGroupRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**RunOnce** | **Boolean** | Run the application only once | 
**LeaveRunning** | **Boolean** | Do not close the application | 
**Type** | **String** |  | 
**IsEnabled** | **Boolean** | Enable step | 
**DelayInSeconds** | **Int32** | Delay in seconds | 

## Examples

- Prepare the resource
```powershell
$ConfigurationUpdateStepInApplicationGroupRequest = Initialize-LEPSLoginEnterpriseConfigurationUpdateStepInApplicationGroupRequest  -RunOnce null `
 -LeaveRunning null `
 -Type null `
 -IsEnabled null `
 -DelayInSeconds null
```

- Convert the resource to JSON
```powershell
$ConfigurationUpdateStepInApplicationGroupRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


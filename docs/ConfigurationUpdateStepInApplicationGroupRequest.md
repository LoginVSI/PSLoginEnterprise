# ConfigurationUpdateStepInApplicationGroupRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | 
**IsEnabled** | **Boolean** | Enable step | 
**RunOnce** | **Boolean** | Run the application only once | 
**LeaveRunning** | **Boolean** | Do not close the application | 
**DelayInSeconds** | **Int32** | Delay in seconds | 

## Examples

- Prepare the resource
```powershell
$ConfigurationUpdateStepInApplicationGroupRequest = Initialize-LEPSLoginEnterpriseConfigurationUpdateStepInApplicationGroupRequest  -Type null `
 -IsEnabled null `
 -RunOnce null `
 -LeaveRunning null `
 -DelayInSeconds null
```

- Convert the resource to JSON
```powershell
$ConfigurationUpdateStepInApplicationGroupRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


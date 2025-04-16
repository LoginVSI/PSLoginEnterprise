# ConfigurationUpdateTestWorkloadStepRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | 
**RunOnce** | **Boolean** | Run the application only once | 
**LeaveRunning** | **Boolean** | Do not close the application | 
**IsEnabled** | **Boolean** | Enable step | 
**DelayInSeconds** | **Int32** | Delay in seconds | 

## Examples

- Prepare the resource
```powershell
$ConfigurationUpdateTestWorkloadStepRequest = Initialize-LELELEPSLoginEnterpriseConfigurationUpdateTestWorkloadStepRequest  -Type null `
 -RunOnce null `
 -LeaveRunning null `
 -IsEnabled null `
 -DelayInSeconds null
```

- Convert the resource to JSON
```powershell
$ConfigurationUpdateTestWorkloadStepRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


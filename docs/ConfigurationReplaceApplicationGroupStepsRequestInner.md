# ConfigurationReplaceApplicationGroupStepsRequestInner
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | 
**IsEnabled** | **Boolean** | Enable step | 
**ApplicationId** | **String** | Application id | 
**RunOnce** | **Boolean** | Run the application only once | 
**LeaveRunning** | **Boolean** | Do not close the application | 
**DelayInSeconds** | **Int32** | Delay in seconds | 
**ApplicationGroupId** | **String** | Application id | 

## Examples

- Prepare the resource
```powershell
$ConfigurationReplaceApplicationGroupStepsRequestInner = Initialize-LEPSLoginEnterpriseConfigurationReplaceApplicationGroupStepsRequestInner  -Type null `
 -IsEnabled null `
 -ApplicationId null `
 -RunOnce null `
 -LeaveRunning null `
 -DelayInSeconds null `
 -ApplicationGroupId null
```

- Convert the resource to JSON
```powershell
$ConfigurationReplaceApplicationGroupStepsRequestInner | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


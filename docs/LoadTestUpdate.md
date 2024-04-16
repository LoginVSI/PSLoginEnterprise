# LoadTestUpdate
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | 
**NumberOfSessions** | **Int32** | Number of sessions | 
**RampUpDurationInMinutes** | **Int32** | Ramp up duration in minutes | 
**TestDurationInMinutes** | **Int32** | Test duration in minutes | 
**EuxEnabled** | **Boolean** | Enable Eux Analysis | 
**Name** | **String** | Test name | 
**Description** | **String** | Test description | [optional] 
**EnvironmentUpdate** | [**EnvironmentUpdate**](EnvironmentUpdate.md) |  | [optional] 
**Steps** | [**ConfigurationReplaceApplicationGroupStepsRequestInner[]**](ConfigurationReplaceApplicationGroupStepsRequestInner.md) | Workload steps creation data | [optional] 

## Examples

- Prepare the resource
```powershell
$LoadTestUpdate = Initialize-LEPSLoginEnterpriseLoadTestUpdate  -Type null `
 -NumberOfSessions null `
 -RampUpDurationInMinutes null `
 -TestDurationInMinutes null `
 -EuxEnabled null `
 -Name null `
 -Description null `
 -EnvironmentUpdate null `
 -Steps null
```

- Convert the resource to JSON
```powershell
$LoadTestUpdate | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


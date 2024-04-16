# ContinuousTestUpdate
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | 
**ScheduleType** | [**ContinuousScheduleType**](ContinuousScheduleType.md) |  | 
**IntervalInMinutes** | **Int32** | Schedule interval in minutes | 
**NumberOfSessions** | **Int32** | Number of sessions | 
**EnableCustomScreenshots** | **Boolean** | Enable script screenshots | 
**RepeatCount** | **Int32** | Number of times the schedule is repeated | 
**IsRepeatEnabled** | **Boolean** | Enable schedule repeating | 
**IsEnabled** | **Boolean** | Enable schedule | 
**RestartOnComplete** | **Boolean** | Enable restarting on completion | 
**EuxEnabled** | **Boolean** | Enable Eux Analysis | 
**Name** | **String** | Test name | 
**Description** | **String** | Test description | [optional] 
**EnvironmentUpdate** | [**EnvironmentUpdate**](EnvironmentUpdate.md) |  | [optional] 
**Steps** | [**ConfigurationReplaceApplicationGroupStepsRequestInner[]**](ConfigurationReplaceApplicationGroupStepsRequestInner.md) | Workload steps creation data | [optional] 

## Examples

- Prepare the resource
```powershell
$ContinuousTestUpdate = Initialize-LEPSLoginEnterpriseContinuousTestUpdate  -Type null `
 -ScheduleType null `
 -IntervalInMinutes null `
 -NumberOfSessions null `
 -EnableCustomScreenshots null `
 -RepeatCount null `
 -IsRepeatEnabled null `
 -IsEnabled null `
 -RestartOnComplete null `
 -EuxEnabled null `
 -Name null `
 -Description null `
 -EnvironmentUpdate null `
 -Steps null
```

- Convert the resource to JSON
```powershell
$ContinuousTestUpdate | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


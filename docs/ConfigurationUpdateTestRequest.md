# ConfigurationUpdateTestRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | 
**IsEmailEnabled** | **Boolean** | Enable email notification | 
**EmailRecipient** | **String** | Notification email address | [optional] 
**IncludeSuccessfulApplications** | **Boolean** | Include successful applications in report | 
**Name** | **String** | Test name | 
**Description** | **String** | Test description | [optional] 
**EnvironmentUpdate** | [**EnvironmentUpdate**](EnvironmentUpdate.md) |  | [optional] 
**Steps** | [**ConfigurationReplaceApplicationGroupStepsRequestInner[]**](ConfigurationReplaceApplicationGroupStepsRequestInner.md) | Workload steps creation data | [optional] 
**NumberOfSessions** | **Int32** | Number of sessions | 
**RampUpDurationInMinutes** | **Int32** | Ramp up duration in minutes | 
**TestDurationInMinutes** | **Int32** | Test duration in minutes | 
**EuxEnabled** | **Boolean** | Enable Eux Analysis | 
**ScheduleType** | [**ContinuousScheduleType**](ContinuousScheduleType.md) |  | 
**IntervalInMinutes** | **Int32** | Schedule interval in minutes | 
**EnableCustomScreenshots** | **Boolean** | Enable script screenshots | 
**RepeatCount** | **Int32** | Number of times the schedule is repeated | 
**IsRepeatEnabled** | **Boolean** | Enable schedule repeating | 
**IsEnabled** | **Boolean** | Enable schedule | 
**RestartOnComplete** | **Boolean** | Enable restarting on completion | 

## Examples

- Prepare the resource
```powershell
$ConfigurationUpdateTestRequest = Initialize-LEPSLoginEnterpriseConfigurationUpdateTestRequest  -Type null `
 -IsEmailEnabled null `
 -EmailRecipient null `
 -IncludeSuccessfulApplications null `
 -Name null `
 -Description null `
 -EnvironmentUpdate null `
 -Steps null `
 -NumberOfSessions null `
 -RampUpDurationInMinutes null `
 -TestDurationInMinutes null `
 -EuxEnabled null `
 -ScheduleType null `
 -IntervalInMinutes null `
 -EnableCustomScreenshots null `
 -RepeatCount null `
 -IsRepeatEnabled null `
 -IsEnabled null `
 -RestartOnComplete null
```

- Convert the resource to JSON
```powershell
$ConfigurationUpdateTestRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


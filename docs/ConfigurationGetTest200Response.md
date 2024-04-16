# ConfigurationGetTest200Response
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | 
**IsEmailEnabled** | **Boolean** | Enable email notification | [optional] 
**EmailRecipient** | **String** | Notification email address | [optional] 
**IncludeSuccessfulApplications** | **Boolean** | Include successful applications in report | [optional] 
**State** | [**TestControlState**](TestControlState.md) |  | [optional] 
**Thresholds** | [**ConfigurationGetApplicationTestThresholds200ResponseInner[]**](ConfigurationGetApplicationTestThresholds200ResponseInner.md) | Application test thresholds | [optional] 
**Id** | **String** | Test id | [optional] 
**Name** | **String** | Test name | [optional] 
**Description** | **String** | Test description | [optional] 
**Created** | **System.DateTime** | Created date-time | [optional] 
**Environment** | [**Environment**](Environment.md) |  | [optional] 
**Workload** | [**Workload**](Workload.md) |  | [optional] 
**NumberOfSessions** | **Int32** | Number of sessions | [optional] 
**RampUpDurationInMinutes** | **Int32** | Ramp up duration in minutes | [optional] 
**TestDurationInMinutes** | **Int32** | Test duration in minutes | [optional] 
**RampDownDurationInMinutes** | **Int32** | Ramp down duration in minutes | [optional] 
**EuxEnabled** | **Boolean** | Enable Eux Analysis | [optional] 
**ScheduleType** | [**ContinuousScheduleType**](ContinuousScheduleType.md) |  | [optional] 
**ScheduleIntervalInMinutes** | **Int32** | Schedule interval in minutes | [optional] 
**EnableCustomScreenshots** | **Boolean** | Enable script screenshots | [optional] 
**RepeatCount** | **Int32** | Number of times the schedule is repeated | [optional] 
**IsRepeatEnabled** | **Boolean** | Enable schedule repeating | [optional] 
**IsEnabled** | **Boolean** | Enable schedule | [optional] 
**RestartOnComplete** | **Boolean** | Enable restarting on completion | [optional] 
**AlertConfigurations** | [**ConfigurationGetContinuousTestNotifications200ResponseInner[]**](ConfigurationGetContinuousTestNotifications200ResponseInner.md) | Alert configurations | [optional] 

## Examples

- Prepare the resource
```powershell
$ConfigurationGetTest200Response = Initialize-LEPSLoginEnterpriseConfigurationGetTest200Response  -Type null `
 -IsEmailEnabled null `
 -EmailRecipient null `
 -IncludeSuccessfulApplications null `
 -State null `
 -Thresholds null `
 -Id null `
 -Name null `
 -Description null `
 -Created null `
 -Environment null `
 -Workload null `
 -NumberOfSessions null `
 -RampUpDurationInMinutes null `
 -TestDurationInMinutes null `
 -RampDownDurationInMinutes null `
 -EuxEnabled null `
 -ScheduleType null `
 -ScheduleIntervalInMinutes null `
 -EnableCustomScreenshots null `
 -RepeatCount null `
 -IsRepeatEnabled null `
 -IsEnabled null `
 -RestartOnComplete null `
 -AlertConfigurations null
```

- Convert the resource to JSON
```powershell
$ConfigurationGetTest200Response | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


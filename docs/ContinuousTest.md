# ContinuousTest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | 
**ScheduleType** | [**ContinuousScheduleType**](ContinuousScheduleType.md) |  | [optional] 
**ScheduleIntervalInMinutes** | **Int32** | Schedule interval in minutes | [optional] 
**NumberOfSessions** | **Int32** | Number of sessions | [optional] 
**EnableCustomScreenshots** | **Boolean** | Enable script screenshots | [optional] 
**RepeatCount** | **Int32** | Number of times the schedule is repeated | [optional] 
**IsRepeatEnabled** | **Boolean** | Enable schedule repeating | [optional] 
**IsEnabled** | **Boolean** | Enable schedule | [optional] 
**RestartOnComplete** | **Boolean** | Enable restarting on completion | [optional] 
**EuxEnabled** | **Boolean** | Enable Eux Analysis | [optional] 
**AlertConfigurations** | [**ConfigurationGetContinuousTestNotifications200ResponseInner[]**](ConfigurationGetContinuousTestNotifications200ResponseInner.md) | Alert configurations | [optional] 
**Id** | **String** | Test id | [optional] 
**Name** | **String** | Test name | [optional] 
**Description** | **String** | Test description | [optional] 
**Created** | **System.DateTime** | Created date-time | [optional] 
**Environment** | [**Environment**](Environment.md) |  | [optional] 
**Workload** | [**Workload**](Workload.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ContinuousTest = Initialize-LEPSLoginEnterpriseContinuousTest  -Type null `
 -ScheduleType null `
 -ScheduleIntervalInMinutes null `
 -NumberOfSessions null `
 -EnableCustomScreenshots null `
 -RepeatCount null `
 -IsRepeatEnabled null `
 -IsEnabled null `
 -RestartOnComplete null `
 -EuxEnabled null `
 -AlertConfigurations null `
 -Id null `
 -Name null `
 -Description null `
 -Created null `
 -Environment null `
 -Workload null
```

- Convert the resource to JSON
```powershell
$ContinuousTest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


# ConfigurationGetTest200Response
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | 
**Id** | **String** | Test id | [optional] 
**EnvironmentKey** | **String** | Environment key | [optional] 
**Name** | **String** | Test name | [optional] 
**Description** | **String** | Test description | [optional] 
**Created** | **System.DateTime** | Created date-time | [optional] 
**ConnectionResources** | [**ConnectionResources**](ConnectionResources.md) |  | [optional] 
**Workload** | [**Workload**](Workload.md) |  | [optional] 
**LogonTimeTrackingProcess** | **String** | Specify the application to track user login time session and session initiation. The default value is explorer.exe (Windows shell). You can customize it to Citrix, VMWare, or another platform that you&#39;re using. Common values are wfshell.exe (Citrix), mware-view-usbd.exe (VMWare), or rdpshell.exe (Microsoft RDP). | [optional] 
**EngineStartTimeout** | **String** | Engine start timeout | [optional] 
**ApplicationDebugModeEnabled** | **Boolean** | Run application scripts in debug mode to capture the error line for scripts failures | [optional] 
**IsEmailEnabled** | **Boolean** | Enable email notification | [optional] 
**EmailRecipient** | **String** | Notification email address | [optional] 
**IncludeSuccessfulApplications** | **Boolean** | Include successful applications in report | [optional] 
**RestartOnComplete** | **Boolean** | Enable restarting on completion | [optional] 
**State** | [**TestControlState**](TestControlState.md) |  | [optional] 
**Thresholds** | [**ApplicationTestAllOfThresholds[]**](ApplicationTestAllOfThresholds.md) | Application test thresholds | [optional] 
**NumberOfSessions** | **Int32** | Number of sessions | [optional] 
**RampUpDurationInMinutes** | **Int32** | Ramp up duration in minutes | [optional] 
**TestDurationInMinutes** | **Int32** | Test duration in minutes | [optional] 
**RampDownDurationInMinutes** | **Int32** | Ramp down duration in minutes | [optional] 
**EuxEnabled** | **Boolean** | Enable Eux Analysis | [optional] 
**EuxWorkFolders** | [**EuxWorkFolders**](EuxWorkFolders.md) |  | [optional] 
**SessionMetricsEnabled** | **Boolean** | Enable Session Metrics Collection | [optional] 
**SessionMetricScheduleRate** | **Int32** | Session Metric Schedule Rate | [optional] 
**SessionMetricGroupKey** | **String** | Session metric group key | [optional] 
**ScheduleType** | [**ContinuousScheduleType**](ContinuousScheduleType.md) |  | [optional] 
**IntervalInMinutes** | **Int32** | Schedule interval in minutes | [optional] 
**EnableCustomScreenshots** | **Boolean** | Enable script screenshots | [optional] 
**RepeatCount** | **Int32** | Number of times the schedule is repeated | [optional] 
**IsRepeatEnabled** | **Boolean** | Enable schedule repeating | [optional] 
**IsEnabled** | **Boolean** | Enable schedule | [optional] 
**AlertConfigurations** | [**ContinuousTestAllOfAlertConfigurations[]**](ContinuousTestAllOfAlertConfigurations.md) | Alert configurations | [optional] 
**ActiveTimeSlots** | [**ActiveTimeSlots**](ActiveTimeSlots.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ConfigurationGetTest200Response = Initialize-LEPSLoginEnterpriseConfigurationGetTest200Response  -Type null `
 -Id null `
 -EnvironmentKey null `
 -Name null `
 -Description null `
 -Created null `
 -ConnectionResources null `
 -Workload null `
 -LogonTimeTrackingProcess null `
 -EngineStartTimeout null `
 -ApplicationDebugModeEnabled null `
 -IsEmailEnabled null `
 -EmailRecipient null `
 -IncludeSuccessfulApplications null `
 -RestartOnComplete null `
 -State null `
 -Thresholds null `
 -NumberOfSessions null `
 -RampUpDurationInMinutes null `
 -TestDurationInMinutes null `
 -RampDownDurationInMinutes null `
 -EuxEnabled null `
 -EuxWorkFolders null `
 -SessionMetricsEnabled null `
 -SessionMetricScheduleRate null `
 -SessionMetricGroupKey null `
 -ScheduleType null `
 -IntervalInMinutes null `
 -EnableCustomScreenshots null `
 -RepeatCount null `
 -IsRepeatEnabled null `
 -IsEnabled null `
 -AlertConfigurations null `
 -ActiveTimeSlots null
```

- Convert the resource to JSON
```powershell
$ConfigurationGetTest200Response | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


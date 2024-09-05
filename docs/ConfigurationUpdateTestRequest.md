# ConfigurationUpdateTestRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IsEmailEnabled** | **Boolean** | Enable email notification | 
**EmailRecipient** | **String** | Notification email address | [optional] 
**IncludeSuccessfulApplications** | **Boolean** | Include successful applications in report | 
**RestartOnComplete** | **Boolean** | Enable restarting on completion | 
**Type** | **String** |  | 
**Name** | **String** | Test name | 
**Description** | **String** | Test description | [optional] 
**ConnectionResourcesUpdate** | [**ConnectionResourcesUpdate**](ConnectionResourcesUpdate.md) |  | [optional] 
**EnvironmentKey** | **String** | Environment key | [optional] 
**Steps** | [**ConfigurationReplaceApplicationGroupStepsRequestInner[]**](ConfigurationReplaceApplicationGroupStepsRequestInner.md) | Workload steps creation data | [optional] 
**LogonTimeTrackingProcess** | **String** | Specify the application to track user login time session and session initiation. The default value is explorer.exe (Windows shell). You can customize it to Citrix, VMWare, or another platform that you&#39;re using. Common values are wfshell.exe (Citrix), mware-view-usbd.exe (VMWare), or rdpshell.exe (Microsoft RDP). | [optional] 
**EngineStartTimeout** | **String** | Engine start timeout | [optional] 
**ApplicationDebugModeEnabled** | **Boolean** | Run application scripts in debug mode to capture the error line for scripts failures | [optional] 
**NumberOfSessions** | **Int32** | Number of sessions | 
**RampUpDurationInMinutes** | **Int32** | Ramp up duration in minutes | 
**TestDurationInMinutes** | **Int32** | Test duration in minutes | 
**EuxEnabled** | **Boolean** | Enable Eux Analysis | 
**EuxWorkFolders** | [**EuxWorkFolders**](EuxWorkFolders.md) |  | [optional] 
**SessionMetricsEnabled** | **Boolean** | Enable Session Metrics Collection | 
**SessionMetricScheduleRate** | **Int32** | Session Metric Schedule Rate | [optional] 
**SessionMetricGroupKey** | **String** | Session metric group key | [optional] 
**ScheduleType** | [**ContinuousScheduleType**](ContinuousScheduleType.md) |  | 
**IntervalInMinutes** | **Int32** | Schedule interval in minutes | 
**EnableCustomScreenshots** | **Boolean** | Enable script screenshots | 
**RepeatCount** | **Int32** | Number of times the schedule is repeated | 
**IsRepeatEnabled** | **Boolean** | Enable schedule repeating | 
**IsEnabled** | **Boolean** | Enable schedule | 

## Examples

- Prepare the resource
```powershell
$ConfigurationUpdateTestRequest = Initialize-LEPSLoginEnterpriseConfigurationUpdateTestRequest  -IsEmailEnabled null `
 -EmailRecipient null `
 -IncludeSuccessfulApplications null `
 -RestartOnComplete null `
 -Type null `
 -Name null `
 -Description null `
 -ConnectionResourcesUpdate null `
 -EnvironmentKey null `
 -Steps null `
 -LogonTimeTrackingProcess null `
 -EngineStartTimeout null `
 -ApplicationDebugModeEnabled null `
 -NumberOfSessions null `
 -RampUpDurationInMinutes null `
 -TestDurationInMinutes null `
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
 -IsEnabled null
```

- Convert the resource to JSON
```powershell
$ConfigurationUpdateTestRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


# ContinuousTestUpdate
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | 
**Name** | **String** | Test name | 
**Description** | **String** | Test description | [optional] 
**ConnectionResourcesUpdate** | [**ConnectionResourcesUpdate**](ConnectionResourcesUpdate.md) |  | [optional] 
**EnvironmentKey** | **String** | Environment key | [optional] 
**Steps** | [**ConfigurationReplaceApplicationGroupStepsRequestInner[]**](ConfigurationReplaceApplicationGroupStepsRequestInner.md) | Workload steps creation data | [optional] 
**LogonTimeTrackingProcess** | **String** | Specify the application to track user login time session and session initiation. The default value is explorer.exe (Windows shell). You can customize it to Citrix, VMWare, or another platform that you&#39;re using. Common values are wfshell.exe (Citrix), mware-view-usbd.exe (VMWare), or rdpshell.exe (Microsoft RDP). | [optional] 
**EngineStartTimeout** | **String** | Engine start timeout | [optional] 
**ApplicationDebugModeEnabled** | **Boolean** | Run application scripts in debug mode to capture the error line for scripts failures | [optional] 
**ScheduleType** | [**ContinuousScheduleType**](ContinuousScheduleType.md) |  | 
**IntervalInMinutes** | **Int32** | Schedule interval in minutes | 
**NumberOfSessions** | **Int32** | Number of sessions | 
**EnableCustomScreenshots** | **Boolean** | Enable script screenshots | 
**RepeatCount** | **Int32** | Number of times the schedule is repeated | 
**IsRepeatEnabled** | **Boolean** | Enable schedule repeating | 
**IsEnabled** | **Boolean** | Enable schedule | 
**RestartOnComplete** | **Boolean** | Enable restarting on completion | 
**EuxEnabled** | **Boolean** | Enable Eux Analysis | 
**EuxWorkFolders** | [**EuxWorkFolders**](EuxWorkFolders.md) |  | [optional] 
**SessionMetricsEnabled** | **Boolean** | Enable Session Metrics Collection | 
**SessionMetricScheduleRate** | **Int32** | Session Metric Schedule Rate | [optional] 
**SessionMetricGroupKey** | **String** | Session metric group key | [optional] 

## Examples

- Prepare the resource
```powershell
$ContinuousTestUpdate = Initialize-LEPSLoginEnterpriseContinuousTestUpdate  -Type null `
 -Name null `
 -Description null `
 -ConnectionResourcesUpdate null `
 -EnvironmentKey null `
 -Steps null `
 -LogonTimeTrackingProcess null `
 -EngineStartTimeout null `
 -ApplicationDebugModeEnabled null `
 -ScheduleType null `
 -IntervalInMinutes null `
 -NumberOfSessions null `
 -EnableCustomScreenshots null `
 -RepeatCount null `
 -IsRepeatEnabled null `
 -IsEnabled null `
 -RestartOnComplete null `
 -EuxEnabled null `
 -EuxWorkFolders null `
 -SessionMetricsEnabled null `
 -SessionMetricScheduleRate null `
 -SessionMetricGroupKey null
```

- Convert the resource to JSON
```powershell
$ContinuousTestUpdate | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


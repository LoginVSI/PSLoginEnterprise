# LoadTestRunConfigurationSnapshot
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EnvironmentKey** | **String** | Environment key | [optional] 
**NumberOfSessions** | **Int32** | Number of sessions | [optional] 
**RampUpDurationInMinutes** | **Int32** | Ramp up duration in minutes | [optional] 
**RampDownDurationInMinutes** | **Int32** | Ramp down duration in minutes | [optional] 
**TestDurationInMinutes** | **Int32** | Test duration in minutes | [optional] 
**EuxEnabled** | **Boolean** | Enable Eux Analysis | [optional] 
**ApplicationDebugModeEnabled** | **Boolean** | Run application scripts in debug mode to capture the error line for scripts failures | [optional] 
**SessionMetricsEnabled** | **Boolean** | Enable Session Metrics Collection | [optional] 
**SessionMetricScheduleRate** | **Int32** | Session Metric Schedule Rate | [optional] 
**TestId** | **String** | Test configuration Id | [optional] 
**Name** | **String** | Test name | [optional] 
**Workload** | [**Workload**](Workload.md) |  | [optional] 
**Connector** | [**AppTestRunConfigurationSnapshotConnector**](AppTestRunConfigurationSnapshotConnector.md) |  | [optional] 
**LauncherGroups** | [**GroupConfigurationSnapshot[]**](GroupConfigurationSnapshot.md) | Launcher groups | [optional] 
**AccountGroups** | [**GroupConfigurationSnapshot[]**](GroupConfigurationSnapshot.md) | Account groups | [optional] 
**SessionMetricDefinition** | [**SessionMetricDefinitionSnapshot[]**](SessionMetricDefinitionSnapshot.md) | Session metric definition | [optional] 

## Examples

- Prepare the resource
```powershell
$LoadTestRunConfigurationSnapshot = Initialize-LEPSLoginEnterpriseLoadTestRunConfigurationSnapshot  -EnvironmentKey null `
 -NumberOfSessions null `
 -RampUpDurationInMinutes null `
 -RampDownDurationInMinutes null `
 -TestDurationInMinutes null `
 -EuxEnabled null `
 -ApplicationDebugModeEnabled null `
 -SessionMetricsEnabled null `
 -SessionMetricScheduleRate null `
 -TestId null `
 -Name null `
 -Workload null `
 -Connector null `
 -LauncherGroups null `
 -AccountGroups null `
 -SessionMetricDefinition null
```

- Convert the resource to JSON
```powershell
$LoadTestRunConfigurationSnapshot | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


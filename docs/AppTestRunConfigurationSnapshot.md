# AppTestRunConfigurationSnapshot
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**RestartOnComplete** | **Boolean** | Restart on complete | [optional] 
**IncludeSuccessfulApplications** | **Boolean** | Include successful applications in report | [optional] 
**IsEmailEnabled** | **Boolean** | Enable email notification | [optional] 
**EmailRecipient** | **String** | Notification email address | [optional] 
**Thresholds** | [**AppTestRunConfigurationSnapshotThresholdsInner[]**](AppTestRunConfigurationSnapshotThresholdsInner.md) | Application test thresholds | [optional] 
**TestId** | **String** | Test configuration Id | [optional] 
**Name** | **String** | Test name | [optional] 
**Workload** | [**WorkloadSnapshot**](WorkloadSnapshot.md) |  | [optional] 
**Connector** | [**AppTestRunConfigurationSnapshotConnector**](AppTestRunConfigurationSnapshotConnector.md) |  | [optional] 
**LauncherGroups** | [**GroupConfigurationSnapshot[]**](GroupConfigurationSnapshot.md) | Launcher groups | [optional] 
**AccountGroups** | [**GroupConfigurationSnapshot[]**](GroupConfigurationSnapshot.md) | Account groups | [optional] 
**SessionMetricDefinition** | [**SessionMetricDefinitionSnapshot[]**](SessionMetricDefinitionSnapshot.md) | Session metric definition | [optional] 

## Examples

- Prepare the resource
```powershell
$AppTestRunConfigurationSnapshot = Initialize-LEPSLoginEnterpriseAppTestRunConfigurationSnapshot  -RestartOnComplete null `
 -IncludeSuccessfulApplications null `
 -IsEmailEnabled null `
 -EmailRecipient null `
 -Thresholds null `
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
$AppTestRunConfigurationSnapshot | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


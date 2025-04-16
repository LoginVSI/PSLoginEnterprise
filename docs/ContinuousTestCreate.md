# ContinuousTestCreate
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | 
**Name** | **String** | Test name | 
**Description** | **String** | Test description | [optional] 
**Connector** | [**TestCreateConnector**](TestCreateConnector.md) |  | 
**AccountGroups** | **String[]** | Account group id | [optional] 
**LauncherGroups** | **String[]** | Launcher group ids | [optional] 
**EnvironmentKey** | **String** | Environment key | [optional] 
**ApplicationDebugModeEnabled** | **Boolean** | Run application scripts in debug mode to capture the error line for scripts failures | [optional] 
**Roles** | **String[]** | The IDs of the roles to which this test should be available. (User must be part of all the submitted roles) | [optional] 
**SessionMetricsEnabled** | **Boolean** | Enable Session Metrics Collection | [optional] 
**SessionMetricScheduleRate** | **Int32** | Session Metric Schedule Rate | [optional] 
**SessionMetricGroupKey** | **String** | Session metric group key | [optional] 

## Examples

- Prepare the resource
```powershell
$ContinuousTestCreate = Initialize-LEPSLoginEnterpriseContinuousTestCreate  -Type null `
 -Name null `
 -Description null `
 -Connector null `
 -AccountGroups null `
 -LauncherGroups null `
 -EnvironmentKey null `
 -ApplicationDebugModeEnabled null `
 -Roles null `
 -SessionMetricsEnabled null `
 -SessionMetricScheduleRate null `
 -SessionMetricGroupKey null
```

- Convert the resource to JSON
```powershell
$ContinuousTestCreate | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


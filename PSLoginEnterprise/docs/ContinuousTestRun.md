# ContinuousTestRun
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | 
**Id** | **String** | Test run id | [optional] 
**TestId** | **String** | Test id | [optional] 
**Created** | **System.DateTime** | Created date-time | [optional] 
**Started** | **System.DateTime** | Started date-time | [optional] 
**Finished** | **System.DateTime** | Finished date-time | [optional] 
**Counter** | **Int32** | Test run counter | [optional] 
**NumberOfEvents** | **Int32** | Number of events | [optional] 
**TestName** | **String** | Test name | [optional] 
**SessionMetricGroupKey** | **String** | Session metric group key | [optional] 
**EnvironmentKey** | **String** | Environment key | [optional] 
**ScheduleType** | [**ContinuousScheduleType**](ContinuousScheduleType.md) |  | [optional] 
**Description** | **String** | Description | [optional] 
**ConnectorId** | **String** | Connector id | [optional] 

## Examples

- Prepare the resource
```powershell
$ContinuousTestRun = Initialize-LEPSLoginEnterpriseContinuousTestRun  -Type null `
 -Id null `
 -TestId null `
 -Created null `
 -Started null `
 -Finished null `
 -Counter null `
 -NumberOfEvents null `
 -TestName null `
 -SessionMetricGroupKey null `
 -EnvironmentKey null `
 -ScheduleType null `
 -Description null `
 -ConnectorId null
```

- Convert the resource to JSON
```powershell
$ContinuousTestRun | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


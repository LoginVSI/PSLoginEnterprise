# LoadTestRun
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
**TestRunConfigurationSnapshot** | [**LoadTestRunConfigurationSnapshot**](LoadTestRunConfigurationSnapshot.md) |  | [optional] 
**State** | [**LoadTestState**](LoadTestState.md) |  | [optional] 
**Result** | [**LoadTestResult**](LoadTestResult.md) |  | [optional] 
**RampUpCompleted** | **System.DateTime** | Ramp-up completed date-time | [optional] 
**ActiveSessionCount** | **Int32** | Active session count | [optional] 
**StatisticsReady** | **Boolean** | Statistics are ready | [optional] 
**ProductVersion** | **String** | Product version | [optional] 
**LoginCounts** | [**SuccessCounts**](SuccessCounts.md) |  | [optional] 
**EngineCounts** | [**SuccessCounts**](SuccessCounts.md) |  | [optional] 
**AppExecutionCounts** | [**SuccessCounts**](SuccessCounts.md) |  | [optional] 
**EuxScore** | [**EuxScore**](EuxScore.md) |  | [optional] 
**VsiMax** | [**VsiMax**](VsiMax.md) |  | [optional] 
**Comment** | **String** | Comment | [optional] 

## Examples

- Prepare the resource
```powershell
$LoadTestRun = Initialize-LEPSLoginEnterpriseLoadTestRun  -Type null `
 -Id null `
 -TestId null `
 -Created null `
 -Started null `
 -Finished null `
 -Counter null `
 -TestRunConfigurationSnapshot null `
 -State null `
 -Result null `
 -RampUpCompleted null `
 -ActiveSessionCount null `
 -StatisticsReady null `
 -ProductVersion null `
 -LoginCounts null `
 -EngineCounts null `
 -AppExecutionCounts null `
 -EuxScore null `
 -VsiMax null `
 -Comment null
```

- Convert the resource to JSON
```powershell
$LoadTestRun | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


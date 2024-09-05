# DataGetTestRun200Response
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TestRunConfigurationSnapshot** | [**LoadTestRunConfigurationSnapshot**](LoadTestRunConfigurationSnapshot.md) |  | [optional] 
**State** | [**LoadTestState**](LoadTestState.md) |  | [optional] 
**Result** | [**LoadTestResult**](LoadTestResult.md) |  | [optional] 
**AppFailureResults** | [**SuccessCounts**](SuccessCounts.md) |  | [optional] 
**AppPerformanceResults** | [**SuccessCounts**](SuccessCounts.md) |  | [optional] 
**Properties** | [**Property[]**](Property.md) | Application test run properties | [optional] 
**Comment** | **String** | Comment | [optional] 
**Type** | **String** |  | 
**Id** | **String** | Test run id | [optional] 
**TestId** | **String** | Test id | [optional] 
**Created** | **System.DateTime** | Created date-time | [optional] 
**Started** | **System.DateTime** | Started date-time | [optional] 
**Finished** | **System.DateTime** | Finished date-time | [optional] 
**Counter** | **Int32** | Test run counter | [optional] 
**RampUpCompleted** | **System.DateTime** | Ramp-up completed date-time | [optional] 
**ActiveSessionCount** | **Int32** | Active session count | [optional] 
**StatisticsReady** | **Boolean** | Statistics are ready | [optional] 
**ProductVersion** | **String** | Product version | [optional] 
**LoginCounts** | [**SuccessCounts**](SuccessCounts.md) |  | [optional] 
**EngineCounts** | [**SuccessCounts**](SuccessCounts.md) |  | [optional] 
**AppExecutionCounts** | [**SuccessCounts**](SuccessCounts.md) |  | [optional] 
**EuxScore** | [**EuxScore**](EuxScore.md) |  | [optional] 
**VsiMax** | [**VsiMax**](VsiMax.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DataGetTestRun200Response = Initialize-LEPSLoginEnterpriseDataGetTestRun200Response  -TestRunConfigurationSnapshot null `
 -State null `
 -Result null `
 -AppFailureResults null `
 -AppPerformanceResults null `
 -Properties null `
 -Comment null `
 -Type null `
 -Id null `
 -TestId null `
 -Created null `
 -Started null `
 -Finished null `
 -Counter null `
 -RampUpCompleted null `
 -ActiveSessionCount null `
 -StatisticsReady null `
 -ProductVersion null `
 -LoginCounts null `
 -EngineCounts null `
 -AppExecutionCounts null `
 -EuxScore null `
 -VsiMax null
```

- Convert the resource to JSON
```powershell
$DataGetTestRun200Response | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


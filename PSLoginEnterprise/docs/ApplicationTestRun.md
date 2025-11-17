# ApplicationTestRun
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
**TestRunConfigurationSnapshot** | [**AppTestRunConfigurationSnapshot**](AppTestRunConfigurationSnapshot.md) |  | [optional] 
**State** | [**ApplicationTestState**](ApplicationTestState.md) |  | [optional] 
**Result** | [**ApplicationTestResult**](ApplicationTestResult.md) |  | [optional] 
**ProductVersion** | **String** | Product version | [optional] 
**AppFailureResults** | [**SuccessCounts**](SuccessCounts.md) |  | [optional] 
**AppPerformanceResults** | [**SuccessCounts**](SuccessCounts.md) |  | [optional] 
**Properties** | [**Property[]**](Property.md) | Application test run properties | [optional] 
**Comment** | **String** | Comment | [optional] 

## Examples

- Prepare the resource
```powershell
$ApplicationTestRun = Initialize-LEPSLoginEnterpriseApplicationTestRun  -Type null `
 -Id null `
 -TestId null `
 -Created null `
 -Started null `
 -Finished null `
 -Counter null `
 -NumberOfEvents null `
 -TestRunConfigurationSnapshot null `
 -State null `
 -Result null `
 -ProductVersion null `
 -AppFailureResults null `
 -AppPerformanceResults null `
 -Properties null `
 -Comment null
```

- Convert the resource to JSON
```powershell
$ApplicationTestRun | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


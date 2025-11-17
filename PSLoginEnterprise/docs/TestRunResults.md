# TestRunResults
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TestRunId** | **String** | ID of the test run | [optional] 
**TestName** | **String** | Name of the test | [optional] 
**Counter** | **Int32** | Counter | [optional] 
**IsBase** | **Boolean** | Indicates whether this is base | [optional] 
**State** | [**LoadTestState**](LoadTestState.md) |  | [optional] 
**TestResult** | [**LoadTestResult**](LoadTestResult.md) |  | [optional] 
**Results** | [**ResultsWrapper**](ResultsWrapper.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$TestRunResults = Initialize-LEPSLoginEnterpriseTestRunResults  -TestRunId null `
 -TestName null `
 -Counter null `
 -IsBase null `
 -State null `
 -TestResult null `
 -Results null
```

- Convert the resource to JSON
```powershell
$TestRunResults | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


# ApplicationTestData
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TestRunId** | **String** | Test run id | [optional] 
**TestName** | **String** | Test name | [optional] 
**IsBase** | **Boolean** | Is base | [optional] 
**Counter** | **Int32** | Counter | [optional] 
**State** | [**ApplicationTestState**](ApplicationTestState.md) |  | [optional] 
**TestResult** | [**ApplicationTestResult**](ApplicationTestResult.md) |  | [optional] 
**PlatformSummary** | [**PlatformSummary**](PlatformSummary.md) |  | [optional] 
**ApplicationSummaries** | [**ApplicationSummary[]**](ApplicationSummary.md) | Application summaries | [optional] 

## Examples

- Prepare the resource
```powershell
$ApplicationTestData = Initialize-LEPSLoginEnterpriseApplicationTestData  -TestRunId null `
 -TestName null `
 -IsBase null `
 -Counter null `
 -State null `
 -TestResult null `
 -PlatformSummary null `
 -ApplicationSummaries null
```

- Convert the resource to JSON
```powershell
$ApplicationTestData | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


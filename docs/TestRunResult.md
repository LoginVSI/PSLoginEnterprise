# TestRunResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TestRunId** | **String** | Test run id | [optional] 
**ChartMetricResults** | [**ChartMetricResult[]**](ChartMetricResult.md) | Metric results | [optional] 

## Examples

- Prepare the resource
```powershell
$TestRunResult = Initialize-LEPSLoginEnterpriseTestRunResult  -TestRunId null `
 -ChartMetricResults null
```

- Convert the resource to JSON
```powershell
$TestRunResult | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


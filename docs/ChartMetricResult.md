# ChartMetricResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**MetricId** | **String** | Metric id | [optional] 
**Value** | **Double** | Value | [optional] 

## Examples

- Prepare the resource
```powershell
$ChartMetricResult = Initialize-LEPSLoginEnterpriseChartMetricResult  -MetricId null `
 -Value null
```

- Convert the resource to JSON
```powershell
$ChartMetricResult | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


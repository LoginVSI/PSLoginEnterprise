# AppPerformanceResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AppResponseTime** | [**AppResponseTimeResults[]**](AppResponseTimeResults.md) | Application response time | [optional] 
**TotalAppPerformance** | [**MetricResult**](MetricResult.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AppPerformanceResult = Initialize-LEPSLoginEnterpriseAppPerformanceResult  -AppResponseTime null `
 -TotalAppPerformance null
```

- Convert the resource to JSON
```powershell
$AppPerformanceResult | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


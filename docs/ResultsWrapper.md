# ResultsWrapper
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**LoginTime** | [**MetricResult[]**](MetricResult.md) | Login time | [optional] 
**Performance** | [**PerformanceResults**](PerformanceResults.md) |  | [optional] 
**AppPerformanceResult** | [**AppPerformanceResult**](AppPerformanceResult.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ResultsWrapper = Initialize-LEPSLoginEnterpriseResultsWrapper  -LoginTime null `
 -Performance null `
 -AppPerformanceResult null
```

- Convert the resource to JSON
```powershell
$ResultsWrapper | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


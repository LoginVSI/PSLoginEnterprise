# ApplianceHealthMetricSeries
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**MetricId** | **String** | Unique identifier for the metric. | [optional] 
**DisplayName** | **String** | Human-readable name for the metric. | [optional] 
**Unit** | **String** | Unit of measurement for the metric value. | [optional] 
**DataPoints** | [**TimeSeriesPoint[]**](TimeSeriesPoint.md) | Time series data points | [optional] 

## Examples

- Prepare the resource
```powershell
$ApplianceHealthMetricSeries = Initialize-LEPSLoginEnterpriseApplianceHealthMetricSeries  -MetricId null `
 -DisplayName null `
 -Unit null `
 -DataPoints null
```

- Convert the resource to JSON
```powershell
$ApplianceHealthMetricSeries | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


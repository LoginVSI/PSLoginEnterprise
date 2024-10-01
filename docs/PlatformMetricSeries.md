# PlatformMetricSeries
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**MetricId** | **String** | Unique identifier for the metric. | [optional] 
**EnvironmentKey** | **String** | The unique identifier of the LoginEnterprise environment associated with the metric. | [optional] 
**DisplayName** | **String** | Human-readable name for the metric. | [optional] 
**Unit** | **String** | Unit of measurement for the metric value. | [optional] 
**Instance** | **String** | Specific instance or source from which the metric is collected. | [optional] 
**Group** | **String** | Group or category to which the metric belongs. | [optional] 
**ComponentType** | **String** | Type of component associated with the metric. | [optional] 
**CustomTags** | **System.Collections.Hashtable** | Additional custom tags associated with the metric. | [optional] 
**DataPoints** | [**TimeSeriesPoint[]**](TimeSeriesPoint.md) | Time series data points | [optional] 

## Examples

- Prepare the resource
```powershell
$PlatformMetricSeries = Initialize-LEPSLoginEnterprisePlatformMetricSeries  -MetricId null `
 -EnvironmentKey null `
 -DisplayName null `
 -Unit null `
 -Instance null `
 -Group null `
 -ComponentType null `
 -CustomTags null `
 -DataPoints null
```

- Convert the resource to JSON
```powershell
$PlatformMetricSeries | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


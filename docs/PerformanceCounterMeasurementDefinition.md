# PerformanceCounterMeasurementDefinition
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CounterCategory** | **String** | Counter category | [optional] 
**CounterName** | **String** | Counter name | [optional] 
**CounterInstance** | **String** | Counter instance | [optional] 
**MetricId** | **Int32** | Metric id | [optional] 
**Key** | **String** | Key | [optional] 
**DisplayName** | **String** | Display name | [optional] 
**Unit** | **String** | Unit | [optional] 

## Examples

- Prepare the resource
```powershell
$PerformanceCounterMeasurementDefinition = Initialize-LEPSLoginEnterprisePerformanceCounterMeasurementDefinition  -CounterCategory null `
 -CounterName null `
 -CounterInstance null `
 -MetricId null `
 -Key null `
 -DisplayName null `
 -Unit null
```

- Convert the resource to JSON
```powershell
$PerformanceCounterMeasurementDefinition | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


# PerformanceCounterMeasurementDefinitionCreate
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CounterCategory** | **String** | Counter category | [optional] 
**CounterName** | **String** | Counter name | [optional] 
**CounterInstance** | **String** | Counter instance | [optional] 
**DisplayName** | **String** | Display name | [optional] 
**Unit** | **String** | Unit | [optional] 

## Examples

- Prepare the resource
```powershell
$PerformanceCounterMeasurementDefinitionCreate = Initialize-LEPSLoginEnterprisePerformanceCounterMeasurementDefinitionCreate  -CounterCategory null `
 -CounterName null `
 -CounterInstance null `
 -DisplayName null `
 -Unit null
```

- Convert the resource to JSON
```powershell
$PerformanceCounterMeasurementDefinitionCreate | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


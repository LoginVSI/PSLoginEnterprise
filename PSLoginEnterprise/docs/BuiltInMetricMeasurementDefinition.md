# BuiltInMetricMeasurementDefinition
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**MetricId** | **Int32** | Metric id | [optional] 
**Key** | **String** | Key | [optional] 
**DisplayName** | **String** | Display name | [optional] 
**Unit** | **String** | Unit | [optional] 

## Examples

- Prepare the resource
```powershell
$BuiltInMetricMeasurementDefinition = Initialize-LEPSLoginEnterpriseBuiltInMetricMeasurementDefinition  -MetricId null `
 -Key null `
 -DisplayName null `
 -Unit null
```

- Convert the resource to JSON
```powershell
$BuiltInMetricMeasurementDefinition | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


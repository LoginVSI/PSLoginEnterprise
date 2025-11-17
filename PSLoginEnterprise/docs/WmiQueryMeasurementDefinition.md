# WmiQueryMeasurementDefinition
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**PropertyName** | **String** | Property name | [optional] 
**SummarizeOperation** | [**SummarizeOperation**](SummarizeOperation.md) |  | [optional] 
**MetricId** | **Int32** | Metric id | [optional] 
**Key** | **String** | Key | [optional] 
**DisplayName** | **String** | Display name | [optional] 
**Unit** | **String** | Unit | [optional] 

## Examples

- Prepare the resource
```powershell
$WmiQueryMeasurementDefinition = Initialize-LEPSLoginEnterpriseWmiQueryMeasurementDefinition  -PropertyName null `
 -SummarizeOperation null `
 -MetricId null `
 -Key null `
 -DisplayName null `
 -Unit null
```

- Convert the resource to JSON
```powershell
$WmiQueryMeasurementDefinition | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


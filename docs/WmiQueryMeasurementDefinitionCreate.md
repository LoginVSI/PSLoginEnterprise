# WmiQueryMeasurementDefinitionCreate
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**PropertyName** | **String** | Property name | [optional] 
**SummarizeOperation** | [**SummarizeOperation**](SummarizeOperation.md) |  | [optional] 
**DisplayName** | **String** | Display name | [optional] 
**Unit** | **String** | Unit | [optional] 

## Examples

- Prepare the resource
```powershell
$WmiQueryMeasurementDefinitionCreate = Initialize-LEPSLoginEnterpriseWmiQueryMeasurementDefinitionCreate  -PropertyName null `
 -SummarizeOperation null `
 -DisplayName null `
 -Unit null
```

- Convert the resource to JSON
```powershell
$WmiQueryMeasurementDefinitionCreate | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


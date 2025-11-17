# UserSessionMetricsAggregatedResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Timestamp** | **System.DateTime** | Time stamp | [optional] 
**MetricId** | **Int32** | Metric id | [optional] 
**Measurement** | **Double** | Measurement | [optional] 
**Count** | **Int32** | Count | [optional] 
**DisplayName** | **String** | Display name | [optional] 
**Unit** | **String** | Unit | [optional] 

## Examples

- Prepare the resource
```powershell
$UserSessionMetricsAggregatedResult = Initialize-LEPSLoginEnterpriseUserSessionMetricsAggregatedResult  -Timestamp null `
 -MetricId null `
 -Measurement null `
 -Count null `
 -DisplayName null `
 -Unit null
```

- Convert the resource to JSON
```powershell
$UserSessionMetricsAggregatedResult | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


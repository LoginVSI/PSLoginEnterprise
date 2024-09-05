# UserSessionMetricResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Timestamp** | **System.DateTime** | Timestamp | [optional] 
**TestRunId** | **String** | Test run id | [optional] 
**UserSessionKey** | **String** | User session key | [optional] 
**Measurement** | **Double** | Measurement | [optional] 
**DisplayName** | **String** | Display name | [optional] 
**Unit** | **String** | Unit | [optional] 
**Instance** | **String** | Name of field to identify intended instance from query result | [optional] 
**Tag** | **String** | Tag | [optional] 
**FieldName** | **String** | Selected field name from query | [optional] 

## Examples

- Prepare the resource
```powershell
$UserSessionMetricResult = Initialize-LEPSLoginEnterpriseUserSessionMetricResult  -Timestamp null `
 -TestRunId null `
 -UserSessionKey null `
 -Measurement null `
 -DisplayName null `
 -Unit null `
 -Instance null `
 -Tag null `
 -FieldName null
```

- Convert the resource to JSON
```powershell
$UserSessionMetricResult | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


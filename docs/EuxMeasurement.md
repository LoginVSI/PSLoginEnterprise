# EuxMeasurement
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Timestamp** | **System.DateTime** | Measurement timestamp | [optional] 
**Timer** | [**EuxTimer**](EuxTimer.md) |  | [optional] 
**Duration** | **Int32** | Duration | [optional] 

## Examples

- Prepare the resource
```powershell
$EuxMeasurement = Initialize-LEPSLoginEnterpriseEuxMeasurement  -Timestamp null `
 -Timer null `
 -Duration null
```

- Convert the resource to JSON
```powershell
$EuxMeasurement | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


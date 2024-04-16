# EuxResultsPerHour
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Timestamp** | **System.DateTime** | Calculation date-time | [optional] 
**Score** | **Double** | Eux score | [optional] 
**Count** | **Int32** | Count | [optional] 

## Examples

- Prepare the resource
```powershell
$EuxResultsPerHour = Initialize-LEPSLoginEnterpriseEuxResultsPerHour  -Timestamp null `
 -Score null `
 -Count null
```

- Convert the resource to JSON
```powershell
$EuxResultsPerHour | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


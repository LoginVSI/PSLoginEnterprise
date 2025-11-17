# EuxResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Timestamp** | **System.DateTime** | Calculation date-time | [optional] 
**Score** | **Double** | Eux score | [optional] 

## Examples

- Prepare the resource
```powershell
$EuxResult = Initialize-LEPSLoginEnterpriseEuxResult  -Timestamp null `
 -Score null
```

- Convert the resource to JSON
```powershell
$EuxResult | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


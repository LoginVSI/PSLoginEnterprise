# EuxTimerResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Timestamp** | **System.DateTime** | Eux calculation timestamp | [optional] 
**Score** | **Double** | Eux score | [optional] 
**EuxTimer** | [**EuxTimer**](EuxTimer.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$EuxTimerResult = Initialize-LEPSLoginEnterpriseEuxTimerResult  -Timestamp null `
 -Score null `
 -EuxTimer null
```

- Convert the resource to JSON
```powershell
$EuxTimerResult | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


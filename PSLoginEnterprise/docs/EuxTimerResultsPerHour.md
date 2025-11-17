# EuxTimerResultsPerHour
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Timestamp** | **System.DateTime** | Calculation date-time | [optional] 
**Score** | **Double** | Eux score | [optional] 
**Count** | **Int32** | Count | [optional] 
**EuxTimer** | [**EuxTimer**](EuxTimer.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$EuxTimerResultsPerHour = Initialize-LEPSLoginEnterpriseEuxTimerResultsPerHour  -Timestamp null `
 -Score null `
 -Count null `
 -EuxTimer null
```

- Convert the resource to JSON
```powershell
$EuxTimerResultsPerHour | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


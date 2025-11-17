# MetricResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ResultId** | **String** | ID of the result | [optional] 
**Value** | **Double** | Value of the result | [optional] 
**DifferenceFromBase** | **Int32** | Difference from base | [optional] 

## Examples

- Prepare the resource
```powershell
$MetricResult = Initialize-LEPSLoginEnterpriseMetricResult  -ResultId null `
 -Value null `
 -DifferenceFromBase null
```

- Convert the resource to JSON
```powershell
$MetricResult | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


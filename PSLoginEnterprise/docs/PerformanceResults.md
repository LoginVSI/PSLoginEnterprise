# PerformanceResults
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EuxState** | **String** | Eux state | [optional] 
**VsiMaxState** | **String** | VsiMax state | [optional] 
**Results** | [**MetricResult[]**](MetricResult.md) | Results | [optional] 

## Examples

- Prepare the resource
```powershell
$PerformanceResults = Initialize-LEPSLoginEnterprisePerformanceResults  -EuxState null `
 -VsiMaxState null `
 -Results null
```

- Convert the resource to JSON
```powershell
$PerformanceResults | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


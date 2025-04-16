# ApplicationTimerResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Timer** | **String** | Timer | [optional] 
**PerformanceResult** | [**PerformanceResult**](PerformanceResult.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ApplicationTimerResult = Initialize-LEPSLoginEnterpriseApplicationTimerResult  -Timer null `
 -PerformanceResult null
```

- Convert the resource to JSON
```powershell
$ApplicationTimerResult | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


# PerformanceResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Duration** | **Double** | Duration | [optional] 
**Threshold** | **Double** | Threshold | [optional] 
**DurationDifference** | **Int32** | Duration difference | [optional] 
**ThresholdDifference** | **Int32** | Threshold difference | [optional] 
**IsSuccessful** | **Boolean** | Is successful | [optional] 

## Examples

- Prepare the resource
```powershell
$PerformanceResult = Initialize-LEPSLoginEnterprisePerformanceResult  -Duration null `
 -Threshold null `
 -DurationDifference null `
 -ThresholdDifference null `
 -IsSuccessful null
```

- Convert the resource to JSON
```powershell
$PerformanceResult | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


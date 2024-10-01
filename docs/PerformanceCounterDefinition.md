# PerformanceCounterDefinition
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | 
**Key** | **String** | Key | [optional] 
**Name** | **String** | Name | [optional] 
**Description** | **String** | Description | [optional] 
**Tag** | **String** | Tag | [optional] 
**Measurement** | [**PerformanceCounterMeasurementDefinition**](PerformanceCounterMeasurementDefinition.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PerformanceCounterDefinition = Initialize-LEPSLoginEnterprisePerformanceCounterDefinition  -Type null `
 -Key null `
 -Name null `
 -Description null `
 -Tag null `
 -Measurement null
```

- Convert the resource to JSON
```powershell
$PerformanceCounterDefinition | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


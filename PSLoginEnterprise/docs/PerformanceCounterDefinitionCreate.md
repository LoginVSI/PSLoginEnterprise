# PerformanceCounterDefinitionCreate
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | 
**Name** | **String** | Name | [optional] 
**Description** | **String** | Description | [optional] 
**Tag** | **String** | Tag | [optional] 
**Measurement** | [**PerformanceCounterMeasurementDefinitionCreate**](PerformanceCounterMeasurementDefinitionCreate.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PerformanceCounterDefinitionCreate = Initialize-LEPSLoginEnterprisePerformanceCounterDefinitionCreate  -Type null `
 -Name null `
 -Description null `
 -Tag null `
 -Measurement null
```

- Convert the resource to JSON
```powershell
$PerformanceCounterDefinitionCreate | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


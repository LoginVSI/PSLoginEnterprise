# PerformanceCounterDefinitionCreate
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Measurement** | [**PerformanceCounterMeasurementDefinitionCreate**](PerformanceCounterMeasurementDefinitionCreate.md) |  | [optional] 
**Type** | **String** |  | 
**Name** | **String** | Name | [optional] 
**Description** | **String** | Description | [optional] 
**Tag** | **String** | Tag | [optional] 

## Examples

- Prepare the resource
```powershell
$PerformanceCounterDefinitionCreate = Initialize-LEPSLoginEnterprisePerformanceCounterDefinitionCreate  -Measurement null `
 -Type null `
 -Name null `
 -Description null `
 -Tag null
```

- Convert the resource to JSON
```powershell
$PerformanceCounterDefinitionCreate | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


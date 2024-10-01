# Environment
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | Environment Id | [optional] 
**Name** | **String** | Environment Name | [optional] 
**Description** | **String** | Description | [optional] 
**EnableEnvironmentDataCollection** | **Boolean** | Enable environment data collection | [optional] 
**EnableCostCalculation** | **Boolean** | Enable environment cost calculation | [optional] 
**EnvironmentCost** | [**EnvironmentCost**](EnvironmentCost.md) |  | [optional] 
**EnvironmentAttributes** | [**EnvironmentAttributes**](EnvironmentAttributes.md) |  | [optional] 
**Provider** | [**EnvironmentProvider**](EnvironmentProvider.md) |  | [optional] 
**Tests** | [**TestReference[]**](TestReference.md) | Tests associated to this environment | [optional] 

## Examples

- Prepare the resource
```powershell
$Environment = Initialize-LEPSLoginEnterpriseEnvironment  -Id null `
 -Name null `
 -Description null `
 -EnableEnvironmentDataCollection null `
 -EnableCostCalculation null `
 -EnvironmentCost null `
 -EnvironmentAttributes null `
 -Provider null `
 -Tests null
```

- Convert the resource to JSON
```powershell
$Environment | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


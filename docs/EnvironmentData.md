# EnvironmentData
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | Environment Name | [optional] 
**Description** | **String** | Description | [optional] 
**EnableEnvironmentDataCollection** | **Boolean** | Enable environment data collection | [optional] 
**EnableCostCalculation** | **Boolean** | Enable environment cost calculation | [optional] 
**EnvironmentCost** | [**EnvironmentCost**](EnvironmentCost.md) |  | [optional] 
**EnvironmentAttributes** | [**EnvironmentAttributes**](EnvironmentAttributes.md) |  | [optional] 
**ProviderId** | **String** | Provider Id | [optional] 

## Examples

- Prepare the resource
```powershell
$EnvironmentData = Initialize-LEPSLoginEnterpriseEnvironmentData  -Name null `
 -Description null `
 -EnableEnvironmentDataCollection null `
 -EnableCostCalculation null `
 -EnvironmentCost null `
 -EnvironmentAttributes null `
 -ProviderId null
```

- Convert the resource to JSON
```powershell
$EnvironmentData | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


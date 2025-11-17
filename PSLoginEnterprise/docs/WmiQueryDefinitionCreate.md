# WmiQueryDefinitionCreate
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | 
**Name** | **String** | Name | [optional] 
**Description** | **String** | Description | [optional] 
**Tag** | **String** | Tag | [optional] 
**WmiQuery** | **String** | Wmi Query | [optional] 
**Namespace** | **String** | Query namespace | [optional] 
**InstanceField** | **String** | Name of field to identify intended instance from query result | [optional] 
**Measurements** | [**WmiQueryMeasurementDefinitionCreate[]**](WmiQueryMeasurementDefinitionCreate.md) | Measurements | [optional] 

## Examples

- Prepare the resource
```powershell
$WmiQueryDefinitionCreate = Initialize-LEPSLoginEnterpriseWmiQueryDefinitionCreate  -Type null `
 -Name null `
 -Description null `
 -Tag null `
 -WmiQuery null `
 -Namespace null `
 -InstanceField null `
 -Measurements null
```

- Convert the resource to JSON
```powershell
$WmiQueryDefinitionCreate | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


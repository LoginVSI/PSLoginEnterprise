# WmiQueryDefinition
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**WmiQuery** | **String** | Wmi Query | [optional] 
**Namespace** | **String** | Query namespace | [optional] 
**InstanceField** | **String** | Name of field to identify intended instance from query result | [optional] 
**Measurements** | [**WmiQueryMeasurementDefinition[]**](WmiQueryMeasurementDefinition.md) | Measurements | [optional] 
**Type** | **String** |  | 
**Key** | **String** | Key | [optional] 
**Name** | **String** | Name | [optional] 
**Description** | **String** | Description | [optional] 
**Tag** | **String** | Tag | [optional] 

## Examples

- Prepare the resource
```powershell
$WmiQueryDefinition = Initialize-LEPSLoginEnterpriseWmiQueryDefinition  -WmiQuery null `
 -Namespace null `
 -InstanceField null `
 -Measurements null `
 -Type null `
 -Key null `
 -Name null `
 -Description null `
 -Tag null
```

- Convert the resource to JSON
```powershell
$WmiQueryDefinition | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


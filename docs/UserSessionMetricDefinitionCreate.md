# UserSessionMetricDefinitionCreate
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | 
**Name** | **String** | Name | [optional] 
**Description** | **String** | Description | [optional] 
**Tag** | **String** | Tag | [optional] 

## Examples

- Prepare the resource
```powershell
$UserSessionMetricDefinitionCreate = Initialize-LEPSLoginEnterpriseUserSessionMetricDefinitionCreate  -Type null `
 -Name null `
 -Description null `
 -Tag null
```

- Convert the resource to JSON
```powershell
$UserSessionMetricDefinitionCreate | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


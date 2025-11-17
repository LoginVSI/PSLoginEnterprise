# SessionMetricDefinitionGroupCreate
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | Session metric definition group name | [optional] 
**Description** | **String** | Session metric definition group description | [optional] 
**DefinitionKeys** | **String[]** | Session metric definition keys | [optional] 

## Examples

- Prepare the resource
```powershell
$SessionMetricDefinitionGroupCreate = Initialize-LEPSLoginEnterpriseSessionMetricDefinitionGroupCreate  -Name null `
 -Description null `
 -DefinitionKeys null
```

- Convert the resource to JSON
```powershell
$SessionMetricDefinitionGroupCreate | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


# SessionMetricDefinitionGroupUpdate
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | Session metric definition group name | [optional] 
**Description** | **String** | Session metric definition group description | [optional] 

## Examples

- Prepare the resource
```powershell
$SessionMetricDefinitionGroupUpdate = Initialize-LEPSLoginEnterpriseSessionMetricDefinitionGroupUpdate  -Name null `
 -Description null
```

- Convert the resource to JSON
```powershell
$SessionMetricDefinitionGroupUpdate | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


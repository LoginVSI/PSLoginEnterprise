# AccountGroupUpdate
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | 
**Name** | **String** | Account group name | [optional] 
**Description** | **String** | Account group description | [optional] 

## Examples

- Prepare the resource
```powershell
$AccountGroupUpdate = Initialize-LEPSLoginEnterpriseAccountGroupUpdate  -Type null `
 -Name null `
 -Description null
```

- Convert the resource to JSON
```powershell
$AccountGroupUpdate | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


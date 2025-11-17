# AccountGroupCreate
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | 
**Name** | **String** | Account group name | [optional] 
**Description** | **String** | Account group description | [optional] 

## Examples

- Prepare the resource
```powershell
$AccountGroupCreate = Initialize-LEPSLoginEnterpriseAccountGroupCreate  -Type null `
 -Name null `
 -Description null
```

- Convert the resource to JSON
```powershell
$AccountGroupCreate | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


# AccountField
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | Custom field name | [optional] 
**Value** | **String** | Custom field value | [optional] 

## Examples

- Prepare the resource
```powershell
$AccountField = Initialize-LEPSLoginEnterpriseAccountField  -Name null `
 -Value null
```

- Convert the resource to JSON
```powershell
$AccountField | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


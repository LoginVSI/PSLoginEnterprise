# Property
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**PropertyId** | **String** | Property id | [optional] 
**Value** | **String** | Property value | [optional] 

## Examples

- Prepare the resource
```powershell
$Property = Initialize-LEPSLoginEnterpriseProperty  -PropertyId null `
 -Value null
```

- Convert the resource to JSON
```powershell
$Property | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


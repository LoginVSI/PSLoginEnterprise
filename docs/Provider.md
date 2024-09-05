# Provider
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | 
**Id** | **String** | Provider Id | [optional] 
**Name** | **String** | Provider Name | [optional] 
**Description** | **String** | Provider Description | [optional] 
**Environments** | [**Environment[]**](Environment.md) | Environments associated to this provider | [optional] 

## Examples

- Prepare the resource
```powershell
$Provider = Initialize-LEPSLoginEnterpriseProvider  -Type null `
 -Id null `
 -Name null `
 -Description null `
 -Environments null
```

- Convert the resource to JSON
```powershell
$Provider | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


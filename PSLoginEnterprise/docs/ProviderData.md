# ProviderData
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | 
**Name** | **String** | Provider Name | [optional] 
**Description** | **String** | Provider Description | [optional] 

## Examples

- Prepare the resource
```powershell
$ProviderData = Initialize-LEPSLoginEnterpriseProviderData  -Type null `
 -Name null `
 -Description null
```

- Convert the resource to JSON
```powershell
$ProviderData | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


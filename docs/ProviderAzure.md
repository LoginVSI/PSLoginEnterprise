# ProviderAzure
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TenantId** | **String** | Tenant Id | [optional] 
**ApplicationId** | **String** | Application Id | [optional] 
**Type** | **String** |  | 
**Id** | **String** | Provider Id | [optional] 
**Name** | **String** | Provider Name | [optional] 
**Description** | **String** | Provider Description | [optional] 
**Environments** | [**Environment[]**](Environment.md) | Environments associated to this provider | [optional] 

## Examples

- Prepare the resource
```powershell
$ProviderAzure = Initialize-LEPSLoginEnterpriseProviderAzure  -TenantId null `
 -ApplicationId null `
 -Type null `
 -Id null `
 -Name null `
 -Description null `
 -Environments null
```

- Convert the resource to JSON
```powershell
$ProviderAzure | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


# DataTestProviderConnectionRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | 
**ProviderId** | **String** | Provider Id | [optional] 
**TenantId** | **String** | Tenant Id | [optional] 
**ApplicationId** | **String** | Application Id | [optional] 
**Secret** | **String** | Client Secret | [optional] 

## Examples

- Prepare the resource
```powershell
$DataTestProviderConnectionRequest = Initialize-LEPSLoginEnterpriseDataTestProviderConnectionRequest  -Type null `
 -ProviderId null `
 -TenantId null `
 -ApplicationId null `
 -Secret null
```

- Convert the resource to JSON
```powershell
$DataTestProviderConnectionRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


# DataTestProviderConnectionRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TenantId** | **String** | Tenant Id | [optional] 
**ApplicationId** | **String** | Application Id | [optional] 
**Secret** | **String** | Client Secret | [optional] 
**Type** | **String** |  | 
**ProviderId** | **String** | Provider Id | [optional] 

## Examples

- Prepare the resource
```powershell
$DataTestProviderConnectionRequest = Initialize-LEPSLoginEnterpriseDataTestProviderConnectionRequest  -TenantId null `
 -ApplicationId null `
 -Secret null `
 -Type null `
 -ProviderId null
```

- Convert the resource to JSON
```powershell
$DataTestProviderConnectionRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


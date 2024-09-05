# DataCreateProviderRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TenantId** | **String** | Tenant Id | [optional] 
**ApplicationId** | **String** | Application Id | [optional] 
**Secret** | **String** | Secret Code | [optional] 
**Type** | **String** |  | 
**Name** | **String** | Provider Name | [optional] 
**Description** | **String** | Provider Description | [optional] 

## Examples

- Prepare the resource
```powershell
$DataCreateProviderRequest = Initialize-LEPSLoginEnterpriseDataCreateProviderRequest  -TenantId null `
 -ApplicationId null `
 -Secret null `
 -Type null `
 -Name null `
 -Description null
```

- Convert the resource to JSON
```powershell
$DataCreateProviderRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


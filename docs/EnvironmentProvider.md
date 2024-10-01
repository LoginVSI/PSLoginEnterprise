# EnvironmentProvider
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | 
**Id** | **String** | Provider Id | [optional] 
**Name** | **String** | Provider Name | [optional] 
**Description** | **String** | Provider Description | [optional] 
**Environments** | [**Environment[]**](Environment.md) | Environments associated to this provider | [optional] 
**TenantId** | **String** | Tenant Id | [optional] 
**ApplicationId** | **String** | Application Id | [optional] 

## Examples

- Prepare the resource
```powershell
$EnvironmentProvider = Initialize-LEPSLoginEnterpriseEnvironmentProvider  -Type null `
 -Id null `
 -Name null `
 -Description null `
 -Environments null `
 -TenantId null `
 -ApplicationId null
```

- Convert the resource to JSON
```powershell
$EnvironmentProvider | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


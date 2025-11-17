# LdapGroupCreate
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DisplayName** | **String** | Display name | [optional] 
**GroupIdentity** | **String** | LdapGroup name or the distinguished name (DN) | [optional] 
**RoleIds** | **String[]** | Role id list | [optional] 

## Examples

- Prepare the resource
```powershell
$LdapGroupCreate = Initialize-LEPSLoginEnterpriseLdapGroupCreate  -DisplayName null `
 -GroupIdentity null `
 -RoleIds null
```

- Convert the resource to JSON
```powershell
$LdapGroupCreate | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


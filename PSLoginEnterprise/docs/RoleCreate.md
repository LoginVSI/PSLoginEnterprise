# RoleCreate
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | Name | [optional] 
**UserIds** | **String[]** | User id list | [optional] 
**LdapGroupIds** | **String[]** | Ldap group id list | [optional] 
**Permissions** | **String[]** | Permissions to assign to the role | [optional] 

## Examples

- Prepare the resource
```powershell
$RoleCreate = Initialize-LEPSLoginEnterpriseRoleCreate  -Name null `
 -UserIds null `
 -LdapGroupIds null `
 -Permissions null
```

- Convert the resource to JSON
```powershell
$RoleCreate | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


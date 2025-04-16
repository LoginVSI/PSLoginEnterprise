# Role
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | Id | [optional] 
**Name** | **String** | Name | [optional] 
**CreatedTime** | **System.DateTime** | Created time | [optional] 
**LastModifiedTime** | **System.DateTime** | Last modified time | [optional] 
**Users** | **System.Collections.Hashtable** | User list | [optional] 
**LdapGroups** | **System.Collections.Hashtable** | Ldap group list | [optional] 
**Permissions** | **String[]** | Permissions assigned to the role | [optional] 

## Examples

- Prepare the resource
```powershell
$Role = Initialize-LEPSLoginEnterpriseRole  -Id null `
 -Name null `
 -CreatedTime null `
 -LastModifiedTime null `
 -Users null `
 -LdapGroups null `
 -Permissions null
```

- Convert the resource to JSON
```powershell
$Role | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


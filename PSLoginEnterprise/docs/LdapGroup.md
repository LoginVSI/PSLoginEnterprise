# LdapGroup
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | Id | [optional] 
**DisplayName** | **String** | Display name | [optional] 
**GroupIdentity** | **String** | LdapGroup name or the distinguished name (DN) | [optional] 
**CreatedTime** | **System.DateTime** | Created time | [optional] 
**LastModifiedTime** | **System.DateTime** | Last modified time | [optional] 
**Roles** | **System.Collections.Hashtable** | Role list | [optional] 

## Examples

- Prepare the resource
```powershell
$LdapGroup = Initialize-LEPSLoginEnterpriseLdapGroup  -Id null `
 -DisplayName null `
 -GroupIdentity null `
 -CreatedTime null `
 -LastModifiedTime null `
 -Roles null
```

- Convert the resource to JSON
```powershell
$LdapGroup | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


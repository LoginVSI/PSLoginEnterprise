# LdapConfigModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarHost** | **String** | Gets or sets the LDAP server host. | [optional] 
**Port** | **Int32** | Gets or sets the LDAP server port. | [optional] 
**Secured** | **Boolean** | Gets or sets a value indicating whether the LDAP server connection is secured (SSL/TLS). | [optional] 
**IgnoreSslErrors** | **Boolean** | Gets or sets a value indicating whether SSL/TLS errors should be ignored when connecting to the LDAP server. | [optional] 
**Username** | **String** | Gets or sets the username for the LDAP server connection. | [optional] 
**Password** | **String** | Gets or sets the password for the LDAP server connection. | [optional] 
**Domain** | **String** | Gets or sets the domain for the LDAP server connection. | [optional] 
**ConnectionTimeout** | **Int32** | ConnectionTimeout value in milliseconds. | [optional] 

## Examples

- Prepare the resource
```powershell
$LdapConfigModel = Initialize-LEPSLoginEnterpriseLdapConfigModel  -VarHost null `
 -Port null `
 -Secured null `
 -IgnoreSslErrors null `
 -Username null `
 -Password null `
 -Domain null `
 -ConnectionTimeout null
```

- Convert the resource to JSON
```powershell
$LdapConfigModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


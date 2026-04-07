# LdapConfigModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarHost** | **String** |  | [optional] 
**Port** | **Int32** |  | [optional] 
**Secured** | **Boolean** |  | [optional] 
**IgnoreSslErrors** | **Boolean** |  | [optional] 
**Username** | **String** |  | [optional] 
**Password** | **String** |  | [optional] 
**SearchBase** | **String** |  | [optional] 
**ConnectionTimeout** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$LdapConfigModel = Initialize-LEPSLoginEnterpriseLdapConfigModel  -VarHost null `
 -Port null `
 -Secured null `
 -IgnoreSslErrors null `
 -Username null `
 -Password null `
 -SearchBase null `
 -ConnectionTimeout null
```

- Convert the resource to JSON
```powershell
$LdapConfigModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


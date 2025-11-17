# User
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | Id | [optional] 
**UserName** | **String** | User name | [optional] 
**LastLoginTime** | **System.DateTime** | Last login time | [optional] 
**UserType** | [**UserType**](UserType.md) |  | [optional] 
**CreatedTime** | **System.DateTime** | Create time | [optional] 
**LastModifiedTime** | **System.DateTime** | Last modified time | [optional] 
**Roles** | **System.Collections.Hashtable** | Role list | [optional] 

## Examples

- Prepare the resource
```powershell
$User = Initialize-LEPSLoginEnterpriseUser  -Id null `
 -UserName null `
 -LastLoginTime null `
 -UserType null `
 -CreatedTime null `
 -LastModifiedTime null `
 -Roles null
```

- Convert the resource to JSON
```powershell
$User | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


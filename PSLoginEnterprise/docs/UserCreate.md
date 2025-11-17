# UserCreate
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**UserName** | **String** | User name (this must be in upn format (user@domain)) | [optional] 
**UserType** | [**UserType**](UserType.md) |  | [optional] 
**RoleIds** | **String[]** | Role id list | [optional] 

## Examples

- Prepare the resource
```powershell
$UserCreate = Initialize-LEPSLoginEnterpriseUserCreate  -UserName null `
 -UserType null `
 -RoleIds null
```

- Convert the resource to JSON
```powershell
$UserCreate | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


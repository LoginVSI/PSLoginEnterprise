# AccountGroup
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | 
**GroupId** | **String** | Account group id | [optional] 
**Name** | **String** | Account group name | [optional] 
**MemberCount** | **Int32** | Account group member count | [optional] 
**Description** | **String** | Account group description | [optional] 
**Created** | **System.DateTime** | Created date-time | [optional] 
**LastModified** | **System.DateTime** | Last modified date-time | [optional] 
**Members** | [**Account[]**](Account.md) | Account group members | [optional] 

## Examples

- Prepare the resource
```powershell
$AccountGroup = Initialize-LEPSLoginEnterpriseAccountGroup  -Type null `
 -GroupId null `
 -Name null `
 -MemberCount null `
 -Description null `
 -Created null `
 -LastModified null `
 -Members null
```

- Convert the resource to JSON
```powershell
$AccountGroup | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


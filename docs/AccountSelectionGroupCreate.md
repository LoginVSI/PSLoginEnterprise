# AccountSelectionGroupCreate
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | 
**MemberIds** | **String[]** | Account group member ids | [optional] 
**Name** | **String** | Account group name | [optional] 
**Description** | **String** | Account group description | [optional] 

## Examples

- Prepare the resource
```powershell
$AccountSelectionGroupCreate = Initialize-LEPSLoginEnterpriseAccountSelectionGroupCreate  -Type null `
 -MemberIds null `
 -Name null `
 -Description null
```

- Convert the resource to JSON
```powershell
$AccountSelectionGroupCreate | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


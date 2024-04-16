# AppGroupReferenceCreate
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | 
**ApplicationGroupId** | **String** | Application id | 
**IsEnabled** | **Boolean** | Enable step | 

## Examples

- Prepare the resource
```powershell
$AppGroupReferenceCreate = Initialize-LEPSLoginEnterpriseAppGroupReferenceCreate  -Type null `
 -ApplicationGroupId null `
 -IsEnabled null
```

- Convert the resource to JSON
```powershell
$AppGroupReferenceCreate | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


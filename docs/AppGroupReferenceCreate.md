# AppGroupReferenceCreate
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ApplicationGroupId** | **String** | Application id | 
**Type** | **String** |  | 
**IsEnabled** | **Boolean** | Enable step | 

## Examples

- Prepare the resource
```powershell
$AppGroupReferenceCreate = Initialize-LEPSLoginEnterpriseAppGroupReferenceCreate  -ApplicationGroupId null `
 -Type null `
 -IsEnabled null
```

- Convert the resource to JSON
```powershell
$AppGroupReferenceCreate | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


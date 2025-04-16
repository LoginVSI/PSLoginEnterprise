# AppGroupSnapshot
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | 
**Name** | **String** | Application group name | [optional] 
**GroupSteps** | [**AppGroupSnapshotAllOfGroupSteps[]**](AppGroupSnapshotAllOfGroupSteps.md) | Group step | [optional] 

## Examples

- Prepare the resource
```powershell
$AppGroupSnapshot = Initialize-LEPSLoginEnterpriseAppGroupSnapshot  -Type null `
 -Name null `
 -GroupSteps null
```

- Convert the resource to JSON
```powershell
$AppGroupSnapshot | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


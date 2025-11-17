# ApplicationGroupAccessBulkUpdate
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ApplicationGroupIds** | **String[]** | Application group IDs to update | [optional] 
**RoleIds** | **String[]** | The IDs of the roles to which this application group should be available. | [optional] 

## Examples

- Prepare the resource
```powershell
$ApplicationGroupAccessBulkUpdate = Initialize-LEPSLoginEnterpriseApplicationGroupAccessBulkUpdate  -ApplicationGroupIds null `
 -RoleIds null
```

- Convert the resource to JSON
```powershell
$ApplicationGroupAccessBulkUpdate | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


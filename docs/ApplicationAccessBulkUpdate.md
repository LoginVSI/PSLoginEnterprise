# ApplicationAccessBulkUpdate
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ApplicationIds** | **String[]** | Application IDs to update | [optional] 
**RoleIds** | **String[]** | The IDs of the roles to which this application should be available. | [optional] 

## Examples

- Prepare the resource
```powershell
$ApplicationAccessBulkUpdate = Initialize-LEPSLoginEnterpriseApplicationAccessBulkUpdate  -ApplicationIds null `
 -RoleIds null
```

- Convert the resource to JSON
```powershell
$ApplicationAccessBulkUpdate | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


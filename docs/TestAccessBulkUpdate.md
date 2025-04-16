# TestAccessBulkUpdate
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TestIds** | **String[]** | Test IDs to update | [optional] 
**RoleIds** | **String[]** | The IDs of the roles to which this test should be available. | [optional] 

## Examples

- Prepare the resource
```powershell
$TestAccessBulkUpdate = Initialize-LEPSLoginEnterpriseTestAccessBulkUpdate  -TestIds null `
 -RoleIds null
```

- Convert the resource to JSON
```powershell
$TestAccessBulkUpdate | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


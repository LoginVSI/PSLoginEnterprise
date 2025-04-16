# TestRunAccessBulkUpdate
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TestRunIds** | **String[]** | ID of the test-runs to update | [optional] 
**RoleIds** | **String[]** | The IDs of the roles to which this test should be available. | [optional] 

## Examples

- Prepare the resource
```powershell
$TestRunAccessBulkUpdate = Initialize-LEPSLoginEnterpriseTestRunAccessBulkUpdate  -TestRunIds null `
 -RoleIds null
```

- Convert the resource to JSON
```powershell
$TestRunAccessBulkUpdate | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


# ContinuousTestBulkUpdateResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**FailedIds** | **String[]** | Identifiers of tests, that failed to update | [optional] 

## Examples

- Prepare the resource
```powershell
$ContinuousTestBulkUpdateResponse = Initialize-LEPSLoginEnterpriseContinuousTestBulkUpdateResponse  -FailedIds null
```

- Convert the resource to JSON
```powershell
$ContinuousTestBulkUpdateResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


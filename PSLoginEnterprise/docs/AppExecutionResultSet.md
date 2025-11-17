# AppExecutionResultSet
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Items** | [**AppExecution[]**](AppExecution.md) | Requested items | [optional] 
**TotalCount** | **Int32** | Total item count (if requested) | [optional] 
**Offset** | **Int32** | Offset requested | [optional] 

## Examples

- Prepare the resource
```powershell
$AppExecutionResultSet = Initialize-LEPSLoginEnterpriseAppExecutionResultSet  -Items null `
 -TotalCount null `
 -Offset null
```

- Convert the resource to JSON
```powershell
$AppExecutionResultSet | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


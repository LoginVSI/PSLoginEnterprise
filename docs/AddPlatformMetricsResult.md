# AddPlatformMetricsResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Status** | [**AddPlatformMetricsStatus**](AddPlatformMetricsStatus.md) |  | [optional] 
**SuccessfullyAddedCount** | **Int32** | The count of metrics that were successfully added. | [optional] 
**Errors** | [**System.Collections.Hashtable**](Array.md) | A list of errors that occurred during the add operation, grouped by metric | [optional] 

## Examples

- Prepare the resource
```powershell
$AddPlatformMetricsResult = Initialize-LEPSLoginEnterpriseAddPlatformMetricsResult  -Status null `
 -SuccessfullyAddedCount null `
 -Errors null
```

- Convert the resource to JSON
```powershell
$AddPlatformMetricsResult | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


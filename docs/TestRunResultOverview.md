# TestRunResultOverview
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Results** | [**TestRunResults[]**](TestRunResults.md) | Test run results | [optional] 

## Examples

- Prepare the resource
```powershell
$TestRunResultOverview = Initialize-LEPSLoginEnterpriseTestRunResultOverview  -Results null
```

- Convert the resource to JSON
```powershell
$TestRunResultOverview | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


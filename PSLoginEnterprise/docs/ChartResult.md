# ChartResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TestRunsInfo** | [**TestRunInfo[]**](TestRunInfo.md) | Test runs info | [optional] 
**TimeSlots** | [**TimeSlot[]**](TimeSlot.md) | Time slots | [optional] 

## Examples

- Prepare the resource
```powershell
$ChartResult = Initialize-LEPSLoginEnterpriseChartResult  -TestRunsInfo null `
 -TimeSlots null
```

- Convert the resource to JSON
```powershell
$ChartResult | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


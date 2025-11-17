# ApplicationChartResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ApplicationId** | **String** | Application id | [optional] 
**ApplicationName** | **String** | Application name | [optional] 
**TestRunsInfo** | [**TestRunInfo[]**](TestRunInfo.md) | Test runs info | [optional] 
**TimeSlots** | [**TimeSlot[]**](TimeSlot.md) | Time slots | [optional] 

## Examples

- Prepare the resource
```powershell
$ApplicationChartResult = Initialize-LEPSLoginEnterpriseApplicationChartResult  -ApplicationId null `
 -ApplicationName null `
 -TestRunsInfo null `
 -TimeSlots null
```

- Convert the resource to JSON
```powershell
$ApplicationChartResult | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


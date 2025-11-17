# TimeSlot
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**OffsetInMinutes** | **Int32** | Offset in minutes | [optional] 
**TestRunResults** | [**TestRunResult[]**](TestRunResult.md) | Test run results | [optional] 

## Examples

- Prepare the resource
```powershell
$TimeSlot = Initialize-LEPSLoginEnterpriseTimeSlot  -OffsetInMinutes null `
 -TestRunResults null
```

- Convert the resource to JSON
```powershell
$TimeSlot | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


# ThresholdNotificationUpdate
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | 
**ThresholdUpdate** | [**ThresholdUpdate**](ThresholdUpdate.md) |  | 
**TimesExceeded** | **Int32** | Number of times the event occurred | 
**PeriodDuration** | **Int32** | Time range for calculation | 
**IsEnabled** | **Boolean** | Enables notification | 

## Examples

- Prepare the resource
```powershell
$ThresholdNotificationUpdate = Initialize-LEPSLoginEnterpriseThresholdNotificationUpdate  -Type null `
 -ThresholdUpdate null `
 -TimesExceeded null `
 -PeriodDuration null `
 -IsEnabled null
```

- Convert the resource to JSON
```powershell
$ThresholdNotificationUpdate | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


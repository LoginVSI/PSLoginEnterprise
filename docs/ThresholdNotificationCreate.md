# ThresholdNotificationCreate
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | 
**Threshold** | [**AppThresholdCreate**](AppThresholdCreate.md) |  | 
**TimesExceeded** | **Int32** | Number of times the event occurred | 
**PeriodDuration** | **Int32** | Time range for calculation | 
**IsEnabled** | **Boolean** | Enables notification | 

## Examples

- Prepare the resource
```powershell
$ThresholdNotificationCreate = Initialize-LEPSLoginEnterpriseThresholdNotificationCreate  -Type null `
 -Threshold null `
 -TimesExceeded null `
 -PeriodDuration null `
 -IsEnabled null
```

- Convert the resource to JSON
```powershell
$ThresholdNotificationCreate | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


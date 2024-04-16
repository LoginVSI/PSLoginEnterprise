# ConfigurationUpdateContinuousTestNotificationRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | 
**TimesExceeded** | **Int32** | Number of times the event occurred | 
**PeriodDuration** | **Int32** | Time range for calculation | 
**IsEnabled** | **Boolean** | Enables notification | 
**ThresholdUpdate** | [**ThresholdUpdate**](ThresholdUpdate.md) |  | 

## Examples

- Prepare the resource
```powershell
$ConfigurationUpdateContinuousTestNotificationRequest = Initialize-LEPSLoginEnterpriseConfigurationUpdateContinuousTestNotificationRequest  -Type null `
 -TimesExceeded null `
 -PeriodDuration null `
 -IsEnabled null `
 -ThresholdUpdate null
```

- Convert the resource to JSON
```powershell
$ConfigurationUpdateContinuousTestNotificationRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


# ConfigurationGetContinuousTestNotifications200ResponseInner
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | 
**Threshold** | [**ThresholdNotificationThreshold**](ThresholdNotificationThreshold.md) |  | [optional] 
**Id** | **String** | Notification id | [optional] 
**TimesExceeded** | **Int32** | Number of times the event occurred | [optional] 
**PeriodDuration** | **Int32** | Time range for calculation | [optional] 
**CooldownDuration** | **Int32** | Time to pass between notification emails | [optional] 
**IsEnabled** | **Boolean** | Enables notification | [optional] 
**VarEvent** | [**NotificationEventType**](NotificationEventType.md) |  | [optional] 
**LastModified** | **System.DateTime** | Last modified date-time | [optional] 

## Examples

- Prepare the resource
```powershell
$ConfigurationGetContinuousTestNotifications200ResponseInner = Initialize-LEPSLoginEnterpriseConfigurationGetContinuousTestNotifications200ResponseInner  -Type null `
 -Threshold null `
 -Id null `
 -TimesExceeded null `
 -PeriodDuration null `
 -CooldownDuration null `
 -IsEnabled null `
 -VarEvent null `
 -LastModified null
```

- Convert the resource to JSON
```powershell
$ConfigurationGetContinuousTestNotifications200ResponseInner | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


# ContinuousTestAllOfAlertConfigurations
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | 
**Id** | **String** | Notification id | [optional] 
**TimesExceeded** | **Int32** | Number of times the event occurred | [optional] 
**PeriodDuration** | **Int32** | Time range for calculation | [optional] 
**CooldownDuration** | **Int32** | Time to pass between notification emails | [optional] 
**IsEnabled** | **Boolean** | Enables notification | [optional] 
**EmailRecipients** | **String** | Email recipients | [optional] 
**UseCustomMailRecipient** | **Boolean** | Use custom mail recipient | [optional] 
**Threshold** | [**ThresholdNotificationAllOfThreshold**](ThresholdNotificationAllOfThreshold.md) |  | [optional] 
**VarEvent** | [**NotificationEventType**](NotificationEventType.md) |  | [optional] 
**LastModified** | **System.DateTime** | Last modified date-time | [optional] 

## Examples

- Prepare the resource
```powershell
$ContinuousTestAllOfAlertConfigurations = Initialize-LEPSLoginEnterpriseContinuousTestAllOfAlertConfigurations  -Type null `
 -Id null `
 -TimesExceeded null `
 -PeriodDuration null `
 -CooldownDuration null `
 -IsEnabled null `
 -EmailRecipients null `
 -UseCustomMailRecipient null `
 -Threshold null `
 -VarEvent null `
 -LastModified null
```

- Convert the resource to JSON
```powershell
$ContinuousTestAllOfAlertConfigurations | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


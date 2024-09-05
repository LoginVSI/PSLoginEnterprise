# EventNotification
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarEvent** | [**NotificationEventType**](NotificationEventType.md) |  | [optional] 
**LastModified** | **System.DateTime** | Last modified date-time | [optional] 
**Type** | **String** |  | 
**Id** | **String** | Notification id | [optional] 
**TimesExceeded** | **Int32** | Number of times the event occurred | [optional] 
**PeriodDuration** | **Int32** | Time range for calculation | [optional] 
**CooldownDuration** | **Int32** | Time to pass between notification emails | [optional] 
**IsEnabled** | **Boolean** | Enables notification | [optional] 
**EmailRecipients** | **String** | Email recipients | [optional] 
**UseCustomMailRecipient** | **Boolean** | Use custom mail recipient | [optional] 

## Examples

- Prepare the resource
```powershell
$EventNotification = Initialize-LEPSLoginEnterpriseEventNotification  -VarEvent null `
 -LastModified null `
 -Type null `
 -Id null `
 -TimesExceeded null `
 -PeriodDuration null `
 -CooldownDuration null `
 -IsEnabled null `
 -EmailRecipients null `
 -UseCustomMailRecipient null
```

- Convert the resource to JSON
```powershell
$EventNotification | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


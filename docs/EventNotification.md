# EventNotification
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | 
**VarEvent** | [**NotificationEventType**](NotificationEventType.md) |  | [optional] 
**LastModified** | **System.DateTime** | Last modified date-time | [optional] 
**Id** | **String** | Notification id | [optional] 
**TimesExceeded** | **Int32** | Number of times the event occurred | [optional] 
**PeriodDuration** | **Int32** | Time range for calculation | [optional] 
**CooldownDuration** | **Int32** | Time to pass between notification emails | [optional] 
**IsEnabled** | **Boolean** | Enables notification | [optional] 

## Examples

- Prepare the resource
```powershell
$EventNotification = Initialize-LEPSLoginEnterpriseEventNotification  -Type null `
 -VarEvent null `
 -LastModified null `
 -Id null `
 -TimesExceeded null `
 -PeriodDuration null `
 -CooldownDuration null `
 -IsEnabled null
```

- Convert the resource to JSON
```powershell
$EventNotification | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


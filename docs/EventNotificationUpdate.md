# EventNotificationUpdate
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | 
**TimesExceeded** | **Int32** | Number of times the event occurred | 
**PeriodDuration** | **Int32** | Time range for calculation | 
**IsEnabled** | **Boolean** | Enables notification | 
**EmailRecipients** | **String** | Email recipients | [optional] 
**UseCustomMailRecipient** | **Boolean** | Use custom mail recipient | [optional] 

## Examples

- Prepare the resource
```powershell
$EventNotificationUpdate = Initialize-LEPSLoginEnterpriseEventNotificationUpdate  -Type null `
 -TimesExceeded null `
 -PeriodDuration null `
 -IsEnabled null `
 -EmailRecipients null `
 -UseCustomMailRecipient null
```

- Convert the resource to JSON
```powershell
$EventNotificationUpdate | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


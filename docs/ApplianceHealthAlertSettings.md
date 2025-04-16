# ApplianceHealthAlertSettings
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EmailNotificationEnabled** | **Boolean** | Gets or sets a value indicating whether email notifications are enabled. | [optional] 
**EmailRecipients** | **String** | Gets or sets the list of email recipients for the health alert notifications.  This should be a comma-separated list of email addresses.  /// | [optional] 
**EmailCooldownHours** | **Int32** | Gets or sets the cooldown period in hours between email notifications.  This determines how often emails are sent to the recipients when alerts are triggered. | [optional] 

## Examples

- Prepare the resource
```powershell
$ApplianceHealthAlertSettings = Initialize-LEPSLoginEnterpriseApplianceHealthAlertSettings  -EmailNotificationEnabled null `
 -EmailRecipients null `
 -EmailCooldownHours null
```

- Convert the resource to JSON
```powershell
$ApplianceHealthAlertSettings | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


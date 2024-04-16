# ReportNotification
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IsEnabled** | **Boolean** | Enable report notification | [optional] 
**Recipient** | **String** | Notification email address | [optional] 
**Created** | **System.DateTime** | Created date-time | [optional] 
**LastModified** | **System.DateTime** | Last modified date-time | [optional] 

## Examples

- Prepare the resource
```powershell
$ReportNotification = Initialize-LEPSLoginEnterpriseReportNotification  -IsEnabled null `
 -Recipient null `
 -Created null `
 -LastModified null
```

- Convert the resource to JSON
```powershell
$ReportNotification | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


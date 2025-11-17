# ReportConfigurationUpdate
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | Report configuration name | 
**Description** | **String** | Report configuration description | [optional] 
**IsEnabled** | **Boolean** | Enable report configuration | 
**Notification** | [**ReportNotification**](ReportNotification.md) |  | 

## Examples

- Prepare the resource
```powershell
$ReportConfigurationUpdate = Initialize-LEPSLoginEnterpriseReportConfigurationUpdate  -Name null `
 -Description null `
 -IsEnabled null `
 -Notification null
```

- Convert the resource to JSON
```powershell
$ReportConfigurationUpdate | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


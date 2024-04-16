# ReportConfigurationCreate
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Frequency** | [**Frequency**](Frequency.md) |  | 
**LatencyThreshold** | [**ThresholdUpdate**](ThresholdUpdate.md) |  | 
**LoginTimeThreshold** | [**ThresholdUpdate**](ThresholdUpdate.md) |  | 
**TimeZoneOffset** | **String** | Time zone offset | [optional] 
**Name** | **String** | Report configuration name | 
**Description** | **String** | Report configuration description | [optional] 
**IsEnabled** | **Boolean** | Enable report configuration | 
**Notification** | [**ReportNotification**](ReportNotification.md) |  | 

## Examples

- Prepare the resource
```powershell
$ReportConfigurationCreate = Initialize-LEPSLoginEnterpriseReportConfigurationCreate  -Frequency null `
 -LatencyThreshold null `
 -LoginTimeThreshold null `
 -TimeZoneOffset null `
 -Name null `
 -Description null `
 -IsEnabled null `
 -Notification null
```

- Convert the resource to JSON
```powershell
$ReportConfigurationCreate | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


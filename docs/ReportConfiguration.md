# ReportConfiguration
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | Report configuration id | [optional] 
**TestId** | **String** | Test id | [optional] 
**Name** | **String** | Report configuration name | [optional] 
**TestName** | **String** | Test name | [optional] 
**Description** | **String** | Report configuration description | [optional] 
**Frequency** | [**Frequency**](Frequency.md) |  | [optional] 
**IsEnabled** | **Boolean** | Enable report configuration | [optional] 
**Notification** | [**ReportNotification**](ReportNotification.md) |  | [optional] 
**Thresholds** | [**ApplicationTestAllOfThresholds[]**](ApplicationTestAllOfThresholds.md) | Report thresholds | [optional] 
**Created** | **System.DateTime** | Created date-time | [optional] 
**LastModified** | **System.DateTime** | Last modified date-time | [optional] 
**LastReportPeriodStart** | **System.DateTime** | Last report period start date-time | [optional] 
**TimeZoneOffset** | **String** | Time zone offset | [optional] 

## Examples

- Prepare the resource
```powershell
$ReportConfiguration = Initialize-LEPSLoginEnterpriseReportConfiguration  -Id null `
 -TestId null `
 -Name null `
 -TestName null `
 -Description null `
 -Frequency null `
 -IsEnabled null `
 -Notification null `
 -Thresholds null `
 -Created null `
 -LastModified null `
 -LastReportPeriodStart null `
 -TimeZoneOffset null
```

- Convert the resource to JSON
```powershell
$ReportConfiguration | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


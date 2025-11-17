# ReportRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ReportPeriodStart** | **System.DateTime** | Report period start date-time | 

## Examples

- Prepare the resource
```powershell
$ReportRequest = Initialize-LEPSLoginEnterpriseReportRequest  -ReportPeriodStart null
```

- Convert the resource to JSON
```powershell
$ReportRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


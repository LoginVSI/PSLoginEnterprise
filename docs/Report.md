# Report
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | 
**Id** | **String** | Report id | [optional] 
**TestId** | **String** | Test id | [optional] 
**OutputContentUri** | **String** | Output content uri | [optional] 
**State** | [**ReportState**](ReportState.md) |  | [optional] 
**Trigger** | [**Trigger**](Trigger.md) |  | [optional] 
**Created** | **System.DateTime** | Created date-time | [optional] 
**ReportPeriodStart** | **System.DateTime** | Report period start date-time | [optional] 
**ReportPeriodEnd** | **System.DateTime** | Report period end date-time | [optional] 

## Examples

- Prepare the resource
```powershell
$Report = Initialize-LEPSLoginEnterpriseReport  -Type null `
 -Id null `
 -TestId null `
 -OutputContentUri null `
 -State null `
 -Trigger null `
 -Created null `
 -ReportPeriodStart null `
 -ReportPeriodEnd null
```

- Convert the resource to JSON
```powershell
$Report | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


# ContinuousTestReport
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | 
**ConfigurationId** | **String** | Report configuration id | [optional] 
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
$ContinuousTestReport = Initialize-LEPSLoginEnterpriseContinuousTestReport  -Type null `
 -ConfigurationId null `
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
$ContinuousTestReport | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


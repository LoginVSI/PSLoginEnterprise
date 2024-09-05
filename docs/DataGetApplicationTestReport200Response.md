# DataGetApplicationTestReport200Response
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TestRunId** | **String** | Test run id | [optional] 
**Type** | **String** |  | 
**Id** | **String** | Report id | [optional] 
**TestId** | **String** | Test id | [optional] 
**OutputContentUri** | **String** | Output content uri | [optional] 
**State** | [**ReportState**](ReportState.md) |  | [optional] 
**Trigger** | [**Trigger**](Trigger.md) |  | [optional] 
**Created** | **System.DateTime** | Created date-time | [optional] 
**ReportPeriodStart** | **System.DateTime** | Report period start date-time | [optional] 
**ReportPeriodEnd** | **System.DateTime** | Report period end date-time | [optional] 
**ConfigurationId** | **String** | Report configuration id | [optional] 

## Examples

- Prepare the resource
```powershell
$DataGetApplicationTestReport200Response = Initialize-LEPSLoginEnterpriseDataGetApplicationTestReport200Response  -TestRunId null `
 -Type null `
 -Id null `
 -TestId null `
 -OutputContentUri null `
 -State null `
 -Trigger null `
 -Created null `
 -ReportPeriodStart null `
 -ReportPeriodEnd null `
 -ConfigurationId null
```

- Convert the resource to JSON
```powershell
$DataGetApplicationTestReport200Response | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


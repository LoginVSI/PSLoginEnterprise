# TestRunInfo
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TestRunId** | **String** | Test run id | [optional] 
**TestName** | **String** | Test name | [optional] 
**TestCounter** | **Int32** | Test counter | [optional] 
**RampUpCompletedMinute** | **Int32** | RampUp completed minute | [optional] 
**VsiMaxReachedAt** | **Int32** | Vsi max reached at | [optional] 
**ActualVsiMax** | **Int32** | Actual vsi max | [optional] 

## Examples

- Prepare the resource
```powershell
$TestRunInfo = Initialize-LEPSLoginEnterpriseTestRunInfo  -TestRunId null `
 -TestName null `
 -TestCounter null `
 -RampUpCompletedMinute null `
 -VsiMaxReachedAt null `
 -ActualVsiMax null
```

- Convert the resource to JSON
```powershell
$TestRunInfo | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


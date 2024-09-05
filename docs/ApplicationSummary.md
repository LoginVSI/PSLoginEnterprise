# ApplicationSummary
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ApplicationName** | **String** | Application name | [optional] 
**ResultStatus** | [**ApplicationResultStatus**](ApplicationResultStatus.md) |  | [optional] 
**AppExecutionSuccessful** | **Boolean** | Application execution successful | [optional] 
**PerformanceSuccessful** | **Boolean** | Performance successful | [optional] 
**TimerResults** | [**ApplicationTimerResult[]**](ApplicationTimerResult.md) | Application timer results | [optional] 
**Screenshots** | [**ApplicationScreenshot[]**](ApplicationScreenshot.md) | Screenshots | [optional] 

## Examples

- Prepare the resource
```powershell
$ApplicationSummary = Initialize-LEPSLoginEnterpriseApplicationSummary  -ApplicationName null `
 -ResultStatus null `
 -AppExecutionSuccessful null `
 -PerformanceSuccessful null `
 -TimerResults null `
 -Screenshots null
```

- Convert the resource to JSON
```powershell
$ApplicationSummary | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


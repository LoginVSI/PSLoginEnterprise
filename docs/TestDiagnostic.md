# TestDiagnostic
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TestId** | **String** | Test id | [optional] 
**TestName** | **String** | Test name | [optional] 
**ActiveSessionCount** | **Int32** | Amount of currently running sessions | [optional] 
**ActiveAccountCount** | **Int32** | Amount of currently used accounts | [optional] 
**ActiveLauncherCount** | **Int32** | Amount of currently used launchers | [optional] 
**LoginFailures** | [**SuccessRate**](SuccessRate.md) |  | [optional] 
**AppFailures** | [**SuccessRate**](SuccessRate.md) |  | [optional] 
**AppPerformance** | [**SuccessRate**](SuccessRate.md) |  | [optional] 
**Latency** | [**SuccessRate**](SuccessRate.md) |  | [optional] 
**LoginPerformance** | [**SuccessRate**](SuccessRate.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$TestDiagnostic = Initialize-LEPSLoginEnterpriseTestDiagnostic  -TestId null `
 -TestName null `
 -ActiveSessionCount null `
 -ActiveAccountCount null `
 -ActiveLauncherCount null `
 -LoginFailures null `
 -AppFailures null `
 -AppPerformance null `
 -Latency null `
 -LoginPerformance null
```

- Convert the resource to JSON
```powershell
$TestDiagnostic | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


# PlatformSummary
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**LoginSuccessful** | **Boolean** | Login successful | [optional] 
**LoginPerformance** | [**PerformanceResult**](PerformanceResult.md) |  | [optional] 
**LatencyPerformance** | [**PerformanceResult**](PerformanceResult.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PlatformSummary = Initialize-LEPSLoginEnterprisePlatformSummary  -LoginSuccessful null `
 -LoginPerformance null `
 -LatencyPerformance null
```

- Convert the resource to JSON
```powershell
$PlatformSummary | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


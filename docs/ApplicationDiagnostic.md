# ApplicationDiagnostic
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ApplicationId** | **String** | Application id | [optional] 
**ApplicationName** | **String** | Application name | [optional] 
**AboveThreshold** | **Int32** | Amount of measurements above threshold | [optional] 
**TotalMeasurements** | **Int32** | Amount of total measurements | [optional] 
**Percentage** | **Double** | Measurements above thresholds percentage | [optional] 

## Examples

- Prepare the resource
```powershell
$ApplicationDiagnostic = Initialize-LEPSLoginEnterpriseApplicationDiagnostic  -ApplicationId null `
 -ApplicationName null `
 -AboveThreshold null `
 -TotalMeasurements null `
 -Percentage null
```

- Convert the resource to JSON
```powershell
$ApplicationDiagnostic | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


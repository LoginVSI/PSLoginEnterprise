# Measurement
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**MeasurementId** | **String** | Measurement id | [optional] 
**AppExecutionId** | **String** | App execution id | [optional] 
**ApplicationId** | **String** | Application id | [optional] 
**LauncherName** | **String** | Launcher name | [optional] 
**AccountId** | **String** | Account id | [optional] 
**TestRunId** | **String** | Test run id | [optional] 
**UserSessionId** | **String** | User session id | [optional] 
**Duration** | **Double** | Duration | [optional] 
**Timestamp** | **System.DateTime** | Measurement time-stamp | [optional] 
**Properties** | [**Property[]**](Property.md) | Measurement properties | [optional] 

## Examples

- Prepare the resource
```powershell
$Measurement = Initialize-LEPSLoginEnterpriseMeasurement  -MeasurementId null `
 -AppExecutionId null `
 -ApplicationId null `
 -LauncherName null `
 -AccountId null `
 -TestRunId null `
 -UserSessionId null `
 -Duration null `
 -Timestamp null `
 -Properties null
```

- Convert the resource to JSON
```powershell
$Measurement | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


# EuxScriptExecution
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**UserSessionId** | **String** | User session ID | [optional] 
**StartTime** | **System.DateTime** | Script execution start date-time | [optional] 
**EndTime** | **System.DateTime** | Script execution end date-time | [optional] 
**Successful** | **Boolean** | Execution state | [optional] 
**EuxMeasurements** | [**EuxMeasurement[]**](EuxMeasurement.md) | Eux raw measurements | [optional] 
**Properties** | [**Property[]**](Property.md) | Eux script execution properties | [optional] 

## Examples

- Prepare the resource
```powershell
$EuxScriptExecution = Initialize-LEPSLoginEnterpriseEuxScriptExecution  -UserSessionId null `
 -StartTime null `
 -EndTime null `
 -Successful null `
 -EuxMeasurements null `
 -Properties null
```

- Convert the resource to JSON
```powershell
$EuxScriptExecution | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


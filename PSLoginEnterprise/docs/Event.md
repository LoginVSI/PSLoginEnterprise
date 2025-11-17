# ModelEvent
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | Event id | [optional] 
**EventType** | [**EventType**](EventType.md) |  | [optional] 
**Timestamp** | **System.DateTime** | Created date-time | [optional] 
**Title** | **String** | Event title | [optional] 
**TestId** | **String** | Test id | [optional] 
**TestRunId** | **String** | Test run id | [optional] 
**UserSessionId** | **String** | User session id | [optional] 
**ApplicationId** | **String** | Application id | [optional] 
**Properties** | [**Property[]**](Property.md) | Event properties | [optional] 

## Examples

- Prepare the resource
```powershell
$ModelEvent = Initialize-LEPSLoginEnterpriseModelEvent  -Id null `
 -EventType null `
 -Timestamp null `
 -Title null `
 -TestId null `
 -TestRunId null `
 -UserSessionId null `
 -ApplicationId null `
 -Properties null
```

- Convert the resource to JSON
```powershell
$ModelEvent | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


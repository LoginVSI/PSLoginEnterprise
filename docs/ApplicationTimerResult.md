# ApplicationTimerResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Timer** | **String** | Timer | [optional] 
**Duration** | **Double** | Duration | [optional] 
**Threshold** | **Double** | Threshold | [optional] 
**IsSuccessful** | **Boolean** | Is successful | [optional] 

## Examples

- Prepare the resource
```powershell
$ApplicationTimerResult = Initialize-LEPSLoginEnterpriseApplicationTimerResult  -Timer null `
 -Duration null `
 -Threshold null `
 -IsSuccessful null
```

- Convert the resource to JSON
```powershell
$ApplicationTimerResult | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


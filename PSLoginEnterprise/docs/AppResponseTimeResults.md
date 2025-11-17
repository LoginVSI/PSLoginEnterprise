# AppResponseTimeResults
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AppId** | **String** | Application ID | [optional] 
**AppName** | **String** | Name of the application | [optional] 
**Results** | [**MetricResult[]**](MetricResult.md) | Results | [optional] 

## Examples

- Prepare the resource
```powershell
$AppResponseTimeResults = Initialize-LEPSLoginEnterpriseAppResponseTimeResults  -AppId null `
 -AppName null `
 -Results null
```

- Convert the resource to JSON
```powershell
$AppResponseTimeResults | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


# TestReference
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TestId** | **String** | Test Id | [optional] 
**TestType** | [**TestType**](TestType.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$TestReference = Initialize-LEPSLoginEnterpriseTestReference  -TestId null `
 -TestType null
```

- Convert the resource to JSON
```powershell
$TestReference | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


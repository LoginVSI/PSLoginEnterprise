# TestProviderConnectionResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Success** | **Boolean** |  | [optional] 
**StatusMessage** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$TestProviderConnectionResult = Initialize-LEPSLoginEnterpriseTestProviderConnectionResult  -Success null `
 -StatusMessage null
```

- Convert the resource to JSON
```powershell
$TestProviderConnectionResult | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


# TestProviderConnectionData
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | 
**ProviderId** | **String** | Provider Id | [optional] 

## Examples

- Prepare the resource
```powershell
$TestProviderConnectionData = Initialize-LEPSLoginEnterpriseTestProviderConnectionData  -Type null `
 -ProviderId null
```

- Convert the resource to JSON
```powershell
$TestProviderConnectionData | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


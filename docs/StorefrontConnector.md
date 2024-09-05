# StorefrontConnector
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ServerUrl** | **String** | Server Url | 
**Resource** | **String** | Resource | 
**DisplayResolution** | [**Resolution**](Resolution.md) |  | [optional] 
**Type** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$StorefrontConnector = Initialize-LEPSLoginEnterpriseStorefrontConnector  -ServerUrl null `
 -Resource null `
 -DisplayResolution null `
 -Type null
```

- Convert the resource to JSON
```powershell
$StorefrontConnector | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


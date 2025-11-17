# StorefrontConnector
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | 
**ServerUrl** | **String** | Server Url | 
**Resource** | **String** | Resource | 
**DisplayResolution** | [**Resolution**](Resolution.md) |  | [optional] 
**SeamlessMode** | **Boolean** | Enable or disable Seamless mode for published applications | [optional] 

## Examples

- Prepare the resource
```powershell
$StorefrontConnector = Initialize-LEPSLoginEnterpriseStorefrontConnector  -Type null `
 -ServerUrl null `
 -Resource null `
 -DisplayResolution null `
 -SeamlessMode null
```

- Convert the resource to JSON
```powershell
$StorefrontConnector | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


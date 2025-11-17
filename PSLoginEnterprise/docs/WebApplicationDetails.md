# WebApplicationDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | 
**BrowserName** | [**BrowserName**](BrowserName.md) |  | [optional] 
**Url** | **String** | Start URL | [optional] 
**ProfileLocation** | **String** | Profile location | [optional] 

## Examples

- Prepare the resource
```powershell
$WebApplicationDetails = Initialize-LEPSLoginEnterpriseWebApplicationDetails  -Type null `
 -BrowserName null `
 -Url null `
 -ProfileLocation null
```

- Convert the resource to JSON
```powershell
$WebApplicationDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


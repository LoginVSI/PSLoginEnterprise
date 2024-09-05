# WebApplicationDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BrowserName** | [**BrowserName**](BrowserName.md) |  | [optional] 
**Url** | **String** | Start URL | [optional] 
**ProfileLocation** | **String** | Profile location | [optional] 
**Type** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$WebApplicationDetails = Initialize-LEPSLoginEnterpriseWebApplicationDetails  -BrowserName null `
 -Url null `
 -ProfileLocation null `
 -Type null
```

- Convert the resource to JSON
```powershell
$WebApplicationDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


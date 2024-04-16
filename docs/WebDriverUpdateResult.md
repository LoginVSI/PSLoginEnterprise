# WebDriverUpdateResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BrowserName** | [**BrowserName**](BrowserName.md) |  | [optional] 
**Version** | **String** | Version | [optional] 
**VarError** | **String** | Error Description | [optional] 
**IsSuccessful** | **Boolean** | IsSuccessful | [optional] 

## Examples

- Prepare the resource
```powershell
$WebDriverUpdateResult = Initialize-LEPSLoginEnterpriseWebDriverUpdateResult  -BrowserName null `
 -Version null `
 -VarError null `
 -IsSuccessful null
```

- Convert the resource to JSON
```powershell
$WebDriverUpdateResult | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


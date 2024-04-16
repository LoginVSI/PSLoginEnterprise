# ConfigurationParseApplicationDetails200Response
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | 
**BrowserName** | [**BrowserName**](BrowserName.md) |  | [optional] 
**Url** | **String** | Start URL | [optional] 
**CommandLine** | **String** | Command line arguments | [optional] 
**WorkingDirectory** | **String** | Working directory | [optional] 

## Examples

- Prepare the resource
```powershell
$ConfigurationParseApplicationDetails200Response = Initialize-LEPSLoginEnterpriseConfigurationParseApplicationDetails200Response  -Type null `
 -BrowserName null `
 -Url null `
 -CommandLine null `
 -WorkingDirectory null
```

- Convert the resource to JSON
```powershell
$ConfigurationParseApplicationDetails200Response | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


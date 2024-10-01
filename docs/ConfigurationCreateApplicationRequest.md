# ConfigurationCreateApplicationRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | 
**Name** | **String** | Application name | 
**Description** | **String** | Application description | [optional] 
**Username** | **String** | Application user name | [optional] 
**Password** | **String** | Application password | [optional] 
**TakeScreenshots** | **Boolean** | Enable/disable taking screenshots in case of application error | [optional] 
**ScriptContent** | **String** | Script content | [optional] 
**BrowserName** | [**BrowserName**](BrowserName.md) |  | 
**Url** | **String** | Start URL | [optional] 
**ProfileLocation** | **String** | Profile location | [optional] 
**CommandLine** | **String** | Command line arguments | 
**WorkingDirectory** | **String** | Working directory | [optional] 

## Examples

- Prepare the resource
```powershell
$ConfigurationCreateApplicationRequest = Initialize-LEPSLoginEnterpriseConfigurationCreateApplicationRequest  -Type null `
 -Name null `
 -Description null `
 -Username null `
 -Password null `
 -TakeScreenshots null `
 -ScriptContent null `
 -BrowserName null `
 -Url null `
 -ProfileLocation null `
 -CommandLine null `
 -WorkingDirectory null
```

- Convert the resource to JSON
```powershell
$ConfigurationCreateApplicationRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


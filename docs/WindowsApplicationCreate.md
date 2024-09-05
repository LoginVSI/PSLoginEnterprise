# WindowsApplicationCreate
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CommandLine** | **String** | Command line arguments | 
**WorkingDirectory** | **String** | Working directory | [optional] 
**Type** | **String** |  | 
**Name** | **String** | Application name | 
**Description** | **String** | Application description | [optional] 
**Username** | **String** | Application user name | [optional] 
**Password** | **String** | Application password | [optional] 
**TakeScreenshots** | **Boolean** | Enable/disable taking screenshots in case of application error | [optional] 
**ScriptContent** | **String** | Script content | [optional] 

## Examples

- Prepare the resource
```powershell
$WindowsApplicationCreate = Initialize-LEPSLoginEnterpriseWindowsApplicationCreate  -CommandLine null `
 -WorkingDirectory null `
 -Type null `
 -Name null `
 -Description null `
 -Username null `
 -Password null `
 -TakeScreenshots null `
 -ScriptContent null
```

- Convert the resource to JSON
```powershell
$WindowsApplicationCreate | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


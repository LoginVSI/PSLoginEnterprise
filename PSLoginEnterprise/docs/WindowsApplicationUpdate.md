# WindowsApplicationUpdate
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | 
**Name** | **String** | Application name | 
**Description** | **String** | Application description | [optional] 
**Username** | **String** | Application user name | [optional] 
**Password** | **String** | Application password | [optional] 
**MustUpdatePassword** | **Boolean** | True if password must be updated | [optional] 
**TakeScreenshots** | **Boolean** | Enable/disable taking screenshots in case of application error | [optional] 
**ScriptContent** | **String** | Script content | [optional] 
**CommandLine** | **String** | Command line arguments | 
**WorkingDirectory** | **String** | Working directory | [optional] 

## Examples

- Prepare the resource
```powershell
$WindowsApplicationUpdate = Initialize-LEPSLoginEnterpriseWindowsApplicationUpdate  -Type null `
 -Name null `
 -Description null `
 -Username null `
 -Password null `
 -MustUpdatePassword null `
 -TakeScreenshots null `
 -ScriptContent null `
 -CommandLine null `
 -WorkingDirectory null
```

- Convert the resource to JSON
```powershell
$WindowsApplicationUpdate | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


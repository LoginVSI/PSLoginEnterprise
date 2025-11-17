# AppInvocationAllOfApplication
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | 
**Id** | **String** | Application id | [optional] 
**Name** | **String** | Application name | [optional] 
**Description** | **String** | Application description | [optional] 
**Username** | **String** | Application user name | [optional] 
**Created** | **System.DateTime** | Created date-time | [optional] 
**LastModified** | **System.DateTime** | Last modified date-time | [optional] 
**Script** | **String** | Application script | [optional] 
**Timers** | **String[]** | Application timers | [optional] 
**TakeScreenshots** | **Boolean** | If set to true, it is allowed taking screenshots in case of application error | [optional] 
**HasPassword** | **Boolean** | Has password | [optional] 
**BrowserName** | [**BrowserName**](BrowserName.md) |  | [optional] 
**Url** | **String** | Start URL | [optional] 
**ProfileLocation** | **String** | Profile location | [optional] 
**CommandLine** | **String** | Command line arguments | [optional] 
**WorkingDirectory** | **String** | Working directory | [optional] 
**MainWindowTitle** | **String** | Main window title | [optional] 
**MainProcessName** | **String** | Main process name | [optional] 

## Examples

- Prepare the resource
```powershell
$AppInvocationAllOfApplication = Initialize-LEPSLoginEnterpriseAppInvocationAllOfApplication  -Type null `
 -Id null `
 -Name null `
 -Description null `
 -Username null `
 -Created null `
 -LastModified null `
 -Script null `
 -Timers null `
 -TakeScreenshots null `
 -HasPassword null `
 -BrowserName null `
 -Url null `
 -ProfileLocation null `
 -CommandLine null `
 -WorkingDirectory null `
 -MainWindowTitle null `
 -MainProcessName null
```

- Convert the resource to JSON
```powershell
$AppInvocationAllOfApplication | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


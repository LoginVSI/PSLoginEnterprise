# ConfigurationGetLauncherGroup200Response
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarFilter** | **String** | Filter condition (Wildcards available: &quot;&quot;?&quot;&quot; and &quot;&quot;*&quot;&quot;) | [optional] 
**Type** | **String** |  | 
**Id** | **String** | Launcher group id | [optional] 
**Name** | **String** | Launcher group name | [optional] 
**MemberCount** | **Int32** | Launcher group member count | [optional] 
**Description** | **String** | Launcher group description | [optional] 
**Members** | [**Launcher[]**](Launcher.md) | Launcher group members | [optional] 
**Created** | **System.DateTime** | Creation date-time | [optional] 
**LastModified** | **System.DateTime** | Last modified date-time | [optional] 

## Examples

- Prepare the resource
```powershell
$ConfigurationGetLauncherGroup200Response = Initialize-LEPSLoginEnterpriseConfigurationGetLauncherGroup200Response  -VarFilter null `
 -Type null `
 -Id null `
 -Name null `
 -MemberCount null `
 -Description null `
 -Members null `
 -Created null `
 -LastModified null
```

- Convert the resource to JSON
```powershell
$ConfigurationGetLauncherGroup200Response | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


# ConfigurationCreateLauncherGroupRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | 
**VarFilter** | **String** | Filter condition (Wildcards available: &quot;&quot;?&quot;&quot; and &quot;&quot;*&quot;&quot;) | 
**Name** | **String** | Launcher group name | 
**Description** | **String** | Launcher group description | [optional] 
**LauncherNames** | **String[]** | Launcher names | [optional] 

## Examples

- Prepare the resource
```powershell
$ConfigurationCreateLauncherGroupRequest = Initialize-LEPSLoginEnterpriseConfigurationCreateLauncherGroupRequest  -Type null `
 -VarFilter null `
 -Name null `
 -Description null `
 -LauncherNames null
```

- Convert the resource to JSON
```powershell
$ConfigurationCreateLauncherGroupRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


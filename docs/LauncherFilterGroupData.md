# LauncherFilterGroupData
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | 
**Name** | **String** | Launcher group name | 
**Description** | **String** | Launcher group description | [optional] 
**VarFilter** | **String** | Filter condition (Wildcards available: &quot;&quot;?&quot;&quot; and &quot;&quot;*&quot;&quot;) | 

## Examples

- Prepare the resource
```powershell
$LauncherFilterGroupData = Initialize-LEPSLoginEnterpriseLauncherFilterGroupData  -Type null `
 -Name null `
 -Description null `
 -VarFilter null
```

- Convert the resource to JSON
```powershell
$LauncherFilterGroupData | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


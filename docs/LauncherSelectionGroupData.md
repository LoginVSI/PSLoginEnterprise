# LauncherSelectionGroupData
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | 
**LauncherNames** | **String[]** | Launcher names | [optional] 
**Name** | **String** | Launcher group name | 
**Description** | **String** | Launcher group description | [optional] 

## Examples

- Prepare the resource
```powershell
$LauncherSelectionGroupData = Initialize-LEPSLoginEnterpriseLauncherSelectionGroupData  -Type null `
 -LauncherNames null `
 -Name null `
 -Description null
```

- Convert the resource to JSON
```powershell
$LauncherSelectionGroupData | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


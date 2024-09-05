# LauncherGroupData
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | 
**Name** | **String** | Launcher group name | 
**Description** | **String** | Launcher group description | [optional] 

## Examples

- Prepare the resource
```powershell
$LauncherGroupData = Initialize-LEPSLoginEnterpriseLauncherGroupData  -Type null `
 -Name null `
 -Description null
```

- Convert the resource to JSON
```powershell
$LauncherGroupData | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


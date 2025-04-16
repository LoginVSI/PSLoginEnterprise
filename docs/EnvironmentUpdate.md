# EnvironmentUpdate
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Connector** | [**EnvironmentUpdateConnector**](EnvironmentUpdateConnector.md) |  | [optional] 
**LauncherGroups** | **String[]** | Launcher groups ids | [optional] 
**AccountGroups** | **String[]** | Account groups ids | [optional] 

## Examples

- Prepare the resource
```powershell
$EnvironmentUpdate = Initialize-LELELEPSLoginEnterpriseEnvironmentUpdate  -Connector null `
 -LauncherGroups null `
 -AccountGroups null
```

- Convert the resource to JSON
```powershell
$EnvironmentUpdate | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


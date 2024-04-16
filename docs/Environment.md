# Environment
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Connector** | [**EnvironmentUpdateConnector**](EnvironmentUpdateConnector.md) |  | [optional] 
**LauncherGroups** | [**ConfigurationGetLauncherGroup200Response[]**](ConfigurationGetLauncherGroup200Response.md) | Launcher groups | [optional] 
**AccountGroups** | [**ConfigurationGetAccountGroup200Response[]**](ConfigurationGetAccountGroup200Response.md) | Account groups | [optional] 

## Examples

- Prepare the resource
```powershell
$Environment = Initialize-LEPSLoginEnterpriseEnvironment  -Connector null `
 -LauncherGroups null `
 -AccountGroups null
```

- Convert the resource to JSON
```powershell
$Environment | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


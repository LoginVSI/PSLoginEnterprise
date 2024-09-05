# ApplicationTestCreate
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | 
**Name** | **String** | Test name | 
**Description** | **String** | Test description | [optional] 
**Connector** | [**TestCreateConnector**](TestCreateConnector.md) |  | 
**AccountGroups** | **String[]** | Account group id | [optional] 
**LauncherGroups** | **String[]** | Launcher group ids | [optional] 
**EnvironmentKey** | **String** | Environment key | [optional] 
**ApplicationDebugModeEnabled** | **Boolean** | Run application scripts in debug mode to capture the error line for scripts failures | [optional] 

## Examples

- Prepare the resource
```powershell
$ApplicationTestCreate = Initialize-LEPSLoginEnterpriseApplicationTestCreate  -Type null `
 -Name null `
 -Description null `
 -Connector null `
 -AccountGroups null `
 -LauncherGroups null `
 -EnvironmentKey null `
 -ApplicationDebugModeEnabled null
```

- Convert the resource to JSON
```powershell
$ApplicationTestCreate | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


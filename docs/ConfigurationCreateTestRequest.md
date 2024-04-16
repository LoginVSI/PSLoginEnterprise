# ConfigurationCreateTestRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | 
**Name** | **String** | Test name | 
**Description** | **String** | Test description | [optional] 
**Connector** | [**ApplicationTestCreateConnector**](ApplicationTestCreateConnector.md) |  | 
**AccountGroups** | **String[]** | Account group id | [optional] 
**LauncherGroups** | **String[]** | Launcher group ids | [optional] 

## Examples

- Prepare the resource
```powershell
$ConfigurationCreateTestRequest = Initialize-LEPSLoginEnterpriseConfigurationCreateTestRequest  -Type null `
 -Name null `
 -Description null `
 -Connector null `
 -AccountGroups null `
 -LauncherGroups null
```

- Convert the resource to JSON
```powershell
$ConfigurationCreateTestRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


# GroupConfigurationSnapshot
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**GroupId** | **String** | Group Id | [optional] 
**Name** | **String** | Group name | [optional] 

## Examples

- Prepare the resource
```powershell
$GroupConfigurationSnapshot = Initialize-LEPSLoginEnterpriseGroupConfigurationSnapshot  -GroupId null `
 -Name null
```

- Convert the resource to JSON
```powershell
$GroupConfigurationSnapshot | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


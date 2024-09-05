# HorizonConnector
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ServerUrl** | **String** | Server Url | 
**Resource** | **String** | Resource | 
**CommandLine** | **String** | Connection command line | 
**Type** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$HorizonConnector = Initialize-LEPSLoginEnterpriseHorizonConnector  -ServerUrl null `
 -Resource null `
 -CommandLine null `
 -Type null
```

- Convert the resource to JSON
```powershell
$HorizonConnector | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


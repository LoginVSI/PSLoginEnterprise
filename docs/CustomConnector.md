# CustomConnector
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | 
**VarHost** | **String** | Host | 
**CommandLine** | **String** | Connection command line | 
**Resource** | **String** | Resource | [optional] 

## Examples

- Prepare the resource
```powershell
$CustomConnector = Initialize-LEPSLoginEnterpriseCustomConnector  -Type null `
 -VarHost null `
 -CommandLine null `
 -Resource null
```

- Convert the resource to JSON
```powershell
$CustomConnector | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


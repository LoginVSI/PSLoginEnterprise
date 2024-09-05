# CustomConnector
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarHost** | **String** | Host | 
**CommandLine** | **String** | Connection command line | 
**Resource** | **String** | Resource | [optional] 
**Type** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$CustomConnector = Initialize-LEPSLoginEnterpriseCustomConnector  -VarHost null `
 -CommandLine null `
 -Resource null `
 -Type null
```

- Convert the resource to JSON
```powershell
$CustomConnector | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


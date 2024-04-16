# VsiMax
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**MaxSessions** | **Int32** | Amount of sessions when VSImax was reached | [optional] 
**Version** | **String** | VSImax version | [optional] 
**State** | [**VsiMaxState**](VsiMaxState.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$VsiMax = Initialize-LEPSLoginEnterpriseVsiMax  -MaxSessions null `
 -Version null `
 -State null
```

- Convert the resource to JSON
```powershell
$VsiMax | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


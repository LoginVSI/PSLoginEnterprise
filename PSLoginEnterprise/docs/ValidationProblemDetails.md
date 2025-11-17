# ValidationProblemDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Errors** | [**System.Collections.Hashtable**](Array.md) |  | [optional] 
**Type** | **String** |  | [optional] 
**Title** | **String** |  | [optional] 
**Status** | **Int32** |  | [optional] 
**Detail** | **String** |  | [optional] 
**Instance** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ValidationProblemDetails = Initialize-LEPSLoginEnterpriseValidationProblemDetails  -Errors null `
 -Type null `
 -Title null `
 -Status null `
 -Detail null `
 -Instance null
```

- Convert the resource to JSON
```powershell
$ValidationProblemDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


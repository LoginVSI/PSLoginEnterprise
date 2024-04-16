# Resolution
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Width** | **Int32** | Width | [optional] 
**Height** | **Int32** | Height | [optional] 

## Examples

- Prepare the resource
```powershell
$Resolution = Initialize-LEPSLoginEnterpriseResolution  -Width null `
 -Height null
```

- Convert the resource to JSON
```powershell
$Resolution | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


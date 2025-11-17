# DelaySnapshot
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | 
**DelayInSeconds** | **Int32** | Delay in seconds | [optional] 

## Examples

- Prepare the resource
```powershell
$DelaySnapshot = Initialize-LEPSLoginEnterpriseDelaySnapshot  -Type null `
 -DelayInSeconds null
```

- Convert the resource to JSON
```powershell
$DelaySnapshot | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


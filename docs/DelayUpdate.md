# DelayUpdate
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | 
**IsEnabled** | **Boolean** | Enable step | 
**DelayInSeconds** | **Int32** | Delay in seconds | 

## Examples

- Prepare the resource
```powershell
$DelayUpdate = Initialize-LEPSLoginEnterpriseDelayUpdate  -Type null `
 -IsEnabled null `
 -DelayInSeconds null
```

- Convert the resource to JSON
```powershell
$DelayUpdate | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


# DelayUpdate
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DelayInSeconds** | **Int32** | Delay in seconds | 
**Type** | **String** |  | 
**IsEnabled** | **Boolean** | Enable step | 

## Examples

- Prepare the resource
```powershell
$DelayUpdate = Initialize-LEPSLoginEnterpriseDelayUpdate  -DelayInSeconds null `
 -Type null `
 -IsEnabled null
```

- Convert the resource to JSON
```powershell
$DelayUpdate | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


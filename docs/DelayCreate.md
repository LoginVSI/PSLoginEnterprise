# DelayCreate
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DelayInSeconds** | **Int32** | Delay in seconds | 
**Type** | **String** |  | 
**IsEnabled** | **Boolean** | Enable step | 

## Examples

- Prepare the resource
```powershell
$DelayCreate = Initialize-LEPSLoginEnterpriseDelayCreate  -DelayInSeconds null `
 -Type null `
 -IsEnabled null
```

- Convert the resource to JSON
```powershell
$DelayCreate | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


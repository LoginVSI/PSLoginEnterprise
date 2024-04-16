# DelayCreate
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | 
**DelayInSeconds** | **Int32** | Delay in seconds | 
**IsEnabled** | **Boolean** | Enable step | 

## Examples

- Prepare the resource
```powershell
$DelayCreate = Initialize-LEPSLoginEnterpriseDelayCreate  -Type null `
 -DelayInSeconds null `
 -IsEnabled null
```

- Convert the resource to JSON
```powershell
$DelayCreate | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


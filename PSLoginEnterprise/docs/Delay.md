# Delay
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | 
**Id** | **String** | Step id | [optional] 
**IsEnabled** | **Boolean** | Enable step | [optional] 
**DelayInSeconds** | **Int32** | Delay in seconds | [optional] 

## Examples

- Prepare the resource
```powershell
$Delay = Initialize-LEPSLoginEnterpriseDelay  -Type null `
 -Id null `
 -IsEnabled null `
 -DelayInSeconds null
```

- Convert the resource to JSON
```powershell
$Delay | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


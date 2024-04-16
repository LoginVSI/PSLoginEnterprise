# Delay
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | 
**DelayInSeconds** | **Int32** | Delay in seconds | [optional] 
**Id** | **String** | Step id | [optional] 
**IsEnabled** | **Boolean** | Enable step | [optional] 

## Examples

- Prepare the resource
```powershell
$Delay = Initialize-LEPSLoginEnterpriseDelay  -Type null `
 -DelayInSeconds null `
 -Id null `
 -IsEnabled null
```

- Convert the resource to JSON
```powershell
$Delay | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


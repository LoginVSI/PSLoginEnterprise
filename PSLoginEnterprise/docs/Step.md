# Step
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | 
**Id** | **String** | Step id | [optional] 
**IsEnabled** | **Boolean** | Enable step | [optional] 

## Examples

- Prepare the resource
```powershell
$Step = Initialize-LEPSLoginEnterpriseStep  -Type null `
 -Id null `
 -IsEnabled null
```

- Convert the resource to JSON
```powershell
$Step | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


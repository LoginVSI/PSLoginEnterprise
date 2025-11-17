# AppGroupReference
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | 
**Id** | **String** | Step id | [optional] 
**IsEnabled** | **Boolean** | Enable step | [optional] 
**ApplicationGroup** | [**ApplicationGroup**](ApplicationGroup.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AppGroupReference = Initialize-LEPSLoginEnterpriseAppGroupReference  -Type null `
 -Id null `
 -IsEnabled null `
 -ApplicationGroup null
```

- Convert the resource to JSON
```powershell
$AppGroupReference | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


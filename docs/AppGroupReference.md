# AppGroupReference
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ApplicationGroup** | [**ApplicationGroup**](ApplicationGroup.md) |  | [optional] 
**Type** | **String** |  | 
**Id** | **String** | Step id | [optional] 
**IsEnabled** | **Boolean** | Enable step | [optional] 

## Examples

- Prepare the resource
```powershell
$AppGroupReference = Initialize-LEPSLoginEnterpriseAppGroupReference  -ApplicationGroup null `
 -Type null `
 -Id null `
 -IsEnabled null
```

- Convert the resource to JSON
```powershell
$AppGroupReference | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


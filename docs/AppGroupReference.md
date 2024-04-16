# AppGroupReference
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | 
**ApplicationGroup** | [**ApplicationGroup**](ApplicationGroup.md) |  | [optional] 
**Id** | **String** | Step id | [optional] 
**IsEnabled** | **Boolean** | Enable step | [optional] 

## Examples

- Prepare the resource
```powershell
$AppGroupReference = Initialize-LEPSLoginEnterpriseAppGroupReference  -Type null `
 -ApplicationGroup null `
 -Id null `
 -IsEnabled null
```

- Convert the resource to JSON
```powershell
$AppGroupReference | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


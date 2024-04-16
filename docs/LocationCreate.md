# LocationCreate
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | Location name | 
**Latitude** | **Double** | Latitude | [optional] 
**Longitude** | **Double** | Longitude | [optional] 
**Description** | **String** | Description | [optional] 

## Examples

- Prepare the resource
```powershell
$LocationCreate = Initialize-LEPSLoginEnterpriseLocationCreate  -Name null `
 -Latitude null `
 -Longitude null `
 -Description null
```

- Convert the resource to JSON
```powershell
$LocationCreate | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


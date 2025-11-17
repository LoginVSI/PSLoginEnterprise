# LocationUpdate
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | Location name | [optional] 
**Latitude** | **Double** | Latitude | [optional] 
**Longitude** | **Double** | Longitude | [optional] 
**Description** | **String** | Description | [optional] 

## Examples

- Prepare the resource
```powershell
$LocationUpdate = Initialize-LEPSLoginEnterpriseLocationUpdate  -Name null `
 -Latitude null `
 -Longitude null `
 -Description null
```

- Convert the resource to JSON
```powershell
$LocationUpdate | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


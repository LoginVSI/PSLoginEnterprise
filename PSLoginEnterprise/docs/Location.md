# Location
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **Int32** | Location id | [optional] 
**Name** | **String** | Location name | [optional] 
**Latitude** | **Double** | Latitude | [optional] 
**Longitude** | **Double** | Longitude | [optional] 
**Description** | **String** | Description | [optional] 
**LauncherNames** | **String[]** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Location = Initialize-LEPSLoginEnterpriseLocation  -Id null `
 -Name null `
 -Latitude null `
 -Longitude null `
 -Description null `
 -LauncherNames null
```

- Convert the resource to JSON
```powershell
$Location | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


# WebDriverUpdateInfo
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AutoUpdateEnabled** | **Boolean** | Auto Update Enabled | [optional] 
**LastUpdateTime** | **System.DateTime** | Last Update Time | [optional] 
**UpdateState** | [**WebDriverUpdateState**](WebDriverUpdateState.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$WebDriverUpdateInfo = Initialize-LEPSLoginEnterpriseWebDriverUpdateInfo  -AutoUpdateEnabled null `
 -LastUpdateTime null `
 -UpdateState null
```

- Convert the resource to JSON
```powershell
$WebDriverUpdateInfo | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


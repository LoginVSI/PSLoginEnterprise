# ApplicationScreenshot
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Title** | **String** | Title | [optional] 
**Uri** | **String** | Uri | [optional] 
**Type** | [**ScreenshotType**](ScreenshotType.md) |  | [optional] 
**Description** | **String** | Description | [optional] 

## Examples

- Prepare the resource
```powershell
$ApplicationScreenshot = Initialize-LEPSLoginEnterpriseApplicationScreenshot  -Title null `
 -Uri null `
 -Type null `
 -Description null
```

- Convert the resource to JSON
```powershell
$ApplicationScreenshot | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


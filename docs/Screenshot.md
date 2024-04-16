# Screenshot
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | Screenshot id | [optional] 
**Created** | **System.DateTime** | Created date-time | [optional] 

## Examples

- Prepare the resource
```powershell
$Screenshot = Initialize-LEPSLoginEnterpriseScreenshot  -Id null `
 -Created null
```

- Convert the resource to JSON
```powershell
$Screenshot | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


# EuxWorkFolders
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EuxFolderPath** | **String** | Eux folder path | [optional] 
**AppDataFolderPath** | **String** | Application data folder path | [optional] 
**MyDocumentsFolderPath** | **String** | My documents folder path | [optional] 

## Examples

- Prepare the resource
```powershell
$EuxWorkFolders = Initialize-LEPSLoginEnterpriseEuxWorkFolders  -EuxFolderPath null `
 -AppDataFolderPath null `
 -MyDocumentsFolderPath null
```

- Convert the resource to JSON
```powershell
$EuxWorkFolders | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


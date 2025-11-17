# EuxSettings
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EnableEuxRawDataSave** | **Boolean** | Enable EUX raw data save | [optional] 

## Examples

- Prepare the resource
```powershell
$EuxSettings = Initialize-LEPSLoginEnterpriseEuxSettings  -EnableEuxRawDataSave null
```

- Convert the resource to JSON
```powershell
$EuxSettings | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


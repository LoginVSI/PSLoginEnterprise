# AppThresholdCreate
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ApplicationId** | **String** | Application id | 
**Timer** | **String** | Application timer | 
**IsEnabled** | **Boolean** | Enable threshold | 
**Value** | **Double** | Threshold value | 

## Examples

- Prepare the resource
```powershell
$AppThresholdCreate = Initialize-LEPSLoginEnterpriseAppThresholdCreate  -ApplicationId null `
 -Timer null `
 -IsEnabled null `
 -Value null
```

- Convert the resource to JSON
```powershell
$AppThresholdCreate | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


# ThresholdUpdate
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IsEnabled** | **Boolean** | Enable threshold | 
**Value** | **Double** | Threshold value | 

## Examples

- Prepare the resource
```powershell
$ThresholdUpdate = Initialize-LEPSLoginEnterpriseThresholdUpdate  -IsEnabled null `
 -Value null
```

- Convert the resource to JSON
```powershell
$ThresholdUpdate | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


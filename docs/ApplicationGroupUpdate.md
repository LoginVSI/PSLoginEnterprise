# ApplicationGroupUpdate
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | Application group name | [optional] 
**Description** | **String** | Application group description | [optional] 
**Steps** | [**ConfigurationReplaceApplicationGroupStepsRequestInner[]**](ConfigurationReplaceApplicationGroupStepsRequestInner.md) | Application group steps | [optional] 

## Examples

- Prepare the resource
```powershell
$ApplicationGroupUpdate = Initialize-LEPSLoginEnterpriseApplicationGroupUpdate  -Name null `
 -Description null `
 -Steps null
```

- Convert the resource to JSON
```powershell
$ApplicationGroupUpdate | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


# ApplicationGroupCreate
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | Application group name | [optional] 
**Description** | **String** | Application group description | [optional] 
**Steps** | [**ConfigurationReplaceApplicationGroupStepsRequestInner[]**](ConfigurationReplaceApplicationGroupStepsRequestInner.md) | Application group steps | [optional] 
**Roles** | **String[]** | The IDs of the roles to which this application group should be available. (User must be part of all the submitted roles) | [optional] 

## Examples

- Prepare the resource
```powershell
$ApplicationGroupCreate = Initialize-LEPSLoginEnterpriseApplicationGroupCreate  -Name null `
 -Description null `
 -Steps null `
 -Roles null
```

- Convert the resource to JSON
```powershell
$ApplicationGroupCreate | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


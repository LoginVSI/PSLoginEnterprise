# StepCreate
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | 
**IsEnabled** | **Boolean** | Enable step | 

## Examples

- Prepare the resource
```powershell
$StepCreate = Initialize-LEPSLoginEnterpriseStepCreate  -Type null `
 -IsEnabled null
```

- Convert the resource to JSON
```powershell
$StepCreate | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


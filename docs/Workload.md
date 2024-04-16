# Workload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Steps** | [**ApplicationGroupStepsInner[]**](ApplicationGroupStepsInner.md) | Workload step | [optional] 

## Examples

- Prepare the resource
```powershell
$Workload = Initialize-LEPSLoginEnterpriseWorkload  -Steps null
```

- Convert the resource to JSON
```powershell
$Workload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


# WorkloadSnapshot
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Steps** | [**AppGroupSnapshotAllOfGroupSteps[]**](AppGroupSnapshotAllOfGroupSteps.md) | Workload step snapshot | [optional] 

## Examples

- Prepare the resource
```powershell
$WorkloadSnapshot = Initialize-LEPSLoginEnterpriseWorkloadSnapshot  -Steps null
```

- Convert the resource to JSON
```powershell
$WorkloadSnapshot | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


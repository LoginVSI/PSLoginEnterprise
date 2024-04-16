# WindowsApplicationDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | 
**CommandLine** | **String** | Command line arguments | [optional] 
**WorkingDirectory** | **String** | Working directory | [optional] 

## Examples

- Prepare the resource
```powershell
$WindowsApplicationDetails = Initialize-LEPSLoginEnterpriseWindowsApplicationDetails  -Type null `
 -CommandLine null `
 -WorkingDirectory null
```

- Convert the resource to JSON
```powershell
$WindowsApplicationDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


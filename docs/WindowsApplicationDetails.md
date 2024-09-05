# WindowsApplicationDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CommandLine** | **String** | Command line arguments | [optional] 
**WorkingDirectory** | **String** | Working directory | [optional] 
**Type** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$WindowsApplicationDetails = Initialize-LEPSLoginEnterpriseWindowsApplicationDetails  -CommandLine null `
 -WorkingDirectory null `
 -Type null
```

- Convert the resource to JSON
```powershell
$WindowsApplicationDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


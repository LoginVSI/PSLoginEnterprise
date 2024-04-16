# AccountEnabledUpdate
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AccountIds** | **String[]** | Accounts to be enabled/disabled | [optional] 
**Enabled** | **Boolean** | New enabled/disabled status | [optional] 

## Examples

- Prepare the resource
```powershell
$AccountEnabledUpdate = Initialize-LEPSLoginEnterpriseAccountEnabledUpdate  -AccountIds null `
 -Enabled null
```

- Convert the resource to JSON
```powershell
$AccountEnabledUpdate | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


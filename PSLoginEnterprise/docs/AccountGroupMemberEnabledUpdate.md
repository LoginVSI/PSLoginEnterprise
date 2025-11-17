# AccountGroupMemberEnabledUpdate
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**GroupIds** | **String[]** | Groups to be enabled/disabled | [optional] 
**Enabled** | **Boolean** | New enabled/disabled status | [optional] 

## Examples

- Prepare the resource
```powershell
$AccountGroupMemberEnabledUpdate = Initialize-LEPSLoginEnterpriseAccountGroupMemberEnabledUpdate  -GroupIds null `
 -Enabled null
```

- Convert the resource to JSON
```powershell
$AccountGroupMemberEnabledUpdate | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


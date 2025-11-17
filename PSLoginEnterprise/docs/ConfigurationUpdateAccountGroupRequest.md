# ConfigurationUpdateAccountGroupRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | 
**Name** | **String** | Account group name | [optional] 
**Description** | **String** | Account group description | [optional] 
**VarFilter** | **String** | Filter condition (Wildcards available: &quot;&quot;?&quot;&quot; and &quot;&quot;*&quot;&quot;) | [optional] 
**MemberIds** | **String[]** | Account group member ids | [optional] 

## Examples

- Prepare the resource
```powershell
$ConfigurationUpdateAccountGroupRequest = Initialize-LEPSLoginEnterpriseConfigurationUpdateAccountGroupRequest  -Type null `
 -Name null `
 -Description null `
 -VarFilter null `
 -MemberIds null
```

- Convert the resource to JSON
```powershell
$ConfigurationUpdateAccountGroupRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


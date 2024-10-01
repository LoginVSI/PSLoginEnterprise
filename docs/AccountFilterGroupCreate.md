# AccountFilterGroupCreate
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | 
**Name** | **String** | Account group name | [optional] 
**Description** | **String** | Account group description | [optional] 
**VarFilter** | **String** | Filter condition (Wildcards available: &quot;&quot;?&quot;&quot; and &quot;&quot;*&quot;&quot;) | [optional] 

## Examples

- Prepare the resource
```powershell
$AccountFilterGroupCreate = Initialize-LEPSLoginEnterpriseAccountFilterGroupCreate  -Type null `
 -Name null `
 -Description null `
 -VarFilter null
```

- Convert the resource to JSON
```powershell
$AccountFilterGroupCreate | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


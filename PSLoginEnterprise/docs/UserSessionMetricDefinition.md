# UserSessionMetricDefinition
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | 
**Key** | **String** | Key | [optional] 
**Name** | **String** | Name | [optional] 
**Description** | **String** | Description | [optional] 
**Tag** | **String** | Tag | [optional] 

## Examples

- Prepare the resource
```powershell
$UserSessionMetricDefinition = Initialize-LEPSLoginEnterpriseUserSessionMetricDefinition  -Type null `
 -Key null `
 -Name null `
 -Description null `
 -Tag null
```

- Convert the resource to JSON
```powershell
$UserSessionMetricDefinition | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


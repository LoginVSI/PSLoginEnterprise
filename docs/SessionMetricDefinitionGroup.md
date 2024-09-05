# SessionMetricDefinitionGroup
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Key** | **String** | Session Metric Definition Group Key | [optional] 
**Name** | **String** | Session Metric Definition Name | [optional] 
**Description** | **String** | Session Metric Definition Description | [optional] 
**MemberCount** | **Int32** | Session Metric Definition Group Member Count | [optional] 
**Tests** | [**TestReference[]**](TestReference.md) | Tests linked to this Session Metric Definition Group | [optional] 

## Examples

- Prepare the resource
```powershell
$SessionMetricDefinitionGroup = Initialize-LEPSLoginEnterpriseSessionMetricDefinitionGroup  -Key null `
 -Name null `
 -Description null `
 -MemberCount null `
 -Tests null
```

- Convert the resource to JSON
```powershell
$SessionMetricDefinitionGroup | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


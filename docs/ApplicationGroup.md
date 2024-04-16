# ApplicationGroup
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | Application group Id | [optional] 
**Name** | **String** | Application group name | [optional] 
**Description** | **String** | Application group description | [optional] 
**MemberCount** | **Int32** | Application group member count | [optional] 
**Steps** | [**ApplicationGroupStepsInner[]**](ApplicationGroupStepsInner.md) | Application group steps | [optional] 

## Examples

- Prepare the resource
```powershell
$ApplicationGroup = Initialize-LEPSLoginEnterpriseApplicationGroup  -Id null `
 -Name null `
 -Description null `
 -MemberCount null `
 -Steps null
```

- Convert the resource to JSON
```powershell
$ApplicationGroup | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


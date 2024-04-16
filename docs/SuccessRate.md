# SuccessRate
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Failed** | **Int32** | Amount of failed results | [optional] 
**Total** | **Int32** | Amount of total results | [optional] 
**Percentage** | **Double** | Failed results percentage | [optional] 

## Examples

- Prepare the resource
```powershell
$SuccessRate = Initialize-LEPSLoginEnterpriseSuccessRate  -Failed null `
 -Total null `
 -Percentage null
```

- Convert the resource to JSON
```powershell
$SuccessRate | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


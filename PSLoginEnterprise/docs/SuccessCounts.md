# SuccessCounts
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SuccessCount** | **Int32** | Success count | [optional] 
**TotalCount** | **Int32** | Total count | [optional] 

## Examples

- Prepare the resource
```powershell
$SuccessCounts = Initialize-LEPSLoginEnterpriseSuccessCounts  -SuccessCount null `
 -TotalCount null
```

- Convert the resource to JSON
```powershell
$SuccessCounts | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


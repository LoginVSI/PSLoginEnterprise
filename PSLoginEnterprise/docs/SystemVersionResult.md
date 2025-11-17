# SystemVersionResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CurrentVersion** | **String** | Current Version | [optional] 
**LatestVersion** | **String** | Latest Version | [optional] 

## Examples

- Prepare the resource
```powershell
$SystemVersionResult = Initialize-LEPSLoginEnterpriseSystemVersionResult  -CurrentVersion null `
 -LatestVersion null
```

- Convert the resource to JSON
```powershell
$SystemVersionResult | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


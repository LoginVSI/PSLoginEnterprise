# UpdateFromProviderResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Successful** | **Boolean** | True when successfully updated environment data from provider | [optional] 
**WarningMessage** | **String** | Warning message - null when operation was successful | [optional] 

## Examples

- Prepare the resource
```powershell
$UpdateFromProviderResult = Initialize-LEPSLoginEnterpriseUpdateFromProviderResult  -Successful null `
 -WarningMessage null
```

- Convert the resource to JSON
```powershell
$UpdateFromProviderResult | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


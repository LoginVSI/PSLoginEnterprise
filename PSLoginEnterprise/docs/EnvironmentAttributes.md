# EnvironmentAttributes
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ResourceGroup** | **String** | Resource Group | [optional] 
**HostPool** | **String** | Host Pool | [optional] 

## Examples

- Prepare the resource
```powershell
$EnvironmentAttributes = Initialize-LEPSLoginEnterpriseEnvironmentAttributes  -ResourceGroup null `
 -HostPool null
```

- Convert the resource to JSON
```powershell
$EnvironmentAttributes | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


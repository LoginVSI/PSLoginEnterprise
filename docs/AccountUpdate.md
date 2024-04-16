# AccountUpdate
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Password** | **String** | Password | [optional] 
**Username** | **String** | Username | [optional] 
**Domain** | **String** | Domain id | [optional] 
**Email** | **String** | Email | [optional] 
**Fields** | [**AccountField[]**](AccountField.md) | Account Custom Fields | [optional] 

## Examples

- Prepare the resource
```powershell
$AccountUpdate = Initialize-LEPSLoginEnterpriseAccountUpdate  -Password null `
 -Username null `
 -Domain null `
 -Email null `
 -Fields null
```

- Convert the resource to JSON
```powershell
$AccountUpdate | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


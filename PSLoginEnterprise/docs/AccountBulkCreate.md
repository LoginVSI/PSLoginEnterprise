# AccountBulkCreate
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**NumberOfDigits** | **Int32** | Number of Digits | [optional] 
**NumberOfAccounts** | **Int32** | Number of Accounts | [optional] 
**Username** | **String** | Username | [optional] 
**Domain** | **String** | Domain id | [optional] 
**Email** | **String** | Email | [optional] 
**Password** | **String** | Password | [optional] 
**Fields** | [**AccountField[]**](AccountField.md) | Account Custom Fields | [optional] 

## Examples

- Prepare the resource
```powershell
$AccountBulkCreate = Initialize-LEPSLoginEnterpriseAccountBulkCreate  -NumberOfDigits null `
 -NumberOfAccounts null `
 -Username null `
 -Domain null `
 -Email null `
 -Password null `
 -Fields null
```

- Convert the resource to JSON
```powershell
$AccountBulkCreate | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


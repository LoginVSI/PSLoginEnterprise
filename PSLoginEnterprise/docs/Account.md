# Account
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | Account id | [optional] 
**Username** | **String** | Account username | [optional] 
**Domain** | **String** | Account domain | [optional] 
**Email** | **String** | Account email | [optional] 
**Created** | **System.DateTime** | Created date-time | [optional] 
**Groups** | [**ConfigurationGetAccountGroup200Response[]**](ConfigurationGetAccountGroup200Response.md) | Account Groups | [optional] 
**Fields** | [**AccountField[]**](AccountField.md) | Account Custom Fields | [optional] 
**InUse** | **Boolean** | Account is in use | [optional] 
**Enabled** | **Boolean** | Account is enabled | [optional] 

## Examples

- Prepare the resource
```powershell
$Account = Initialize-LEPSLoginEnterpriseAccount  -Id null `
 -Username null `
 -Domain null `
 -Email null `
 -Created null `
 -Groups null `
 -Fields null `
 -InUse null `
 -Enabled null
```

- Convert the resource to JSON
```powershell
$Account | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


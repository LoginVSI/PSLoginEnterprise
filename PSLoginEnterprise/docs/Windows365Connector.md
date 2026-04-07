# Windows365Connector
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | 
**CloudPcTitleField** | **String** | Name of the custom field containing the Cloud PC title. | 
**TotpSecretSecureField** | **String** | Name of the secure field containing the TOTP secret. | 
**TimeoutSeconds** | **Int32** | Script execution timeout in seconds. | 
**TotpTimeStep** | **Int32** | TOTP time step in seconds (typically 30). | 
**TotpDigits** | **Int32** | Number of digits in TOTP code (typically 6). | 
**TotpAlgorithm** | **String** | TOTP hash algorithm (SHA1, SHA256, or SHA512). | 

## Examples

- Prepare the resource
```powershell
$Windows365Connector = Initialize-LEPSLoginEnterpriseWindows365Connector  -Type null `
 -CloudPcTitleField null `
 -TotpSecretSecureField null `
 -TimeoutSeconds null `
 -TotpTimeStep null `
 -TotpDigits null `
 -TotpAlgorithm null
```

- Convert the resource to JSON
```powershell
$Windows365Connector | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


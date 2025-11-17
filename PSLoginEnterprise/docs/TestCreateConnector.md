# TestCreateConnector
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | 
**VarHost** | **String** | Host | 
**CommandLine** | **String** | Connection command line | 
**Resource** | **String** | Resource | 
**ServerUrl** | **String** | Server Url | 
**DisplayResolution** | [**Resolution**](Resolution.md) |  | [optional] 
**SeamlessMode** | **Boolean** | Enable or disable Seamless mode for published applications | [optional] 
**HostList** | [**TargetHost[]**](TargetHost.md) | Host list | 
**Gateway** | **String** | RDS Gateway | [optional] 
**SuppressCertWarn** | **Boolean** | Suppress Certificate Warning | 

## Examples

- Prepare the resource
```powershell
$TestCreateConnector = Initialize-LEPSLoginEnterpriseTestCreateConnector  -Type null `
 -VarHost null `
 -CommandLine null `
 -Resource null `
 -ServerUrl null `
 -DisplayResolution null `
 -SeamlessMode null `
 -HostList null `
 -Gateway null `
 -SuppressCertWarn null
```

- Convert the resource to JSON
```powershell
$TestCreateConnector | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


# AppTestRunConfigurationSnapshotConnector
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | 
**VarHost** | **String** | Host | 
**CommandLine** | **String** | Connection command line | 
**Resource** | **String** | Resource | 
**ServerUrl** | **String** | Server Url | 
**DisplayResolution** | [**Resolution**](Resolution.md) |  | [optional] 
**HostList** | [**TargetHost[]**](TargetHost.md) | Host list | 
**Gateway** | **String** | RDS Gateway | [optional] 
**SuppressCertWarn** | **Boolean** | Suppress Certificate Warning | 

## Examples

- Prepare the resource
```powershell
$AppTestRunConfigurationSnapshotConnector = Initialize-LEPSLoginEnterpriseAppTestRunConfigurationSnapshotConnector  -Type null `
 -VarHost null `
 -CommandLine null `
 -Resource null `
 -ServerUrl null `
 -DisplayResolution null `
 -HostList null `
 -Gateway null `
 -SuppressCertWarn null
```

- Convert the resource to JSON
```powershell
$AppTestRunConfigurationSnapshotConnector | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


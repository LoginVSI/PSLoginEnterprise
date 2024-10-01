# RdpConnector
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | 
**HostList** | [**TargetHost[]**](TargetHost.md) | Host list | 
**Resource** | **String** | Resource | [optional] 
**Gateway** | **String** | RDS Gateway | [optional] 
**SuppressCertWarn** | **Boolean** | Suppress Certificate Warning | 
**DisplayResolution** | [**Resolution**](Resolution.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$RdpConnector = Initialize-LEPSLoginEnterpriseRdpConnector  -Type null `
 -HostList null `
 -Resource null `
 -Gateway null `
 -SuppressCertWarn null `
 -DisplayResolution null
```

- Convert the resource to JSON
```powershell
$RdpConnector | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


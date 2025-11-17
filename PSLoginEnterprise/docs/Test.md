# Test
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | 
**Id** | **String** | Test id | [optional] 
**EnvironmentKey** | **String** | Environment key | [optional] 
**Name** | **String** | Test name | [optional] 
**Description** | **String** | Test description | [optional] 
**Created** | **System.DateTime** | Created date-time | [optional] 
**ConnectionResources** | [**ConnectionResources**](ConnectionResources.md) |  | [optional] 
**Workload** | [**Workload**](Workload.md) |  | [optional] 
**LogonTimeTrackingProcess** | **String** | Specify the application to track user login time session and session initiation. The default value is explorer.exe (Windows shell). You can customize it to Citrix, VMWare, or another platform that you&#39;re using. Common values are wfshell.exe (Citrix), mware-view-usbd.exe (VMWare), or rdpshell.exe (Microsoft RDP). | [optional] 
**EngineStartTimeout** | **String** | Engine start timeout | [optional] 
**ApplicationDebugModeEnabled** | **Boolean** | Run application scripts in debug mode to capture the error line for scripts failures | [optional] 

## Examples

- Prepare the resource
```powershell
$Test = Initialize-LEPSLoginEnterpriseTest  -Type null `
 -Id null `
 -EnvironmentKey null `
 -Name null `
 -Description null `
 -Created null `
 -ConnectionResources null `
 -Workload null `
 -LogonTimeTrackingProcess null `
 -EngineStartTimeout null `
 -ApplicationDebugModeEnabled null
```

- Convert the resource to JSON
```powershell
$Test | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


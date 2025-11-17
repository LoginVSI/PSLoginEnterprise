# TestUpdate
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | 
**Name** | **String** | Test name | 
**Description** | **String** | Test description | [optional] 
**ConnectionResourcesUpdate** | [**ConnectionResourcesUpdate**](ConnectionResourcesUpdate.md) |  | [optional] 
**EnvironmentKey** | **String** | Environment key | [optional] 
**Steps** | [**ConfigurationReplaceApplicationGroupStepsRequestInner[]**](ConfigurationReplaceApplicationGroupStepsRequestInner.md) | Workload steps creation data | [optional] 
**LogonTimeTrackingProcess** | **String** | Specify the application to track user login time session and session initiation. The default value is explorer.exe (Windows shell). You can customize it to Citrix, VMWare, or another platform that you&#39;re using. Common values are wfshell.exe (Citrix), mware-view-usbd.exe (VMWare), or rdpshell.exe (Microsoft RDP). | [optional] 
**EngineStartTimeout** | **String** | Engine start timeout | [optional] 
**ApplicationDebugModeEnabled** | **Boolean** | Run application scripts in debug mode to capture the error line for scripts failures | [optional] 

## Examples

- Prepare the resource
```powershell
$TestUpdate = Initialize-LEPSLoginEnterpriseTestUpdate  -Type null `
 -Name null `
 -Description null `
 -ConnectionResourcesUpdate null `
 -EnvironmentKey null `
 -Steps null `
 -LogonTimeTrackingProcess null `
 -EngineStartTimeout null `
 -ApplicationDebugModeEnabled null
```

- Convert the resource to JSON
```powershell
$TestUpdate | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


# Launcher
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**MachineName** | **String** | Launcher name | [optional] 
**SupportedVersion** | **Boolean** | Indicates whether the version of the launcher is supported | [optional] 
**Sessions** | **Int32** | Number of active sessions | [optional] 
**CurrentVersion** | **Boolean** | Indicates whether the launcher version is current | [optional] 
**Online** | **Boolean** | Launcher state | [optional] 
**FirstSeen** | **System.DateTime** | First seen date-time | [optional] 
**LastStateChange** | **System.DateTime** | Last state change date-time | [optional] 
**Properties** | [**LauncherProperty[]**](LauncherProperty.md) | Launcher properties | [optional] 
**Groups** | [**ConfigurationGetLauncherGroup200Response[]**](ConfigurationGetLauncherGroup200Response.md) | Launcher Groups | [optional] 
**LocationId** | **Int32** | Location id | [optional] 

## Examples

- Prepare the resource
```powershell
$Launcher = Initialize-LEPSLoginEnterpriseLauncher  -MachineName null `
 -SupportedVersion null `
 -Sessions null `
 -CurrentVersion null `
 -Online null `
 -FirstSeen null `
 -LastStateChange null `
 -Properties null `
 -Groups null `
 -LocationId null
```

- Convert the resource to JSON
```powershell
$Launcher | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


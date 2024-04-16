# LauncherProperty
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**PropertyId** | **String** | Launcher property id | [optional] 
**Value** | **String** | Launcher property value | [optional] 

## Examples

- Prepare the resource
```powershell
$LauncherProperty = Initialize-LEPSLoginEnterpriseLauncherProperty  -PropertyId null `
 -Value null
```

- Convert the resource to JSON
```powershell
$LauncherProperty | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


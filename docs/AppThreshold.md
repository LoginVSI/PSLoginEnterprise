# AppThreshold
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ApplicationId** | **String** | Application id | [optional] 
**Timer** | **String** | Application timer | [optional] 
**Type** | **String** |  | 
**Id** | **String** | Threshold id | [optional] 
**IsEnabled** | **Boolean** | Enable threshold | [optional] 
**Value** | **Double** | Threshold value | [optional] 
**LastModified** | **System.DateTime** | Last modified date-time | [optional] 

## Examples

- Prepare the resource
```powershell
$AppThreshold = Initialize-LEPSLoginEnterpriseAppThreshold  -ApplicationId null `
 -Timer null `
 -Type null `
 -Id null `
 -IsEnabled null `
 -Value null `
 -LastModified null
```

- Convert the resource to JSON
```powershell
$AppThreshold | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


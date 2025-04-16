# AppThreshold
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | 
**Id** | **String** | Threshold id | [optional] 
**IsEnabled** | **Boolean** | Enable threshold | [optional] 
**Value** | **Double** | Threshold value | [optional] 
**LastModified** | **System.DateTime** | Last modified date-time | [optional] 
**ApplicationId** | **String** | Application id | [optional] 
**ApplicationName** | **String** | Application name | [optional] 
**Timer** | **String** | Application timer | [optional] 

## Examples

- Prepare the resource
```powershell
$AppThreshold = Initialize-LEPSLoginEnterpriseAppThreshold  -Type null `
 -Id null `
 -IsEnabled null `
 -Value null `
 -LastModified null `
 -ApplicationId null `
 -ApplicationName null `
 -Timer null
```

- Convert the resource to JSON
```powershell
$AppThreshold | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


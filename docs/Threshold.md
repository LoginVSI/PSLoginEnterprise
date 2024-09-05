# Threshold
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | 
**Id** | **String** | Threshold id | [optional] 
**IsEnabled** | **Boolean** | Enable threshold | [optional] 
**Value** | **Double** | Threshold value | [optional] 
**LastModified** | **System.DateTime** | Last modified date-time | [optional] 

## Examples

- Prepare the resource
```powershell
$Threshold = Initialize-LEPSLoginEnterpriseThreshold  -Type null `
 -Id null `
 -IsEnabled null `
 -Value null `
 -LastModified null
```

- Convert the resource to JSON
```powershell
$Threshold | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


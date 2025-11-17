# ApplicationTestAppThresholdSnapshot
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | 
**IsEnabled** | **Boolean** | Enable threshold | [optional] 
**Value** | **Double** | Threshold value | [optional] 
**LastModified** | **System.DateTime** | Last modified date-time | [optional] 
**ApplicationName** | **String** | Application name | [optional] 
**Timer** | **String** | Application timer | [optional] 

## Examples

- Prepare the resource
```powershell
$ApplicationTestAppThresholdSnapshot = Initialize-LEPSLoginEnterpriseApplicationTestAppThresholdSnapshot  -Type null `
 -IsEnabled null `
 -Value null `
 -LastModified null `
 -ApplicationName null `
 -Timer null
```

- Convert the resource to JSON
```powershell
$ApplicationTestAppThresholdSnapshot | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


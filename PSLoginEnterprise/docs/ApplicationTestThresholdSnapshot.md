# ApplicationTestThresholdSnapshot
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | 
**IsEnabled** | **Boolean** | Enable threshold | [optional] 
**Value** | **Double** | Threshold value | [optional] 
**LastModified** | **System.DateTime** | Last modified date-time | [optional] 

## Examples

- Prepare the resource
```powershell
$ApplicationTestThresholdSnapshot = Initialize-LEPSLoginEnterpriseApplicationTestThresholdSnapshot  -Type null `
 -IsEnabled null `
 -Value null `
 -LastModified null
```

- Convert the resource to JSON
```powershell
$ApplicationTestThresholdSnapshot | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


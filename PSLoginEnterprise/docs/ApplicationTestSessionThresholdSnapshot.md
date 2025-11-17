# ApplicationTestSessionThresholdSnapshot
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | 
**IsEnabled** | **Boolean** | Enable threshold | [optional] 
**Value** | **Double** | Threshold value | [optional] 
**LastModified** | **System.DateTime** | Last modified date-time | [optional] 
**Target** | [**SessionThresholdType**](SessionThresholdType.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ApplicationTestSessionThresholdSnapshot = Initialize-LEPSLoginEnterpriseApplicationTestSessionThresholdSnapshot  -Type null `
 -IsEnabled null `
 -Value null `
 -LastModified null `
 -Target null
```

- Convert the resource to JSON
```powershell
$ApplicationTestSessionThresholdSnapshot | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


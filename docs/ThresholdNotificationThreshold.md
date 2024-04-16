# ThresholdNotificationThreshold
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | 
**ApplicationId** | **String** | Application id | [optional] 
**Timer** | **String** | Application timer | [optional] 
**Id** | **String** | Threshold id | [optional] 
**IsEnabled** | **Boolean** | Enable threshold | [optional] 
**Value** | **Double** | Threshold value | [optional] 
**LastModified** | **System.DateTime** | Last modified date-time | [optional] 
**Target** | [**SessionThresholdType**](SessionThresholdType.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ThresholdNotificationThreshold = Initialize-LEPSLoginEnterpriseThresholdNotificationThreshold  -Type null `
 -ApplicationId null `
 -Timer null `
 -Id null `
 -IsEnabled null `
 -Value null `
 -LastModified null `
 -Target null
```

- Convert the resource to JSON
```powershell
$ThresholdNotificationThreshold | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


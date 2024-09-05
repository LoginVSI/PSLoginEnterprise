# ConfigurationGetApplicationTestThresholds200ResponseInner
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
**Target** | [**SessionThresholdType**](SessionThresholdType.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ConfigurationGetApplicationTestThresholds200ResponseInner = Initialize-LEPSLoginEnterpriseConfigurationGetApplicationTestThresholds200ResponseInner  -ApplicationId null `
 -Timer null `
 -Type null `
 -Id null `
 -IsEnabled null `
 -Value null `
 -LastModified null `
 -Target null
```

- Convert the resource to JSON
```powershell
$ConfigurationGetApplicationTestThresholds200ResponseInner | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


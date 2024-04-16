# LoadTestRunStatistics
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EuxScores** | **Double[]** | Eux Score (1 minute offset) | [optional] 
**BaseTimestamp** | **System.DateTime** | Starting timestamp | [optional] 
**VsiMaxOffset** | **Int32** | VSImax reached offset | [optional] 

## Examples

- Prepare the resource
```powershell
$LoadTestRunStatistics = Initialize-LEPSLoginEnterpriseLoadTestRunStatistics  -EuxScores null `
 -BaseTimestamp null `
 -VsiMaxOffset null
```

- Convert the resource to JSON
```powershell
$LoadTestRunStatistics | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


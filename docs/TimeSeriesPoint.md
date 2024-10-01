# TimeSeriesPoint
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Timestamp** | **System.DateTime** | The date and time when the metric was recorded. | [optional] 
**Value** | **Double** | The numeric value of the data point. | [optional] 

## Examples

- Prepare the resource
```powershell
$TimeSeriesPoint = Initialize-LEPSLoginEnterpriseTimeSeriesPoint  -Timestamp null `
 -Value null
```

- Convert the resource to JSON
```powershell
$TimeSeriesPoint | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


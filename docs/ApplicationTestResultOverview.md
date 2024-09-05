# ApplicationTestResultOverview
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**PlatformSummary** | [**PlatformSummary**](PlatformSummary.md) |  | [optional] 
**ApplicationSummaries** | [**ApplicationSummary[]**](ApplicationSummary.md) | Application summaries | [optional] 

## Examples

- Prepare the resource
```powershell
$ApplicationTestResultOverview = Initialize-LEPSLoginEnterpriseApplicationTestResultOverview  -PlatformSummary null `
 -ApplicationSummaries null
```

- Convert the resource to JSON
```powershell
$ApplicationTestResultOverview | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


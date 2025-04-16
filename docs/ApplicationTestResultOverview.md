# ApplicationTestResultOverview
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ApplicationTestResult** | [**ApplicationTestData[]**](ApplicationTestData.md) | Application test result | [optional] 

## Examples

- Prepare the resource
```powershell
$ApplicationTestResultOverview = Initialize-LEPSLoginEnterpriseApplicationTestResultOverview  -ApplicationTestResult null
```

- Convert the resource to JSON
```powershell
$ApplicationTestResultOverview | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


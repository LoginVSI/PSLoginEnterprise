# EuxScore
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Score** | **Double** | Final Eux score | [optional] 
**SteadyStateScore** | **Double** | Eux score under normal, unstressed conditions. Calculated excluding the logon phase | [optional] 
**Baseline** | **Double** | Represents the best scoring eux interval of a test run, given a configured time window | [optional] 
**BaselineStartMinute** | **Int32** | Starting time of the baseline score&#39;s interval | [optional] 
**BaselineWindowSize** | **Int32** | Baseline window size in minutes | [optional] 
**Version** | **String** | Eux score version | [optional] 
**State** | [**EuxState**](EuxState.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$EuxScore = Initialize-LEPSLoginEnterpriseEuxScore  -Score null `
 -SteadyStateScore null `
 -Baseline null `
 -BaselineStartMinute null `
 -BaselineWindowSize null `
 -Version null `
 -State null
```

- Convert the resource to JSON
```powershell
$EuxScore | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


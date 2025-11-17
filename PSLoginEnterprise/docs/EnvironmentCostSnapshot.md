# EnvironmentCostSnapshot
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TimeStamp** | **System.DateTime** | Time Stamp | [optional] 
**Source** | [**SourceType**](SourceType.md) |  | [optional] 
**Currency** | [**CurrencyType**](CurrencyType.md) |  | [optional] 
**ExpectedUserAmount** | **Int32** | Expected User Amount | [optional] 
**ActualUserAmount** | **Int32** | Actual User Amount | [optional] 
**CapitalExpenditures** | **Int32** | Capital Expenditures | [optional] 
**OperationalExpenditures** | **Int32** | Operational Expenditures | [optional] 

## Examples

- Prepare the resource
```powershell
$EnvironmentCostSnapshot = Initialize-LEPSLoginEnterpriseEnvironmentCostSnapshot  -TimeStamp null `
 -Source null `
 -Currency null `
 -ExpectedUserAmount null `
 -ActualUserAmount null `
 -CapitalExpenditures null `
 -OperationalExpenditures null
```

- Convert the resource to JSON
```powershell
$EnvironmentCostSnapshot | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


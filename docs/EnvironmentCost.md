# EnvironmentCost
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Currency** | [**CurrencyType**](CurrencyType.md) |  | [optional] 
**ExpectedUserAmount** | **Int32** | Expected User Amount | [optional] 
**ActualUserAmount** | **Int32** | Actual User Amount | [optional] 
**CapitalExpenditures** | **Int32** | Capital Expenditures | [optional] 
**OperationalExpenditures** | **Int32** | Operational Expenditures | [optional] 

## Examples

- Prepare the resource
```powershell
$EnvironmentCost = Initialize-LEPSLoginEnterpriseEnvironmentCost  -Currency null `
 -ExpectedUserAmount null `
 -ActualUserAmount null `
 -CapitalExpenditures null `
 -OperationalExpenditures null
```

- Convert the resource to JSON
```powershell
$EnvironmentCost | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


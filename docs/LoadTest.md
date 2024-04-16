# LoadTest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | 
**NumberOfSessions** | **Int32** | Number of sessions | [optional] 
**RampUpDurationInMinutes** | **Int32** | Ramp up duration in minutes | [optional] 
**TestDurationInMinutes** | **Int32** | Test duration in minutes | [optional] 
**RampDownDurationInMinutes** | **Int32** | Ramp down duration in minutes | [optional] 
**State** | [**TestControlState**](TestControlState.md) |  | [optional] 
**EuxEnabled** | **Boolean** | Enable Eux Analysis | [optional] 
**Id** | **String** | Test id | [optional] 
**Name** | **String** | Test name | [optional] 
**Description** | **String** | Test description | [optional] 
**Created** | **System.DateTime** | Created date-time | [optional] 
**Environment** | [**Environment**](Environment.md) |  | [optional] 
**Workload** | [**Workload**](Workload.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$LoadTest = Initialize-LEPSLoginEnterpriseLoadTest  -Type null `
 -NumberOfSessions null `
 -RampUpDurationInMinutes null `
 -TestDurationInMinutes null `
 -RampDownDurationInMinutes null `
 -State null `
 -EuxEnabled null `
 -Id null `
 -Name null `
 -Description null `
 -Created null `
 -Environment null `
 -Workload null
```

- Convert the resource to JSON
```powershell
$LoadTest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


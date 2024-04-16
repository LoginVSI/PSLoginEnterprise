# ApplicationTest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | 
**IsEmailEnabled** | **Boolean** | Enable email notification | [optional] 
**EmailRecipient** | **String** | Notification email address | [optional] 
**IncludeSuccessfulApplications** | **Boolean** | Include successful applications in report | [optional] 
**State** | [**TestControlState**](TestControlState.md) |  | [optional] 
**Thresholds** | [**ConfigurationGetApplicationTestThresholds200ResponseInner[]**](ConfigurationGetApplicationTestThresholds200ResponseInner.md) | Application test thresholds | [optional] 
**Id** | **String** | Test id | [optional] 
**Name** | **String** | Test name | [optional] 
**Description** | **String** | Test description | [optional] 
**Created** | **System.DateTime** | Created date-time | [optional] 
**Environment** | [**Environment**](Environment.md) |  | [optional] 
**Workload** | [**Workload**](Workload.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ApplicationTest = Initialize-LEPSLoginEnterpriseApplicationTest  -Type null `
 -IsEmailEnabled null `
 -EmailRecipient null `
 -IncludeSuccessfulApplications null `
 -State null `
 -Thresholds null `
 -Id null `
 -Name null `
 -Description null `
 -Created null `
 -Environment null `
 -Workload null
```

- Convert the resource to JSON
```powershell
$ApplicationTest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


# ApplicationTestUpdate
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | 
**IsEmailEnabled** | **Boolean** | Enable email notification | 
**EmailRecipient** | **String** | Notification email address | [optional] 
**IncludeSuccessfulApplications** | **Boolean** | Include successful applications in report | 
**Name** | **String** | Test name | 
**Description** | **String** | Test description | [optional] 
**EnvironmentUpdate** | [**EnvironmentUpdate**](EnvironmentUpdate.md) |  | [optional] 
**Steps** | [**ConfigurationReplaceApplicationGroupStepsRequestInner[]**](ConfigurationReplaceApplicationGroupStepsRequestInner.md) | Workload steps creation data | [optional] 

## Examples

- Prepare the resource
```powershell
$ApplicationTestUpdate = Initialize-LEPSLoginEnterpriseApplicationTestUpdate  -Type null `
 -IsEmailEnabled null `
 -EmailRecipient null `
 -IncludeSuccessfulApplications null `
 -Name null `
 -Description null `
 -EnvironmentUpdate null `
 -Steps null
```

- Convert the resource to JSON
```powershell
$ApplicationTestUpdate | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


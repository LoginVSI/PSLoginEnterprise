# TestRun
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | 
**Id** | **String** | Test run id | [optional] 
**TestId** | **String** | Test id | [optional] 
**Created** | **System.DateTime** | Created date-time | [optional] 
**Started** | **System.DateTime** | Started date-time | [optional] 
**Finished** | **System.DateTime** | Finished date-time | [optional] 
**Counter** | **Int32** | Test run counter | [optional] 

## Examples

- Prepare the resource
```powershell
$TestRun = Initialize-LEPSLoginEnterpriseTestRun  -Type null `
 -Id null `
 -TestId null `
 -Created null `
 -Started null `
 -Finished null `
 -Counter null
```

- Convert the resource to JSON
```powershell
$TestRun | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


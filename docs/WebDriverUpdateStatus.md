# WebDriverUpdateStatus
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**UpdatesAvailable** | **Boolean** | Determines whether Updates Available for any of the Web Automation Driver Flavors | [optional] 
**Drivers** | [**WebDriverStatus[]**](WebDriverStatus.md) | Drivers Statuses | [optional] 

## Examples

- Prepare the resource
```powershell
$WebDriverUpdateStatus = Initialize-LEPSLoginEnterpriseWebDriverUpdateStatus  -UpdatesAvailable null `
 -Drivers null
```

- Convert the resource to JSON
```powershell
$WebDriverUpdateStatus | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


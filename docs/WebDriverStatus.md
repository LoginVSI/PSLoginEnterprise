# WebDriverStatus
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Browser** | [**BrowserName**](BrowserName.md) |  | [optional] 
**Current** | **String[]** | List of the the current web automation driver versions | [optional] 
**AvailableForDownload** | **String[]** | List of the latest web automation driver versions available for download | [optional] 
**VarError** | **String** | Error Description | [optional] 
**IsSuccessful** | **Boolean** | Success flag to determine whether fetching update information for a web driver was successful | [optional] 

## Examples

- Prepare the resource
```powershell
$WebDriverStatus = Initialize-LEPSLoginEnterpriseWebDriverStatus  -Browser null `
 -Current null `
 -AvailableForDownload null `
 -VarError null `
 -IsSuccessful null
```

- Convert the resource to JSON
```powershell
$WebDriverStatus | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


# PSLoginEnterprise.PSLoginEnterprise\Api.ReportConfigurationApi

All URIs are relative to */publicApi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-ConfigurationGetAllReportConfigurations**](ReportConfigurationApi.md#Invoke-ConfigurationGetAllReportConfigurations) | **GET** /v7/report-configurations | Get paginated list of all report-configurations


<a id="Invoke-ConfigurationGetAllReportConfigurations"></a>
# **Invoke-ConfigurationGetAllReportConfigurations**
> ReportConfigurationResultSet Invoke-ConfigurationGetAllReportConfigurations<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OrderBy] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Direction] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IncludeTotalCount] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Include] <PSCustomObject[]><br>

Get paginated list of all report-configurations

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$accessToken = "YOUR_ACCESS_TOKEN"

# Configure your appliance name
$applianceName = "YOUR_APPLIANCE_HOSTNAME"

# $applianceName = "YOUR_APPLIANCE_HOSTNAME"
$bearerToken = @{"Authorization"="Bearer $accessToken"}
Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken
""

$OrderBy = "name" # ReportConfigurationSortKey | Sort Key (optional)
$Direction = "asc" # SortOrder | Sort direction (optional)
$Count = 56 # Int32 | Number of records to return (optional) (default to 100)
$Offset = 56 # Int32 | Start offset (optional) (default to 0)
$IncludeTotalCount = $true # Boolean | Include total number of records (optional) (default to $false)
$Include = "none" # ReportConfigurationInclude[] | Include options (optional)

# Get paginated list of all report-configurations
try {
    $Result = Invoke-ConfigurationGetAllReportConfigurations -OrderBy $OrderBy -Direction $Direction -Count $Count -Offset $Offset -IncludeTotalCount $IncludeTotalCount -Include $Include
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationGetAllReportConfigurations: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **OrderBy** | [**ReportConfigurationSortKey**](ReportConfigurationSortKey.md)| Sort Key | [optional] 
 **Direction** | [**SortOrder**](SortOrder.md)| Sort direction | [optional] 
 **Count** | **Int32**| Number of records to return | [optional] [default to 100]
 **Offset** | **Int32**| Start offset | [optional] [default to 0]
 **IncludeTotalCount** | **Boolean**| Include total number of records | [optional] [default to $false]
 **Include** | [**ReportConfigurationInclude[]**](ReportConfigurationInclude.md)| Include options | [optional] 

### Return type

[**ReportConfigurationResultSet**](ReportConfigurationResultSet.md) (PSCustomObject)

### Authorization

[OpenIdConnect](../README.md#OpenIdConnect), [oauth2](../README.md#oauth2), [Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


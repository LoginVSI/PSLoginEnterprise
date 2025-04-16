# PSLoginEnterprise - the PowerShell module for the Login Enterprise

<br><b>API v7 – Actively developed version starting with Login Enterprise v6.0.</b></br>

The Login Enterprise Public API provides documentation and Swagger per version within the product. For additional information please refer to the [documentation](https://support.loginvsi.com/hc/en-us/articles/360009534760) on our website.

- API version: 7.0
- SDK version: 1.0.7
- Generator version: 7.9.0
- Build package: org.openapitools.codegen.languages.PowerShellClientCodegen

<a id="frameworks-supported"></a>
## Frameworks supported
- PowerShell 5.1 (With a trusted certificate)
- PowerShell 7 (With the option to not trust the certificate -SkipCertificateCheck)
(PowerShell 7 supports -SkipCertificateCheck with Invoke-WebRequest, earlier versions do not.)

<a id="installation"></a>
## Installation

To install from PowerShell Gallery (https://www.powershellgallery.com/packages/PSLoginEnterprise)
```powershell
Install-Module -Name PSLoginEnterprise -RequiredVersion 1.0.7
Import-Module -Name PSLoginEnterprise -Verbose
```
<span style="color: red;">

### Important!
</span>
<span style="color: red;"><b><u>For earlier releases of Login Enterprise - pre Version 6.0:</u></b></span>

```powershell
Install-Module -Name PSLoginEnterprise -RequiredVersion 1.0.6
Import-Module -Name PSLoginEnterprise -Verbose
```

To install from the source, run the following command to build and install the PowerShell module locally:
```powershell
Build.ps1
Import-Module -Name '.\src\PSLoginEnterprise' -Verbose
```

To avoid function name collision, one can use `-Prefix`, e.g. `Import-Module -Name '.\src\PSLoginEnterprise' -Prefix prefix`

To uninstall the module, simply run:
```powershell
Remove-Module -FullyQualifiedName @{ModuleName = "PSLoginEnterprise"; ModuleVersion = "1.0.7"}
```

For troubleshooting, please run `$DebugPreference = 'Continue'` to turn on debugging and disable it with `$DebugPreference = 'SilentlyContinue'` when done with the troubleshooting.

## Quick Start
To get started use the commands above to install the PSLoginEnterprise module (elevated PowerShell window needed for install).

Next, you will need an API key from your Login Enterprise Appliance (see https://support.loginvsi.com/hc/en-us/articles/360009534760-Public-API).

With your API Key in hand, open PowerShell. Import the newly installed PSLoginEnterprise module and use some variables to set our configuration:

```powershell
Import-Module PSLoginEnterprise

# general setting of the PowerShell module, e.g. base URL, authentication, etc
$accessToken = "YOUR_ACCESS_TOKEN"
  #no prefix, just he host name (ie): demolab.loginvsi.com

# Don't change anything below here
$bearerToken = @{"Authorization"="Bearer $accessToken"}
Set-LEConfiguration -BaseUrl "https://$applianceName/publicApi" -ApiKey $bearerToken 
```

With a configuration set, we can start querying. Remember, if you did not grant your API config permissions, don't expect to be able to make changes via the API.
Example: Get EUX Version of the Login Enterprise Appliance:

```powershell
# Get eux version of system
try {
    $Result = Get-LESystemEuxVersion
} catch {
    Write-Host ("Exception occurred when calling Get-LESystemEuxVersion: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

View the results (in the $Result variable). If you are configured properly, you should see:

```powershell
PS C:\Users\username> $Result

version
-------
EUX2023

```

You are all set! You can get help on any of the commands. For Example:
```powershell
Get-Help Get-LESystemEuxVersion

NAME
    Get-LESystemEuxVersion

SYNOPSIS
    Get eux version of system


SYNTAX
    Get-LESystemEuxVersion [-WithHttpInfo] [<CommonParameters>]


DESCRIPTION
    No description available.


RELATED LINKS

REMARKS
    To see the examples, type: "get-help Get-LESystemEuxVersion -examples".
    For more information, type: "get-help Get-LESystemEuxVersion -detailed".
    For technical information, type: "get-help Get-LESystemEuxVersion -full".
```

## Documentation for API Endpoints

All URIs are relative to */publicApi*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*LEAccountApi* | [**New-LEAccount**](docs/LEAccountApi.md#New-LEAccount) | **POST** /v7/accounts | Create account
*LEAccountApi* | [**New-LEAccounts**](docs/LEAccountApi.md#New-LEAccounts) | **POST** /v7/accounts/bulk | Create account in bulk
*LEAccountApi* | [**Invoke-LEDeleteAccount**](docs/LEAccountApi.md#Invoke-LEDeleteAccount) | **DELETE** /v7/accounts/{accountId} | Delete account
*LEAccountApi* | [**Invoke-LEDeleteAccounts**](docs/LEAccountApi.md#Invoke-LEDeleteAccounts) | **DELETE** /v7/accounts | Delete multiple accounts
*LEAccountApi* | [**Get-LEAccount**](docs/LEAccountApi.md#Get-LEAccount) | **GET** /v7/accounts/{accountId} | Get account by id
*LEAccountApi* | [**Get-LEAccounts**](docs/LEAccountApi.md#Get-LEAccounts) | **GET** /v7/accounts | Get paginated list of accounts
*LEAccountApi* | [**Update-LEAccount**](docs/LEAccountApi.md#Update-LEAccount) | **PUT** /v7/accounts/{accountId} | Update account
*LEAccountApi* | [**Update-LEAccountEnabled**](docs/LEAccountApi.md#Update-LEAccountEnabled) | **PUT** /v7/accounts/{accountId}/enabled | Enable or disable account
*LEAccountApi* | [**Update-LEAccountsEnabled**](docs/LEAccountApi.md#Update-LEAccountsEnabled) | **PUT** /v7/accounts/enabled | Enable or disable accounts
*LEAccountGroupMembersApi* | [**Add-LEAccountGroupMembers**](docs/LEAccountGroupMembersApi.md#Add-LEAccountGroupMembers) | **POST** /v7/account-groups/{groupId}/members | Add members to account-group
*LEAccountGroupMembersApi* | [**Get-LEAccountGroupMembers**](docs/LEAccountGroupMembersApi.md#Get-LEAccountGroupMembers) | **GET** /v7/account-groups/{groupId}/members | Get paginated list of account-group members
*LEAccountGroupMembersApi* | [**Remove-LEAccountGroupMembers**](docs/LEAccountGroupMembersApi.md#Remove-LEAccountGroupMembers) | **DELETE** /v7/account-groups/{groupId}/members | Remove members from account-group
*LEAccountGroupMembersApi* | [**Set-LEAccountGroupMembers**](docs/LEAccountGroupMembersApi.md#Set-LEAccountGroupMembers) | **PUT** /v7/account-groups/{groupId}/members | Replace members in account-group
*LEAccountGroupsApi* | [**New-LEAccountGroup**](docs/LEAccountGroupsApi.md#New-LEAccountGroup) | **POST** /v7/account-groups | Create account-group
*LEAccountGroupsApi* | [**Invoke-LEDeleteAccountGroup**](docs/LEAccountGroupsApi.md#Invoke-LEDeleteAccountGroup) | **DELETE** /v7/account-groups/{groupId} | Delete account-group
*LEAccountGroupsApi* | [**Invoke-LEDeleteAccountGroups**](docs/LEAccountGroupsApi.md#Invoke-LEDeleteAccountGroups) | **DELETE** /v7/account-groups | Delete multiple account-groups
*LEAccountGroupsApi* | [**Get-LEAccountGroup**](docs/LEAccountGroupsApi.md#Get-LEAccountGroup) | **GET** /v7/account-groups/{groupId} | Get account-group by id
*LEAccountGroupsApi* | [**Get-LEAccountGroupCandidates**](docs/LEAccountGroupsApi.md#Get-LEAccountGroupCandidates) | **GET** /v7/account-groups/candidates | Get account-group candidates
*LEAccountGroupsApi* | [**Get-LEAccountGroups**](docs/LEAccountGroupsApi.md#Get-LEAccountGroups) | **GET** /v7/account-groups | Get paginated list of account-groups
*LEAccountGroupsApi* | [**Update-LEAccountGroup**](docs/LEAccountGroupsApi.md#Update-LEAccountGroup) | **PUT** /v7/account-groups/{groupId} | Update account-group
*LEAccountGroupsApi* | [**Update-LEAccountsEnabled0**](docs/LEAccountGroupsApi.md#Update-LEAccountsEnabled0) | **PUT** /v7/account-groups/enabled | Enable or disable accounts in groups
*LEAppExecutionApi* | [**Get-LEAppExecutions**](docs/LEAppExecutionApi.md#Get-LEAppExecutions) | **GET** /v7/test-runs/{testRunId}/user-sessions/{userSessionId}/app-executions | Get paginated list of app-executions
*LEApplianceHealthApi* | [**Get-LEApplianceHealthAlertSettingsAsync**](docs/LEApplianceHealthApi.md#Get-LEApplianceHealthAlertSettingsAsync) | **GET** /v7/appliance-health/settings | Retrieves the current appliance health alert settings.
*LEApplianceHealthApi* | [**Get-LEApplianceHealthMetricsAsync**](docs/LEApplianceHealthApi.md#Get-LEApplianceHealthMetricsAsync) | **GET** /v7/appliance-health | Retrieves a collection of appliance health metrics based on the specified filters.
*LEApplianceHealthApi* | [**Update-LEApplianceHealthAlertSettingsAsync**](docs/LEApplianceHealthApi.md#Update-LEApplianceHealthAlertSettingsAsync) | **PUT** /v7/appliance-health/settings | Updates the appliance health alert settings.
*LEApplicationApi* | [**New-LEApplication**](docs/LEApplicationApi.md#New-LEApplication) | **POST** /v7/applications | Create application.
*LEApplicationApi* | [**Invoke-LEDeleteApplication**](docs/LEApplicationApi.md#Invoke-LEDeleteApplication) | **DELETE** /v7/applications/{applicationId} | Delete application
*LEApplicationApi* | [**Invoke-LEDeleteApplications**](docs/LEApplicationApi.md#Invoke-LEDeleteApplications) | **DELETE** /v7/applications | Delete multiple applications
*LEApplicationApi* | [**Get-LEApplication**](docs/LEApplicationApi.md#Get-LEApplication) | **GET** /v7/applications/{applicationId} | Get application by id
*LEApplicationApi* | [**Get-LEApplications**](docs/LEApplicationApi.md#Get-LEApplications) | **GET** /v7/applications | Gets a paginated list of applications
*LEApplicationApi* | [**Invoke-LEParseApplicationDetails**](docs/LEApplicationApi.md#Invoke-LEParseApplicationDetails) | **POST** /v7/applications/parse | Parse application details from script content
*LEApplicationApi* | [**Update-LEApplication**](docs/LEApplicationApi.md#Update-LEApplication) | **PUT** /v7/applications/{applicationId} | Update application
*LEApplicationGroupApi* | [**Add-LEStepsToApplicationGroup**](docs/LEApplicationGroupApi.md#Add-LEStepsToApplicationGroup) | **POST** /v7/application-groups/{groupId}/steps | Add steps to application-group
*LEApplicationGroupApi* | [**New-LEApplicationGroup**](docs/LEApplicationGroupApi.md#New-LEApplicationGroup) | **POST** /v7/application-groups | Create application-group
*LEApplicationGroupApi* | [**Invoke-LEDeleteApplicationGroup**](docs/LEApplicationGroupApi.md#Invoke-LEDeleteApplicationGroup) | **DELETE** /v7/application-groups/{groupId} | Delete application-group
*LEApplicationGroupApi* | [**Invoke-LEDeleteApplicationGroupList**](docs/LEApplicationGroupApi.md#Invoke-LEDeleteApplicationGroupList) | **DELETE** /v7/application-groups | Delete multiple application-groups
*LEApplicationGroupApi* | [**Get-LEApplicationGroup**](docs/LEApplicationGroupApi.md#Get-LEApplicationGroup) | **GET** /v7/application-groups/{groupId} | Get application-group by id
*LEApplicationGroupApi* | [**Get-LEApplicationGroups**](docs/LEApplicationGroupApi.md#Get-LEApplicationGroups) | **GET** /v7/application-groups | Get paginated list of application-groups
*LEApplicationGroupApi* | [**Remove-LEStepsFromApplicationGroup**](docs/LEApplicationGroupApi.md#Remove-LEStepsFromApplicationGroup) | **DELETE** /v7/application-groups/{groupId}/steps | Remove steps from application-group
*LEApplicationGroupApi* | [**Invoke-LEReplaceApplicationGroupSteps**](docs/LEApplicationGroupApi.md#Invoke-LEReplaceApplicationGroupSteps) | **PUT** /v7/application-groups/{groupId}/steps | Replace application-group Steps
*LEApplicationGroupApi* | [**Update-LEApplicationGroup**](docs/LEApplicationGroupApi.md#Update-LEApplicationGroup) | **PUT** /v7/application-groups/{groupId} | Update application-group
*LEApplicationGroupApi* | [**Update-LEStepInApplicationGroup**](docs/LEApplicationGroupApi.md#Update-LEStepInApplicationGroup) | **PUT** /v7/application-groups/{groupId}/steps/{stepId} | Update single step in application-group
*LEConnectionResourcesApi* | [**Get-LEConnectionResources**](docs/LEConnectionResourcesApi.md#Get-LEConnectionResources) | **GET** /v7/tests/{testId}/connection-resources | Get connection resources by test-id
*LEConnectionResourcesApi* | [**Update-LEConnectionResources**](docs/LEConnectionResourcesApi.md#Update-LEConnectionResources) | **PUT** /v7/tests/{testId}/connection-resources | Update connection resources for a given test
*LEEnvironmentApi* | [**Add-LEEnvironmentToTests**](docs/LEEnvironmentApi.md#Add-LEEnvironmentToTests) | **PUT** /v7/environments/{environmentId}/tests | Add tests to an environment
*LEEnvironmentApi* | [**New-LEEnvironment**](docs/LEEnvironmentApi.md#New-LEEnvironment) | **POST** /v7/environments | Create environment
*LEEnvironmentApi* | [**Invoke-LEDeleteEnvironment**](docs/LEEnvironmentApi.md#Invoke-LEDeleteEnvironment) | **DELETE** /v7/environments/{environmentId} | Delete environment
*LEEnvironmentApi* | [**Get-LEEnvironmentById**](docs/LEEnvironmentApi.md#Get-LEEnvironmentById) | **GET** /v7/environments/{environmentId} | Get environment by id
*LEEnvironmentApi* | [**Get-LEEnvironmentCostHistory**](docs/LEEnvironmentApi.md#Get-LEEnvironmentCostHistory) | **GET** /v7/environments/{environmentId}/cost/history | Get cost history for a given environment
*LEEnvironmentApi* | [**Get-LEEnvironments**](docs/LEEnvironmentApi.md#Get-LEEnvironments) | **GET** /v7/environments | Get a list of environments
*LEEnvironmentApi* | [**Get-LETestsByEnvironmentKey**](docs/LEEnvironmentApi.md#Get-LETestsByEnvironmentKey) | **GET** /v7/environments/tests | Get tests by environment id
*LEEnvironmentApi* | [**Remove-LEEnvironmentFromTests**](docs/LEEnvironmentApi.md#Remove-LEEnvironmentFromTests) | **DELETE** /v7/environments/{environmentId}/tests | Delete tests from environment
*LEEnvironmentApi* | [**Update-LEEnvironment**](docs/LEEnvironmentApi.md#Update-LEEnvironment) | **PUT** /v7/environments/{environmentId} | Update environment
*LEEuxSettingsApi* | [**Get-LEEuxSettings**](docs/LEEuxSettingsApi.md#Get-LEEuxSettings) | **GET** /v7/euxsettings | Get Eux settings
*LEEuxSettingsApi* | [**Update-LEEuxSettings**](docs/LEEuxSettingsApi.md#Update-LEEuxSettings) | **PUT** /v7/euxsettings | Update Eux settings
*LEEventApi* | [**Get-LEEvent**](docs/LEEventApi.md#Get-LEEvent) | **GET** /v7/events/{eventId} | Get event by id
*LEEventApi* | [**Get-LEEvents**](docs/LEEventApi.md#Get-LEEvents) | **GET** /v7/events | Get paginated list of all events
*LEEventApi* | [**Get-LEEventsByAppExecution**](docs/LEEventApi.md#Get-LEEventsByAppExecution) | **GET** /v7/test-runs/{testRunId}/app-executions/{appExecutionId}/events | Get paginated list of events by app-execution id
*LEEventApi* | [**Get-LEEventsByTestRun**](docs/LEEventApi.md#Get-LEEventsByTestRun) | **GET** /v7/test-runs/{testRunId}/events | Get paginated list of events by test-run id
*LEEventApi* | [**Get-LEEventsByUserSession**](docs/LEEventApi.md#Get-LEEventsByUserSession) | **GET** /v7/test-runs/{testRunId}/user-sessions/{userSessionId}/events | Get paginated list of events by user-session id
*LELauncherApi* | [**Get-LELauncher**](docs/LELauncherApi.md#Get-LELauncher) | **GET** /v7/launchers/{launcherName} | Get launcher by name.
*LELauncherApi* | [**Get-LELaunchers**](docs/LELauncherApi.md#Get-LELaunchers) | **GET** /v7/launchers | Get paginated list of launchers
*LELauncherApi* | [**Update-LELauncherLocation**](docs/LELauncherApi.md#Update-LELauncherLocation) | **PUT** /v7/launchers/{launcherName}/location | Change launcher's location
*LELauncherGroupApi* | [**New-LELauncherGroup**](docs/LELauncherGroupApi.md#New-LELauncherGroup) | **POST** /v7/launcher-groups | Create launcher-group
*LELauncherGroupApi* | [**Invoke-LEDeleteLauncherGroup**](docs/LELauncherGroupApi.md#Invoke-LEDeleteLauncherGroup) | **DELETE** /v7/launcher-groups/{groupId} | Delete launcher-group
*LELauncherGroupApi* | [**Invoke-LEDeleteLauncherGroups**](docs/LELauncherGroupApi.md#Invoke-LEDeleteLauncherGroups) | **DELETE** /v7/launcher-groups | delete multiple launcher-groups
*LELauncherGroupApi* | [**Get-LELauncherGroup**](docs/LELauncherGroupApi.md#Get-LELauncherGroup) | **GET** /v7/launcher-groups/{groupId} | Get launcher-group by id
*LELauncherGroupApi* | [**Get-LELauncherGroups**](docs/LELauncherGroupApi.md#Get-LELauncherGroups) | **GET** /v7/launcher-groups | Get paginated list of launcher-groups
*LELauncherGroupApi* | [**Update-LELauncherGroup**](docs/LELauncherGroupApi.md#Update-LELauncherGroup) | **PUT** /v7/launcher-groups/{groupId} | Update launcher-group
*LELauncherGroupMemberApi* | [**Add-LELauncherGroupMembers**](docs/LELauncherGroupMemberApi.md#Add-LELauncherGroupMembers) | **POST** /v7/launcher-groups/{groupId}/members | Add members to launcher-group
*LELauncherGroupMemberApi* | [**Get-LELauncherGroupMembers**](docs/LELauncherGroupMemberApi.md#Get-LELauncherGroupMembers) | **GET** /v7/launcher-groups/{groupId}/members | Get paginated list of launcher-group members
*LELauncherGroupMemberApi* | [**Remove-LELauncherGroupMembers**](docs/LELauncherGroupMemberApi.md#Remove-LELauncherGroupMembers) | **DELETE** /v7/launcher-groups/{groupId}/members | Remove members from launcher-group
*LELdapConfigurationApi* | [**New-LELdapConfig**](docs/LELdapConfigurationApi.md#New-LELdapConfig) | **POST** /v7/ldap-configuration/identity-server | Create LDAP configuration.
*LELdapConfigurationApi* | [**Invoke-LEDeleteLdapConfig**](docs/LELdapConfigurationApi.md#Invoke-LEDeleteLdapConfig) | **DELETE** /v7/ldap-configuration/identity-server | Delete LDAP configuration.
*LELdapConfigurationApi* | [**Get-LELdapConfig**](docs/LELdapConfigurationApi.md#Get-LELdapConfig) | **GET** /v7/ldap-configuration/identity-server | Get LDAP configuration.
*LELdapConfigurationApi* | [**Update-LELdapConfig**](docs/LELdapConfigurationApi.md#Update-LELdapConfig) | **PUT** /v7/ldap-configuration/identity-server | Update LDAP configuration.
*LELdapGroupApi* | [**New-LELdapGroup**](docs/LELdapGroupApi.md#New-LELdapGroup) | **POST** /v7/auth/ldap-groups | Create a ldap group
*LELdapGroupApi* | [**Invoke-LEDeleteLdapGroup**](docs/LELdapGroupApi.md#Invoke-LEDeleteLdapGroup) | **DELETE** /v7/auth/ldap-groups/{ldapGroupId} | Delete a ldap group
*LELdapGroupApi* | [**Get-LEAllLdapGroups**](docs/LELdapGroupApi.md#Get-LEAllLdapGroups) | **GET** /v7/auth/ldap-groups | Get paginated list of all ldap groups
*LELdapGroupApi* | [**Get-LELdapGroupById**](docs/LELdapGroupApi.md#Get-LELdapGroupById) | **GET** /v7/auth/ldap-groups/{ldapGroupId} | Get ldap group by id
*LELdapGroupApi* | [**Update-LELdapGroup**](docs/LELdapGroupApi.md#Update-LELdapGroup) | **PUT** /v7/auth/ldap-groups/{ldapGroupId} | Update ldap group
*LELocationApi* | [**New-LELocation**](docs/LELocationApi.md#New-LELocation) | **POST** /v7/locations | Create location
*LELocationApi* | [**Invoke-LEDeleteLocation**](docs/LELocationApi.md#Invoke-LEDeleteLocation) | **DELETE** /v7/locations/{locationId} | Delete location
*LELocationApi* | [**Invoke-LEDeleteLocations**](docs/LELocationApi.md#Invoke-LEDeleteLocations) | **DELETE** /v7/locations | Delete multiple locations
*LELocationApi* | [**Get-LELocation**](docs/LELocationApi.md#Get-LELocation) | **GET** /v7/locations/{locationId} | Get location by id
*LELocationApi* | [**Get-LELocations**](docs/LELocationApi.md#Get-LELocations) | **GET** /v7/locations | Get paginated list of locations
*LELocationApi* | [**Update-LELocation**](docs/LELocationApi.md#Update-LELocation) | **PUT** /v7/locations/{locationId} | Update location
*LEMeasurementApi* | [**Get-LEMeasurements**](docs/LEMeasurementApi.md#Get-LEMeasurements) | **GET** /v7/test-runs/{testRunId}/measurements | Get paginated list of measurements by test-run id
*LEMeasurementApi* | [**Get-LEMeasurementsByAppExecution**](docs/LEMeasurementApi.md#Get-LEMeasurementsByAppExecution) | **GET** /v7/test-runs/{testRunId}/app-executions/{appExecutionId}/measurements | Get paginated list of measurements by app-execution id
*LEMeasurementApi* | [**Get-LEMeasurementsByUserSession**](docs/LEMeasurementApi.md#Get-LEMeasurementsByUserSession) | **GET** /v7/test-runs/{testRunId}/user-sessions/{userSessionId}/measurements | Get paginated list of measurements by user-session id
*LENotificationApi* | [**New-LEContinuousTestNotification**](docs/LENotificationApi.md#New-LEContinuousTestNotification) | **POST** /v7/tests/{testId}/notifications | Create test-notification
*LENotificationApi* | [**Invoke-LEDeleteContinuousTestNotification**](docs/LENotificationApi.md#Invoke-LEDeleteContinuousTestNotification) | **DELETE** /v7/tests/{testId}/notifications/{notificationId} | Delete test-notification
*LENotificationApi* | [**Get-LEContinuousTestNotifications**](docs/LENotificationApi.md#Get-LEContinuousTestNotifications) | **GET** /v7/tests/{testId}/notifications | Get list of test-notification
*LENotificationApi* | [**Update-LEContinuousTestNotification**](docs/LENotificationApi.md#Update-LEContinuousTestNotification) | **PUT** /v7/tests/{testId}/notifications/{notificationId} | Update test-notification
*LEPermissionApi* | [**Get-LEAllPermissions**](docs/LEPermissionApi.md#Get-LEAllPermissions) | **GET** /v7/auth/permissions | Get list of all permissions
*LEPermissionApi* | [**Get-LEPermissionsForCallingUser**](docs/LEPermissionApi.md#Get-LEPermissionsForCallingUser) | **GET** /v7/auth/permissions/self | Get permissions for calling user
*LEPlatformMetricsApi* | [**Add-LEPlatformMetrics**](docs/LEPlatformMetricsApi.md#Add-LEPlatformMetrics) | **POST** /v7/platform-metrics | Adds a collection of platform metrics for a specified environment.
*LEPlatformMetricsApi* | [**Get-LEPlatformMetrics**](docs/LEPlatformMetricsApi.md#Get-LEPlatformMetrics) | **GET** /v7/platform-metrics | Retrieves a collection of platform metrics based on the specified filters.
*LEProviderApi* | [**New-LEProvider**](docs/LEProviderApi.md#New-LEProvider) | **POST** /v7/providers | Create provider
*LEProviderApi* | [**Invoke-LEDeleteProvider**](docs/LEProviderApi.md#Invoke-LEDeleteProvider) | **DELETE** /v7/providers/{providerId} | Delete provider
*LEProviderApi* | [**Get-LEProviderById**](docs/LEProviderApi.md#Get-LEProviderById) | **GET** /v7/providers/{providerId} | Get provider by id
*LEProviderApi* | [**Get-LEProviders**](docs/LEProviderApi.md#Get-LEProviders) | **GET** /v7/providers | Get a list of providers
*LEProviderApi* | [**Test-LEProviderConnection**](docs/LEProviderApi.md#Test-LEProviderConnection) | **POST** /v7/providers/test-connection | Test provider connection
*LEProviderApi* | [**Update-LEProvider**](docs/LEProviderApi.md#Update-LEProvider) | **PUT** /v7/providers/{providerId} | Update provider
*LEReportApi* | [**Invoke-LEDownloadApplicationTestReport**](docs/LEReportApi.md#Invoke-LEDownloadApplicationTestReport) | **GET** /v7/test-runs/{testRunId}/reports/pdf | Download application-test report PDF file by test-run id
*LEReportApi* | [**Invoke-LEDownloadContinuousTestReport**](docs/LEReportApi.md#Invoke-LEDownloadContinuousTestReport) | **GET** /v7/reports/{reportId}/pdf | Download report PDF file by report id
*LEReportApi* | [**Invoke-LEDownloadLoadTestPdfReport**](docs/LEReportApi.md#Invoke-LEDownloadLoadTestPdfReport) | **GET** /v7/reports/load-test-runs/pdf | Download load test report pdf file by list of test run id
*LEReportApi* | [**Get-LEApplicationTestReport**](docs/LEReportApi.md#Get-LEApplicationTestReport) | **GET** /v7/test-runs/{testRunId}/reports | Get application-test report by test-run id
*LEReportApi* | [**Get-LEContinuousTestReport**](docs/LEReportApi.md#Get-LEContinuousTestReport) | **GET** /v7/reports/{reportId} | Get report by id
*LEReportApi* | [**Get-LEContinuousTestReports**](docs/LEReportApi.md#Get-LEContinuousTestReports) | **GET** /v7/tests/{testId}/report-configurations/{configurationId}/reports | Get paginated list of continuous-test reports by configuration id
*LEReportConfigurationApi* | [**Get-LEAllReportConfigurations**](docs/LEReportConfigurationApi.md#Get-LEAllReportConfigurations) | **GET** /v7/report-configurations | Get paginated list of all report-configurations
*LEReportConfigurationByTestApi* | [**New-LEReportConfiguration**](docs/LEReportConfigurationByTestApi.md#New-LEReportConfiguration) | **POST** /v7/tests/{testId}/report-configurations | Create report-configuration
*LEReportConfigurationByTestApi* | [**New-LEReportConfigurationThreshold**](docs/LEReportConfigurationByTestApi.md#New-LEReportConfigurationThreshold) | **POST** /v7/tests/{testId}/report-configurations/{configurationId}/thresholds | Create report-configuration app-threshold
*LEReportConfigurationByTestApi* | [**Invoke-LEDeleteReportConfiguration**](docs/LEReportConfigurationByTestApi.md#Invoke-LEDeleteReportConfiguration) | **DELETE** /v7/tests/{testId}/report-configurations/{configurationId} | Delete report-configuration
*LEReportConfigurationByTestApi* | [**Invoke-LEDeleteReportConfigurationLogo**](docs/LEReportConfigurationByTestApi.md#Invoke-LEDeleteReportConfigurationLogo) | **DELETE** /v7/tests/{testId}/report-configurations/{configurationId}/logo | Delete report-configuration logo
*LEReportConfigurationByTestApi* | [**Invoke-LEDeleteReportConfigurationThreshold**](docs/LEReportConfigurationByTestApi.md#Invoke-LEDeleteReportConfigurationThreshold) | **DELETE** /v7/tests/{testId}/report-configurations/{configurationId}/thresholds/{thresholdId} | Delete report-configuration threshold
*LEReportConfigurationByTestApi* | [**Invoke-LEDeleteReportConfigurationThresholds**](docs/LEReportConfigurationByTestApi.md#Invoke-LEDeleteReportConfigurationThresholds) | **DELETE** /v7/tests/{testId}/report-configurations/{configurationId}/thresholds | Delete multiple report-configuration thresholds
*LEReportConfigurationByTestApi* | [**Invoke-LEDeleteReportConfigurations**](docs/LEReportConfigurationByTestApi.md#Invoke-LEDeleteReportConfigurations) | **DELETE** /v7/tests/{testId}/report-configurations | Delete multiple report-configuration
*LEReportConfigurationByTestApi* | [**Get-LEReportConfiguration**](docs/LEReportConfigurationByTestApi.md#Get-LEReportConfiguration) | **GET** /v7/tests/{testId}/report-configurations/{configurationId} | Get report-configuration by id
*LEReportConfigurationByTestApi* | [**Get-LEReportConfigurationLogo**](docs/LEReportConfigurationByTestApi.md#Get-LEReportConfigurationLogo) | **GET** /v7/tests/{testId}/report-configurations/{configurationId}/logo | Get report-configuration logo
*LEReportConfigurationByTestApi* | [**Get-LEReportConfigurations**](docs/LEReportConfigurationByTestApi.md#Get-LEReportConfigurations) | **GET** /v7/tests/{testId}/report-configurations | Get paginated list of report-configurations
*LEReportConfigurationByTestApi* | [**Invoke-LEReplaceReportConfigurationThresholds**](docs/LEReportConfigurationByTestApi.md#Invoke-LEReplaceReportConfigurationThresholds) | **PUT** /v7/tests/{testId}/report-configurations/{configurationId}/thresholds | Replace report-configuration app-thresholds
*LEReportConfigurationByTestApi* | [**Request-LEReport**](docs/LEReportConfigurationByTestApi.md#Request-LEReport) | **POST** /v7/tests/{testId}/report-configurations/{configurationId}/report-request | Request report by report-configuration id
*LEReportConfigurationByTestApi* | [**Update-LEReportConfiguration**](docs/LEReportConfigurationByTestApi.md#Update-LEReportConfiguration) | **PUT** /v7/tests/{testId}/report-configurations/{configurationId} | Update report-configuration
*LEReportConfigurationByTestApi* | [**Update-LEReportConfigurationLogo**](docs/LEReportConfigurationByTestApi.md#Update-LEReportConfigurationLogo) | **PUT** /v7/tests/{testId}/report-configurations/{configurationId}/logo | Upload report-configuration logo (supported file types: .png/.svg/.jpg/.jpeg)
*LEReportConfigurationByTestApi* | [**Update-LEReportConfigurationThreshold**](docs/LEReportConfigurationByTestApi.md#Update-LEReportConfigurationThreshold) | **PUT** /v7/tests/{testId}/report-configurations/{configurationId}/thresholds/{thresholdId} | Update report-configuration threshold
*LERoleApi* | [**New-LERole**](docs/LERoleApi.md#New-LERole) | **POST** /v7/auth/roles | Create a role
*LERoleApi* | [**Invoke-LEDeleteRole**](docs/LERoleApi.md#Invoke-LEDeleteRole) | **DELETE** /v7/auth/roles/{roleId} | Delete a role
*LERoleApi* | [**Get-LEAllRoles**](docs/LERoleApi.md#Get-LEAllRoles) | **GET** /v7/auth/roles | Get paginated list of all roles
*LERoleApi* | [**Get-LERoleById**](docs/LERoleApi.md#Get-LERoleById) | **GET** /v7/auth/roles/{roleId} | Get role by id
*LERoleApi* | [**Get-LERolesForCallingUser**](docs/LERoleApi.md#Get-LERolesForCallingUser) | **GET** /v7/auth/roles/self | Get roles for calling user
*LERoleApi* | [**Update-LERole**](docs/LERoleApi.md#Update-LERole) | **PUT** /v7/auth/roles/{roleId} | Update Role
*LEScreenshotApi* | [**Get-LEScreenshotByAppExecution**](docs/LEScreenshotApi.md#Get-LEScreenshotByAppExecution) | **GET** /v7/test-runs/{testRunId}/app-executions/{appExecutionId}/screenshots/{screenshotId} | Get screenshot by app-execution id and screenshot id
*LEScreenshotApi* | [**Get-LEScreenshotByEvent**](docs/LEScreenshotApi.md#Get-LEScreenshotByEvent) | **GET** /v7/test-runs/{testRunId}/events/{eventId}/screenshots | Get screenshot by event id
*LEScreenshotApi* | [**Get-LEScreenshotsByAppExecution**](docs/LEScreenshotApi.md#Get-LEScreenshotsByAppExecution) | **GET** /v7/test-runs/{testRunId}/app-executions/{appExecutionId}/screenshots | Get list of screenshot by app-execution id
*LEScriptApi* | [**New-LEScript**](docs/LEScriptApi.md#New-LEScript) | **POST** /v7/applications/{applicationId}/script | Create script via a text or file payload
*LEScriptApi* | [**Get-LEScript**](docs/LEScriptApi.md#Get-LEScript) | **GET** /v7/applications/{applicationId}/script | Get script content by application id
*LESessionMetricDefinitionGroupMembersApi* | [**Add-LESessionMetricGroupMembers**](docs/LESessionMetricDefinitionGroupMembersApi.md#Add-LESessionMetricGroupMembers) | **POST** /v7/session-metric-definition-groups/{groupId}/members | Add members to session metric group
*LESessionMetricDefinitionGroupMembersApi* | [**Get-LEMetricGroupMembers**](docs/LESessionMetricDefinitionGroupMembersApi.md#Get-LEMetricGroupMembers) | **GET** /v7/session-metric-definition-groups/{groupId}/members | Get paginated list of user session metric group members
*LESessionMetricDefinitionGroupMembersApi* | [**Remove-LESessionMetricGroupMembers**](docs/LESessionMetricDefinitionGroupMembersApi.md#Remove-LESessionMetricGroupMembers) | **DELETE** /v7/session-metric-definition-groups/{groupId}/members | Remove members from user session metric group
*LESessionMetricDefinitionGroupMembersApi* | [**Set-LESessionMetricDefinitionGroupMembers**](docs/LESessionMetricDefinitionGroupMembersApi.md#Set-LESessionMetricDefinitionGroupMembers) | **PUT** /v7/session-metric-definition-groups/{groupId}/members | Replace members in session metric group
*LESessionMetricDefinitionGroupsApi* | [**Add-LESessionMetricGroupDefinitionToTests**](docs/LESessionMetricDefinitionGroupsApi.md#Add-LESessionMetricGroupDefinitionToTests) | **PUT** /v7/session-metric-definition-groups/{groupId}/tests | Add tests to a session metric definition group
*LESessionMetricDefinitionGroupsApi* | [**New-LEUserSessionMetricGroup**](docs/LESessionMetricDefinitionGroupsApi.md#New-LEUserSessionMetricGroup) | **POST** /v7/session-metric-definition-groups | Create user session metric group
*LESessionMetricDefinitionGroupsApi* | [**Invoke-LEDeleteUserSessionMetricGroup**](docs/LESessionMetricDefinitionGroupsApi.md#Invoke-LEDeleteUserSessionMetricGroup) | **DELETE** /v7/session-metric-definition-groups/{groupId} | Delete user session metric group
*LESessionMetricDefinitionGroupsApi* | [**Get-LETestsBySessionMetricDefinitionGroup**](docs/LESessionMetricDefinitionGroupsApi.md#Get-LETestsBySessionMetricDefinitionGroup) | **GET** /v7/session-metric-definition-groups/tests | Get tests by session-metric-group key
*LESessionMetricDefinitionGroupsApi* | [**Get-LEUserSessionMetricGroup**](docs/LESessionMetricDefinitionGroupsApi.md#Get-LEUserSessionMetricGroup) | **GET** /v7/session-metric-definition-groups/{groupId} | Get user session metric group by id
*LESessionMetricDefinitionGroupsApi* | [**Get-LEUserSessionMetricGroups**](docs/LESessionMetricDefinitionGroupsApi.md#Get-LEUserSessionMetricGroups) | **GET** /v7/session-metric-definition-groups | Get paginated list of user session metric group
*LESessionMetricDefinitionGroupsApi* | [**Remove-LESessionMetricDefinitionGroupFromTests**](docs/LESessionMetricDefinitionGroupsApi.md#Remove-LESessionMetricDefinitionGroupFromTests) | **DELETE** /v7/session-metric-definition-groups/{groupId}/tests | Delete tests from environment
*LESessionMetricDefinitionGroupsApi* | [**Update-LEUserSessionMetricGroup**](docs/LESessionMetricDefinitionGroupsApi.md#Update-LEUserSessionMetricGroup) | **PUT** /v7/session-metric-definition-groups/{groupId} | Update user session metric group
*LEStatisticApi* | [**Get-LEApplicationDiagnostics**](docs/LEStatisticApi.md#Get-LEApplicationDiagnostics) | **GET** /v7/tests/{testId}/application-diagnostics | Get application diagnostics by test id
*LEStatisticApi* | [**Get-LEContinuousTestDiagnostic**](docs/LEStatisticApi.md#Get-LEContinuousTestDiagnostic) | **GET** /v7/tests/{testId}/test-diagnostics | Get continuous test diagnostic by test id
*LEStatisticApi* | [**Get-LEContinuousTestDiagnostics**](docs/LEStatisticApi.md#Get-LEContinuousTestDiagnostics) | **GET** /v7/test-diagnostics | Get continuous test diagnostics
*LESystemApi* | [**Get-LESystemEuxVersion**](docs/LESystemApi.md#Get-LESystemEuxVersion) | **GET** /v7/system/eux-version | Get eux version of system
*LESystemApi* | [**Get-LESystemVersions**](docs/LESystemApi.md#Get-LESystemVersions) | **GET** /v7/system/version | Get current and latest versions of system
*LETestApi* | [**Invoke-LEBulkDisableUpdate**](docs/LETestApi.md#Invoke-LEBulkDisableUpdate) | **PATCH** /v7/tests/disable | Bulk disable tests
*LETestApi* | [**Invoke-LEBulkEnableUpdate**](docs/LETestApi.md#Invoke-LEBulkEnableUpdate) | **PATCH** /v7/tests/enable | Bulk enable tests
*LETestApi* | [**Copy-LETest**](docs/LETestApi.md#Copy-LETest) | **POST** /v7/tests/{testId}/copy | Copy test
*LETestApi* | [**New-LETest**](docs/LETestApi.md#New-LETest) | **POST** /v7/tests | Create test
*LETestApi* | [**Invoke-LEDeleteTest**](docs/LETestApi.md#Invoke-LEDeleteTest) | **DELETE** /v7/tests/{testId} | Delete test
*LETestApi* | [**Invoke-LEDeleteTests**](docs/LETestApi.md#Invoke-LEDeleteTests) | **DELETE** /v7/tests | Delete multiple tests
*LETestApi* | [**Get-LEActiveTimeSlots**](docs/LETestApi.md#Get-LEActiveTimeSlots) | **GET** /v7/tests/{testId}/active-time-slots | Get active time slots
*LETestApi* | [**Get-LETest**](docs/LETestApi.md#Get-LETest) | **GET** /v7/tests/{testId} | Get test by id
*LETestApi* | [**Get-LETests**](docs/LETestApi.md#Get-LETests) | **GET** /v7/tests | Get paginated list of tests
*LETestApi* | [**Get-LETestsByAccountGroup**](docs/LETestApi.md#Get-LETestsByAccountGroup) | **GET** /v7/tests/account-groups/{groupId} | Get list of tests by account group
*LETestApi* | [**Get-LETestsByApplicationGroup**](docs/LETestApi.md#Get-LETestsByApplicationGroup) | **GET** /v7/tests/application-groups/{groupId} | Get list of tests by application group
*LETestApi* | [**Get-LETestsByApplicationId**](docs/LETestApi.md#Get-LETestsByApplicationId) | **GET** /v7/tests/applications/{applicationId} | Get all tests by application id
*LETestApi* | [**Get-LETestsByLauncherGroup**](docs/LETestApi.md#Get-LETestsByLauncherGroup) | **GET** /v7/tests/launcher-groups/{groupId} | Get list of tests by launcher group
*LETestApi* | [**Start-LETest**](docs/LETestApi.md#Start-LETest) | **PUT** /v7/tests/{testId}/start | Start test
*LETestApi* | [**Stop-LETest**](docs/LETestApi.md#Stop-LETest) | **PUT** /v7/tests/{testId}/stop | Stop test
*LETestApi* | [**Update-LEActiveTimeSlots**](docs/LETestApi.md#Update-LEActiveTimeSlots) | **PUT** /v7/tests/{testId}/active-time-slots | Update active time slots
*LETestApi* | [**Update-LETest**](docs/LETestApi.md#Update-LETest) | **PUT** /v7/tests/{testId} | Update test
*LETestAccessApi* | [**Invoke-LEBulkAddTestAccess**](docs/LETestAccessApi.md#Invoke-LEBulkAddTestAccess) | **POST** /v7/tests/access | This endpoint allows you to add roles to the access control list of a collection of tests.
*LETestAccessApi* | [**Invoke-LEBulkReplaceTestAccess**](docs/LETestAccessApi.md#Invoke-LEBulkReplaceTestAccess) | **PUT** /v7/tests/access | This endpoint allows you to replace the access control list of a collection of tests.
*LETestAccessApi* | [**Get-LETestAccess**](docs/LETestAccessApi.md#Get-LETestAccess) | **GET** /v7/tests/{testId}/access | This endpoint allows you to retrieve the access control list of a single test.
*LETestAccessApi* | [**Get-LETestsByRole**](docs/LETestAccessApi.md#Get-LETestsByRole) | **GET** /v7/tests/role | This endpoint allows you to retrieve the IDs of test assigned to a role.
*LETestAccessApi* | [**Update-LETestAccess**](docs/LETestAccessApi.md#Update-LETestAccess) | **PUT** /v7/tests/{testId}/access | This endpoint allows you to update the access control list of a single test.
*LETestRunApi* | [**Invoke-LEBulkAddTestRunAccess**](docs/LETestRunApi.md#Invoke-LEBulkAddTestRunAccess) | **POST** /v7/test-runs/access | This endpoint allows you to add roles to the access control list of a collection of test-runs.
*LETestRunApi* | [**Invoke-LEBulkReplaceTestRunAccess**](docs/LETestRunApi.md#Invoke-LEBulkReplaceTestRunAccess) | **PUT** /v7/test-runs/access | This endpoint allows you to replace the access control list of a collection of test-runs.
*LETestRunApi* | [**Invoke-LEDeleteTestRuns**](docs/LETestRunApi.md#Invoke-LEDeleteTestRuns) | **DELETE** /v7/tests/test-runs | Delete test runs
*LETestRunApi* | [**Get-LEAllTestRuns**](docs/LETestRunApi.md#Get-LEAllTestRuns) | **GET** /v7/tests/test-runs | Get paginated list of all test-runs
*LETestRunApi* | [**Get-LEApplicationChart**](docs/LETestRunApi.md#Get-LEApplicationChart) | **GET** /v7/chart/application | Get the application chart for the load test runs with metric definitions and test run results
*LETestRunApi* | [**Get-LEApplicationTestResultOverview**](docs/LETestRunApi.md#Get-LEApplicationTestResultOverview) | **GET** /v7/application-test-run-overview/{testRunId} | Get the application test run overview
*LETestRunApi* | [**Get-LEContinuesTestUserSessionMetricsAggregated**](docs/LETestRunApi.md#Get-LEContinuesTestUserSessionMetricsAggregated) | **GET** /v7/test-runs/{testRunId}/aggregated-continuous-test-user-session-metrics | Get the user session metrics result for a continuous test collected within the ""from"" and ""to"" parameters,  and aggregate them per minute and per hour.
*LETestRunApi* | [**Get-LEEuxAggregatedPerHourResults**](docs/LETestRunApi.md#Get-LEEuxAggregatedPerHourResults) | **GET** /v7/test-runs/{testRunId}/aggregated-eux-results | Get the eux results for a load test-run or continuous test collected within the ""from"" and ""to"" parameters,  and aggregate them per hour.
*LETestRunApi* | [**Get-LEEuxChartData**](docs/LETestRunApi.md#Get-LEEuxChartData) | **GET** /v7/chart/eux | Get the eux chart for the load test runs with metric definitions and test run results
*LETestRunApi* | [**Get-LEEuxResults**](docs/LETestRunApi.md#Get-LEEuxResults) | **GET** /v7/test-runs/{testRunId}/eux-results | Get eux-results for a given Load test-run and Continuous test-run
*LETestRunApi* | [**Get-LEEuxScriptExecutions**](docs/LETestRunApi.md#Get-LEEuxScriptExecutions) | **GET** /v7/test-runs/{testRunId}/eux-script-executions | Get eux-script-executions (raw-data) for a given Load test-run and Continuous test-run
*LETestRunApi* | [**Get-LEEuxTimerAggregatedPerHourResults**](docs/LETestRunApi.md#Get-LEEuxTimerAggregatedPerHourResults) | **GET** /v7/test-runs/{testRunId}/aggregated-eux-timer-results | Get the eux timer results for a load test-run or continuous test collected within the ""from"" and ""to"" parameters,  and aggregate them per hour.
*LETestRunApi* | [**Get-LEEuxTimerResults**](docs/LETestRunApi.md#Get-LEEuxTimerResults) | **GET** /v7/test-runs/{testRunId}/eux-timer-results | Get eux-timer-results for a given Load test-run and Continuous test-run
*LETestRunApi* | [**Get-LELoadTestResultOverview**](docs/LETestRunApi.md#Get-LELoadTestResultOverview) | **GET** /v7/load-test-run-overview/{baseTestRunId} | Get the load test run overview with metric definitions and test run results
*LETestRunApi* | [**Get-LELoadTestRunStatistics**](docs/LETestRunApi.md#Get-LELoadTestRunStatistics) | **GET** /v7/test-runs/{testRunId}/statistics | Get Statistics results for a given Load test-run
*LETestRunApi* | [**Get-LELoadTestUserSessionMetricsAggregated**](docs/LETestRunApi.md#Get-LELoadTestUserSessionMetricsAggregated) | **GET** /v7/test-runs/{testRunId}/aggregated-load-test-user-session-metrics | Get the user session metrics result for a load test-run or continuous test collected within the ""from"" and ""to"" parameters,  and aggregate them per minute.
*LETestRunApi* | [**Get-LELoginTimeChart**](docs/LETestRunApi.md#Get-LELoginTimeChart) | **GET** /v7/chart/login-time | Get the login time chart for the load test runs with metric definitions and test run results
*LETestRunApi* | [**Get-LESessionMetricChart**](docs/LETestRunApi.md#Get-LESessionMetricChart) | **GET** /v7/chart/session-metric | Get the session metric chart for the load test runs with metric definitions and test run results
*LETestRunApi* | [**Get-LETestRun**](docs/LETestRunApi.md#Get-LETestRun) | **GET** /v7/test-runs/{testRunId} | Get test-run by id
*LETestRunApi* | [**Get-LETestRuns**](docs/LETestRunApi.md#Get-LETestRuns) | **GET** /v7/tests/{testId}/test-runs | Get paginated list of test-runs
*LETestRunApi* | [**Get-LETestRunsByRole**](docs/LETestRunApi.md#Get-LETestRunsByRole) | **GET** /v7/test-runs/role | This endpoint allows you to retrieve the IDs of test-runs assigned to a role.
*LETestRunApi* | [**Update-LEComment**](docs/LETestRunApi.md#Update-LEComment) | **PUT** /v7/test-runs/{testRunId}/comment | Update comment
*LEThresholdApi* | [**New-LEApplicationTestThreshold**](docs/LEThresholdApi.md#New-LEApplicationTestThreshold) | **POST** /v7/tests/{testId}/thresholds | Create threshold
*LEThresholdApi* | [**Invoke-LEDeleteApplicationTestThreshold**](docs/LEThresholdApi.md#Invoke-LEDeleteApplicationTestThreshold) | **DELETE** /v7/tests/{testId}/thresholds/{thresholdId} | Delete threshold
*LEThresholdApi* | [**Get-LEApplicationTestThresholds**](docs/LEThresholdApi.md#Get-LEApplicationTestThresholds) | **GET** /v7/tests/{testId}/thresholds | Get list of thresholds by test id
*LEThresholdApi* | [**Update-LEApplicationTestThreshold**](docs/LEThresholdApi.md#Update-LEApplicationTestThreshold) | **PUT** /v7/tests/{testId}/thresholds/{thresholdId} | Update threshold
*LEUserApi* | [**New-LEUser**](docs/LEUserApi.md#New-LEUser) | **POST** /v7/auth/users | Create a user
*LEUserApi* | [**Invoke-LEDeleteUser**](docs/LEUserApi.md#Invoke-LEDeleteUser) | **DELETE** /v7/auth/users/{userId} | Delete a user
*LEUserApi* | [**Get-LEAllUsers**](docs/LEUserApi.md#Get-LEAllUsers) | **GET** /v7/auth/users | Get paginated list of all users
*LEUserApi* | [**Get-LEUserById**](docs/LEUserApi.md#Get-LEUserById) | **GET** /v7/auth/users/{userId} | Get user by id
*LEUserApi* | [**Update-LEUser**](docs/LEUserApi.md#Update-LEUser) | **PUT** /v7/auth/users/{userId} | Update User
*LEUserSessionApi* | [**Get-LEUserSession**](docs/LEUserSessionApi.md#Get-LEUserSession) | **GET** /v7/test-runs/{testRunId}/user-sessions/{userSessionId} | Get user-session by id
*LEUserSessionApi* | [**Get-LEUserSessions**](docs/LEUserSessionApi.md#Get-LEUserSessions) | **GET** /v7/test-runs/{testRunId}/user-sessions | Get paginated list of user-sessions
*LEUserSessionMetricDefinitionApi* | [**New-LEUserSessionMetricDefinition**](docs/LEUserSessionMetricDefinitionApi.md#New-LEUserSessionMetricDefinition) | **POST** /v7/user-session-metric-definitions | Create user session metric definition
*LEUserSessionMetricDefinitionApi* | [**Invoke-LEDeleteUserSessionMetricDefinition**](docs/LEUserSessionMetricDefinitionApi.md#Invoke-LEDeleteUserSessionMetricDefinition) | **DELETE** /v7/user-session-metric-definitions/{definitionId} | Delete user session metric definition
*LEUserSessionMetricDefinitionApi* | [**Get-LEUserSessionMetricDefinitionByKey**](docs/LEUserSessionMetricDefinitionApi.md#Get-LEUserSessionMetricDefinitionByKey) | **GET** /v7/user-session-metric-definitions/{definitionId} | Get a user session metric definition by Id
*LEUserSessionMetricDefinitionApi* | [**Get-LEUserSessionMetricDefinitions**](docs/LEUserSessionMetricDefinitionApi.md#Get-LEUserSessionMetricDefinitions) | **GET** /v7/user-session-metric-definitions | Get paginated user session metric definitions
*LEUserSessionMetricDefinitionApi* | [**Update-LEUserSessionMetricDefinition**](docs/LEUserSessionMetricDefinitionApi.md#Update-LEUserSessionMetricDefinition) | **PUT** /v7/user-session-metric-definitions/{definitionId} | Update user session metric definition
*LEUserSessionMetricsApi* | [**Get-LEUserSessionMetrics**](docs/LEUserSessionMetricsApi.md#Get-LEUserSessionMetrics) | **GET** /v7/user-session-metrics/{testRunId} | Get list of user session metrics
*LEWebAutomationDriversApi* | [**Invoke-LECheckUpdateDriverVersions**](docs/LEWebAutomationDriversApi.md#Invoke-LECheckUpdateDriverVersions) | **GET** /v7/web-automation-drivers/status | Get list of the current and missing web automation drivers
*LEWebAutomationDriversApi* | [**Set-LEAutomaticWebDriverUpdate**](docs/LEWebAutomationDriversApi.md#Set-LEAutomaticWebDriverUpdate) | **PUT** /v7/web-automation-drivers/automatic-update/configure | Update Driver Update Config
*LEWebAutomationDriversApi* | [**Invoke-LEDownloadLatestWebAutomationDrivers**](docs/LEWebAutomationDriversApi.md#Invoke-LEDownloadLatestWebAutomationDrivers) | **GET** /v7/web-automation-drivers/download | Download the latest web automation drivers
*LEWebAutomationDriversApi* | [**Get-LEWebDriverUpdateInfo**](docs/LEWebAutomationDriversApi.md#Get-LEWebDriverUpdateInfo) | **GET** /v7/web-automation-drivers/automatic-update/configure | Get Driver Update Config
*LEWorkloadApi* | [**New-LETestWorkloadSteps**](docs/LEWorkloadApi.md#New-LETestWorkloadSteps) | **POST** /v7/tests/{testId}/workload | Add test-workload steps
*LEWorkloadApi* | [**Invoke-LEDeleteTestWorkloadStep**](docs/LEWorkloadApi.md#Invoke-LEDeleteTestWorkloadStep) | **DELETE** /v7/tests/{testId}/workload/{stepId} | Remove test-workload step
*LEWorkloadApi* | [**Invoke-LEDeleteTestWorkloadSteps**](docs/LEWorkloadApi.md#Invoke-LEDeleteTestWorkloadSteps) | **DELETE** /v7/tests/{testId}/workload | Remove test-workload steps
*LEWorkloadApi* | [**Get-LETestWorkload**](docs/LEWorkloadApi.md#Get-LETestWorkload) | **GET** /v7/tests/{testId}/workload | Get test-workload by test id
*LEWorkloadApi* | [**Invoke-LEReplaceTestWorkloadSteps**](docs/LEWorkloadApi.md#Invoke-LEReplaceTestWorkloadSteps) | **PUT** /v7/tests/{testId}/workload | Replace test-workload steps
*LEWorkloadApi* | [**Update-LETestWorkloadStep**](docs/LEWorkloadApi.md#Update-LETestWorkloadStep) | **PUT** /v7/tests/{testId}/workload/{stepId} | Update test-workload step


## Documentation for Models

 - [PSLoginEnterprise\Model.Account](docs/Account.md)
 - [PSLoginEnterprise\Model.AccountBulkCreate](docs/AccountBulkCreate.md)
 - [PSLoginEnterprise\Model.AccountCreate](docs/AccountCreate.md)
 - [PSLoginEnterprise\Model.AccountEnabledUpdate](docs/AccountEnabledUpdate.md)
 - [PSLoginEnterprise\Model.AccountField](docs/AccountField.md)
 - [PSLoginEnterprise\Model.AccountFilterGroup](docs/AccountFilterGroup.md)
 - [PSLoginEnterprise\Model.AccountFilterGroupCreate](docs/AccountFilterGroupCreate.md)
 - [PSLoginEnterprise\Model.AccountFilterGroupUpdate](docs/AccountFilterGroupUpdate.md)
 - [PSLoginEnterprise\Model.AccountGroup](docs/AccountGroup.md)
 - [PSLoginEnterprise\Model.AccountGroupCreate](docs/AccountGroupCreate.md)
 - [PSLoginEnterprise\Model.AccountGroupInclude](docs/AccountGroupInclude.md)
 - [PSLoginEnterprise\Model.AccountGroupMemberEnabledUpdate](docs/AccountGroupMemberEnabledUpdate.md)
 - [PSLoginEnterprise\Model.AccountGroupResultSet](docs/AccountGroupResultSet.md)
 - [PSLoginEnterprise\Model.AccountGroupSortKey](docs/AccountGroupSortKey.md)
 - [PSLoginEnterprise\Model.AccountGroupType](docs/AccountGroupType.md)
 - [PSLoginEnterprise\Model.AccountGroupUpdate](docs/AccountGroupUpdate.md)
 - [PSLoginEnterprise\Model.AccountResultSet](docs/AccountResultSet.md)
 - [PSLoginEnterprise\Model.AccountSelectionGroup](docs/AccountSelectionGroup.md)
 - [PSLoginEnterprise\Model.AccountSelectionGroupCreate](docs/AccountSelectionGroupCreate.md)
 - [PSLoginEnterprise\Model.AccountSelectionGroupUpdate](docs/AccountSelectionGroupUpdate.md)
 - [PSLoginEnterprise\Model.AccountSortKey](docs/AccountSortKey.md)
 - [PSLoginEnterprise\Model.AccountUpdate](docs/AccountUpdate.md)
 - [PSLoginEnterprise\Model.ActiveTimeSlots](docs/ActiveTimeSlots.md)
 - [PSLoginEnterprise\Model.ActiveTimeSlotsUpdate](docs/ActiveTimeSlotsUpdate.md)
 - [PSLoginEnterprise\Model.AddPlatformMetricsResult](docs/AddPlatformMetricsResult.md)
 - [PSLoginEnterprise\Model.AddPlatformMetricsStatus](docs/AddPlatformMetricsStatus.md)
 - [PSLoginEnterprise\Model.Affected](docs/Affected.md)
 - [PSLoginEnterprise\Model.AppExecution](docs/AppExecution.md)
 - [PSLoginEnterprise\Model.AppExecutionResultSet](docs/AppExecutionResultSet.md)
 - [PSLoginEnterprise\Model.AppExecutionState](docs/AppExecutionState.md)
 - [PSLoginEnterprise\Model.AppGroupReference](docs/AppGroupReference.md)
 - [PSLoginEnterprise\Model.AppGroupReferenceCreate](docs/AppGroupReferenceCreate.md)
 - [PSLoginEnterprise\Model.AppGroupReferenceUpdate](docs/AppGroupReferenceUpdate.md)
 - [PSLoginEnterprise\Model.AppGroupSnapshot](docs/AppGroupSnapshot.md)
 - [PSLoginEnterprise\Model.AppGroupSnapshotAllOfGroupSteps](docs/AppGroupSnapshotAllOfGroupSteps.md)
 - [PSLoginEnterprise\Model.AppInvocation](docs/AppInvocation.md)
 - [PSLoginEnterprise\Model.AppInvocationAllOfApplication](docs/AppInvocationAllOfApplication.md)
 - [PSLoginEnterprise\Model.AppInvocationCreate](docs/AppInvocationCreate.md)
 - [PSLoginEnterprise\Model.AppInvocationSnapshot](docs/AppInvocationSnapshot.md)
 - [PSLoginEnterprise\Model.AppInvocationUpdate](docs/AppInvocationUpdate.md)
 - [PSLoginEnterprise\Model.AppPerformanceResult](docs/AppPerformanceResult.md)
 - [PSLoginEnterprise\Model.AppResponseTimeResults](docs/AppResponseTimeResults.md)
 - [PSLoginEnterprise\Model.AppTestRunConfigurationSnapshot](docs/AppTestRunConfigurationSnapshot.md)
 - [PSLoginEnterprise\Model.AppTestRunConfigurationSnapshotConnector](docs/AppTestRunConfigurationSnapshotConnector.md)
 - [PSLoginEnterprise\Model.AppTestRunConfigurationSnapshotThresholdsInner](docs/AppTestRunConfigurationSnapshotThresholdsInner.md)
 - [PSLoginEnterprise\Model.AppThreshold](docs/AppThreshold.md)
 - [PSLoginEnterprise\Model.AppThresholdCreate](docs/AppThresholdCreate.md)
 - [PSLoginEnterprise\Model.ApplianceHealthAlertSettings](docs/ApplianceHealthAlertSettings.md)
 - [PSLoginEnterprise\Model.ApplianceHealthMetricSeries](docs/ApplianceHealthMetricSeries.md)
 - [PSLoginEnterprise\Model.Application](docs/Application.md)
 - [PSLoginEnterprise\Model.ApplicationChartResult](docs/ApplicationChartResult.md)
 - [PSLoginEnterprise\Model.ApplicationCreate](docs/ApplicationCreate.md)
 - [PSLoginEnterprise\Model.ApplicationDetails](docs/ApplicationDetails.md)
 - [PSLoginEnterprise\Model.ApplicationDiagnostic](docs/ApplicationDiagnostic.md)
 - [PSLoginEnterprise\Model.ApplicationGroup](docs/ApplicationGroup.md)
 - [PSLoginEnterprise\Model.ApplicationGroupCreate](docs/ApplicationGroupCreate.md)
 - [PSLoginEnterprise\Model.ApplicationGroupInclude](docs/ApplicationGroupInclude.md)
 - [PSLoginEnterprise\Model.ApplicationGroupResultSet](docs/ApplicationGroupResultSet.md)
 - [PSLoginEnterprise\Model.ApplicationGroupSortKey](docs/ApplicationGroupSortKey.md)
 - [PSLoginEnterprise\Model.ApplicationGroupStepsInner](docs/ApplicationGroupStepsInner.md)
 - [PSLoginEnterprise\Model.ApplicationGroupUpdate](docs/ApplicationGroupUpdate.md)
 - [PSLoginEnterprise\Model.ApplicationInclude](docs/ApplicationInclude.md)
 - [PSLoginEnterprise\Model.ApplicationResultSet](docs/ApplicationResultSet.md)
 - [PSLoginEnterprise\Model.ApplicationResultStatus](docs/ApplicationResultStatus.md)
 - [PSLoginEnterprise\Model.ApplicationScreenshot](docs/ApplicationScreenshot.md)
 - [PSLoginEnterprise\Model.ApplicationSortKey](docs/ApplicationSortKey.md)
 - [PSLoginEnterprise\Model.ApplicationSummary](docs/ApplicationSummary.md)
 - [PSLoginEnterprise\Model.ApplicationTest](docs/ApplicationTest.md)
 - [PSLoginEnterprise\Model.ApplicationTestAllOfThresholds](docs/ApplicationTestAllOfThresholds.md)
 - [PSLoginEnterprise\Model.ApplicationTestAppThresholdSnapshot](docs/ApplicationTestAppThresholdSnapshot.md)
 - [PSLoginEnterprise\Model.ApplicationTestCreate](docs/ApplicationTestCreate.md)
 - [PSLoginEnterprise\Model.ApplicationTestData](docs/ApplicationTestData.md)
 - [PSLoginEnterprise\Model.ApplicationTestReport](docs/ApplicationTestReport.md)
 - [PSLoginEnterprise\Model.ApplicationTestResult](docs/ApplicationTestResult.md)
 - [PSLoginEnterprise\Model.ApplicationTestResultOverview](docs/ApplicationTestResultOverview.md)
 - [PSLoginEnterprise\Model.ApplicationTestRun](docs/ApplicationTestRun.md)
 - [PSLoginEnterprise\Model.ApplicationTestSessionThresholdSnapshot](docs/ApplicationTestSessionThresholdSnapshot.md)
 - [PSLoginEnterprise\Model.ApplicationTestState](docs/ApplicationTestState.md)
 - [PSLoginEnterprise\Model.ApplicationTestThresholdSnapshot](docs/ApplicationTestThresholdSnapshot.md)
 - [PSLoginEnterprise\Model.ApplicationTestUpdate](docs/ApplicationTestUpdate.md)
 - [PSLoginEnterprise\Model.ApplicationTimerResult](docs/ApplicationTimerResult.md)
 - [PSLoginEnterprise\Model.ApplicationUpdate](docs/ApplicationUpdate.md)
 - [PSLoginEnterprise\Model.BrowserName](docs/BrowserName.md)
 - [PSLoginEnterprise\Model.BuiltInMetricDefinition](docs/BuiltInMetricDefinition.md)
 - [PSLoginEnterprise\Model.BuiltInMetricMeasurementDefinition](docs/BuiltInMetricMeasurementDefinition.md)
 - [PSLoginEnterprise\Model.ChartMetricResult](docs/ChartMetricResult.md)
 - [PSLoginEnterprise\Model.ChartResult](docs/ChartResult.md)
 - [PSLoginEnterprise\Model.ConfigurationCreateAccountGroupRequest](docs/ConfigurationCreateAccountGroupRequest.md)
 - [PSLoginEnterprise\Model.ConfigurationCreateApplicationRequest](docs/ConfigurationCreateApplicationRequest.md)
 - [PSLoginEnterprise\Model.ConfigurationCreateLauncherGroupRequest](docs/ConfigurationCreateLauncherGroupRequest.md)
 - [PSLoginEnterprise\Model.ConfigurationCreateTestRequest](docs/ConfigurationCreateTestRequest.md)
 - [PSLoginEnterprise\Model.ConfigurationGetAccountGroup200Response](docs/ConfigurationGetAccountGroup200Response.md)
 - [PSLoginEnterprise\Model.ConfigurationGetApplication200Response](docs/ConfigurationGetApplication200Response.md)
 - [PSLoginEnterprise\Model.ConfigurationGetApplicationTestThresholds200ResponseInner](docs/ConfigurationGetApplicationTestThresholds200ResponseInner.md)
 - [PSLoginEnterprise\Model.ConfigurationGetContinuousTestNotifications200ResponseInner](docs/ConfigurationGetContinuousTestNotifications200ResponseInner.md)
 - [PSLoginEnterprise\Model.ConfigurationGetLauncherGroup200Response](docs/ConfigurationGetLauncherGroup200Response.md)
 - [PSLoginEnterprise\Model.ConfigurationGetTest200Response](docs/ConfigurationGetTest200Response.md)
 - [PSLoginEnterprise\Model.ConfigurationParseApplicationDetails200Response](docs/ConfigurationParseApplicationDetails200Response.md)
 - [PSLoginEnterprise\Model.ConfigurationReplaceApplicationGroupStepsRequestInner](docs/ConfigurationReplaceApplicationGroupStepsRequestInner.md)
 - [PSLoginEnterprise\Model.ConfigurationUpdateAccountGroupRequest](docs/ConfigurationUpdateAccountGroupRequest.md)
 - [PSLoginEnterprise\Model.ConfigurationUpdateApplicationRequest](docs/ConfigurationUpdateApplicationRequest.md)
 - [PSLoginEnterprise\Model.ConfigurationUpdateContinuousTestNotificationRequest](docs/ConfigurationUpdateContinuousTestNotificationRequest.md)
 - [PSLoginEnterprise\Model.ConfigurationUpdateStepInApplicationGroupRequest](docs/ConfigurationUpdateStepInApplicationGroupRequest.md)
 - [PSLoginEnterprise\Model.ConfigurationUpdateTestRequest](docs/ConfigurationUpdateTestRequest.md)
 - [PSLoginEnterprise\Model.ConnectionResources](docs/ConnectionResources.md)
 - [PSLoginEnterprise\Model.ConnectionResourcesUpdate](docs/ConnectionResourcesUpdate.md)
 - [PSLoginEnterprise\Model.Connector](docs/Connector.md)
 - [PSLoginEnterprise\Model.ContinuousScheduleType](docs/ContinuousScheduleType.md)
 - [PSLoginEnterprise\Model.ContinuousTest](docs/ContinuousTest.md)
 - [PSLoginEnterprise\Model.ContinuousTestAllOfAlertConfigurations](docs/ContinuousTestAllOfAlertConfigurations.md)
 - [PSLoginEnterprise\Model.ContinuousTestBulkUpdateResponse](docs/ContinuousTestBulkUpdateResponse.md)
 - [PSLoginEnterprise\Model.ContinuousTestCreate](docs/ContinuousTestCreate.md)
 - [PSLoginEnterprise\Model.ContinuousTestReport](docs/ContinuousTestReport.md)
 - [PSLoginEnterprise\Model.ContinuousTestRun](docs/ContinuousTestRun.md)
 - [PSLoginEnterprise\Model.ContinuousTestUpdate](docs/ContinuousTestUpdate.md)
 - [PSLoginEnterprise\Model.Created](docs/Created.md)
 - [PSLoginEnterprise\Model.CurrencyType](docs/CurrencyType.md)
 - [PSLoginEnterprise\Model.CustomConnector](docs/CustomConnector.md)
 - [PSLoginEnterprise\Model.DataCreateProviderRequest](docs/DataCreateProviderRequest.md)
 - [PSLoginEnterprise\Model.DataCreateUserSessionMetricDefinitionRequest](docs/DataCreateUserSessionMetricDefinitionRequest.md)
 - [PSLoginEnterprise\Model.DataGetApplicationTestReport200Response](docs/DataGetApplicationTestReport200Response.md)
 - [PSLoginEnterprise\Model.DataGetProviderById200Response](docs/DataGetProviderById200Response.md)
 - [PSLoginEnterprise\Model.DataGetTestRun200Response](docs/DataGetTestRun200Response.md)
 - [PSLoginEnterprise\Model.DataGetUserSessionMetricDefinitionByKey200Response](docs/DataGetUserSessionMetricDefinitionByKey200Response.md)
 - [PSLoginEnterprise\Model.DataTestProviderConnectionRequest](docs/DataTestProviderConnectionRequest.md)
 - [PSLoginEnterprise\Model.Delay](docs/Delay.md)
 - [PSLoginEnterprise\Model.DelayCreate](docs/DelayCreate.md)
 - [PSLoginEnterprise\Model.DelaySnapshot](docs/DelaySnapshot.md)
 - [PSLoginEnterprise\Model.DelayUpdate](docs/DelayUpdate.md)
 - [PSLoginEnterprise\Model.DesktopConnector](docs/DesktopConnector.md)
 - [PSLoginEnterprise\Model.Environment](docs/Environment.md)
 - [PSLoginEnterprise\Model.EnvironmentAttributes](docs/EnvironmentAttributes.md)
 - [PSLoginEnterprise\Model.EnvironmentCost](docs/EnvironmentCost.md)
 - [PSLoginEnterprise\Model.EnvironmentCostSnapshot](docs/EnvironmentCostSnapshot.md)
 - [PSLoginEnterprise\Model.EnvironmentData](docs/EnvironmentData.md)
 - [PSLoginEnterprise\Model.EnvironmentInclude](docs/EnvironmentInclude.md)
 - [PSLoginEnterprise\Model.EnvironmentProvider](docs/EnvironmentProvider.md)
 - [PSLoginEnterprise\Model.EnvironmentResultSet](docs/EnvironmentResultSet.md)
 - [PSLoginEnterprise\Model.EnvironmentSortKey](docs/EnvironmentSortKey.md)
 - [PSLoginEnterprise\Model.EuxMeasurement](docs/EuxMeasurement.md)
 - [PSLoginEnterprise\Model.EuxResult](docs/EuxResult.md)
 - [PSLoginEnterprise\Model.EuxResultsPerHour](docs/EuxResultsPerHour.md)
 - [PSLoginEnterprise\Model.EuxScore](docs/EuxScore.md)
 - [PSLoginEnterprise\Model.EuxScriptExecution](docs/EuxScriptExecution.md)
 - [PSLoginEnterprise\Model.EuxScriptExecutionResultSet](docs/EuxScriptExecutionResultSet.md)
 - [PSLoginEnterprise\Model.EuxSettings](docs/EuxSettings.md)
 - [PSLoginEnterprise\Model.EuxState](docs/EuxState.md)
 - [PSLoginEnterprise\Model.EuxTimer](docs/EuxTimer.md)
 - [PSLoginEnterprise\Model.EuxTimerResult](docs/EuxTimerResult.md)
 - [PSLoginEnterprise\Model.EuxTimerResultsPerHour](docs/EuxTimerResultsPerHour.md)
 - [PSLoginEnterprise\Model.EuxWorkFolders](docs/EuxWorkFolders.md)
 - [PSLoginEnterprise\Model.EventInclude](docs/EventInclude.md)
 - [PSLoginEnterprise\Model.EventNotification](docs/EventNotification.md)
 - [PSLoginEnterprise\Model.EventNotificationUpdate](docs/EventNotificationUpdate.md)
 - [PSLoginEnterprise\Model.EventResultSet](docs/EventResultSet.md)
 - [PSLoginEnterprise\Model.EventType](docs/EventType.md)
 - [PSLoginEnterprise\Model.Frequency](docs/Frequency.md)
 - [PSLoginEnterprise\Model.GroupConfigurationSnapshot](docs/GroupConfigurationSnapshot.md)
 - [PSLoginEnterprise\Model.HorizonConnector](docs/HorizonConnector.md)
 - [PSLoginEnterprise\Model.Launcher](docs/Launcher.md)
 - [PSLoginEnterprise\Model.LauncherFilterGroup](docs/LauncherFilterGroup.md)
 - [PSLoginEnterprise\Model.LauncherFilterGroupData](docs/LauncherFilterGroupData.md)
 - [PSLoginEnterprise\Model.LauncherGroup](docs/LauncherGroup.md)
 - [PSLoginEnterprise\Model.LauncherGroupData](docs/LauncherGroupData.md)
 - [PSLoginEnterprise\Model.LauncherGroupInclude](docs/LauncherGroupInclude.md)
 - [PSLoginEnterprise\Model.LauncherGroupResultSet](docs/LauncherGroupResultSet.md)
 - [PSLoginEnterprise\Model.LauncherGroupSortKey](docs/LauncherGroupSortKey.md)
 - [PSLoginEnterprise\Model.LauncherLocationUpdate](docs/LauncherLocationUpdate.md)
 - [PSLoginEnterprise\Model.LauncherProperty](docs/LauncherProperty.md)
 - [PSLoginEnterprise\Model.LauncherResultSet](docs/LauncherResultSet.md)
 - [PSLoginEnterprise\Model.LauncherSelectionGroup](docs/LauncherSelectionGroup.md)
 - [PSLoginEnterprise\Model.LauncherSelectionGroupData](docs/LauncherSelectionGroupData.md)
 - [PSLoginEnterprise\Model.LauncherSortKey](docs/LauncherSortKey.md)
 - [PSLoginEnterprise\Model.LdapConfigModel](docs/LdapConfigModel.md)
 - [PSLoginEnterprise\Model.LdapGroup](docs/LdapGroup.md)
 - [PSLoginEnterprise\Model.LdapGroupCreate](docs/LdapGroupCreate.md)
 - [PSLoginEnterprise\Model.LdapGroupIncludeOption](docs/LdapGroupIncludeOption.md)
 - [PSLoginEnterprise\Model.LdapGroupResultSet](docs/LdapGroupResultSet.md)
 - [PSLoginEnterprise\Model.LdapGroupSortKey](docs/LdapGroupSortKey.md)
 - [PSLoginEnterprise\Model.LdapGroupUpdate](docs/LdapGroupUpdate.md)
 - [PSLoginEnterprise\Model.LoadTest](docs/LoadTest.md)
 - [PSLoginEnterprise\Model.LoadTestCreate](docs/LoadTestCreate.md)
 - [PSLoginEnterprise\Model.LoadTestResult](docs/LoadTestResult.md)
 - [PSLoginEnterprise\Model.LoadTestRun](docs/LoadTestRun.md)
 - [PSLoginEnterprise\Model.LoadTestRunConfigurationSnapshot](docs/LoadTestRunConfigurationSnapshot.md)
 - [PSLoginEnterprise\Model.LoadTestRunStatistics](docs/LoadTestRunStatistics.md)
 - [PSLoginEnterprise\Model.LoadTestState](docs/LoadTestState.md)
 - [PSLoginEnterprise\Model.LoadTestUpdate](docs/LoadTestUpdate.md)
 - [PSLoginEnterprise\Model.Location](docs/Location.md)
 - [PSLoginEnterprise\Model.LocationCreate](docs/LocationCreate.md)
 - [PSLoginEnterprise\Model.LocationInclude](docs/LocationInclude.md)
 - [PSLoginEnterprise\Model.LocationResultSet](docs/LocationResultSet.md)
 - [PSLoginEnterprise\Model.LocationSortKey](docs/LocationSortKey.md)
 - [PSLoginEnterprise\Model.LocationUpdate](docs/LocationUpdate.md)
 - [PSLoginEnterprise\Model.LoginState](docs/LoginState.md)
 - [PSLoginEnterprise\Model.Measurement](docs/Measurement.md)
 - [PSLoginEnterprise\Model.MeasurementInclude](docs/MeasurementInclude.md)
 - [PSLoginEnterprise\Model.MeasurementResultSet](docs/MeasurementResultSet.md)
 - [PSLoginEnterprise\Model.MetricResult](docs/MetricResult.md)
 - [PSLoginEnterprise\Model.ModelEvent](docs/ModelEvent.md)
 - [PSLoginEnterprise\Model.NetscalerConnector](docs/NetscalerConnector.md)
 - [PSLoginEnterprise\Model.NotFoundProblemDetails](docs/NotFoundProblemDetails.md)
 - [PSLoginEnterprise\Model.Notification](docs/Notification.md)
 - [PSLoginEnterprise\Model.NotificationCreate](docs/NotificationCreate.md)
 - [PSLoginEnterprise\Model.NotificationEventType](docs/NotificationEventType.md)
 - [PSLoginEnterprise\Model.NotificationUpdate](docs/NotificationUpdate.md)
 - [PSLoginEnterprise\Model.ObjectId](docs/ObjectId.md)
 - [PSLoginEnterprise\Model.ObjectIdList](docs/ObjectIdList.md)
 - [PSLoginEnterprise\Model.PerformanceCounterDefinition](docs/PerformanceCounterDefinition.md)
 - [PSLoginEnterprise\Model.PerformanceCounterDefinitionCreate](docs/PerformanceCounterDefinitionCreate.md)
 - [PSLoginEnterprise\Model.PerformanceCounterMeasurementDefinition](docs/PerformanceCounterMeasurementDefinition.md)
 - [PSLoginEnterprise\Model.PerformanceCounterMeasurementDefinitionCreate](docs/PerformanceCounterMeasurementDefinitionCreate.md)
 - [PSLoginEnterprise\Model.PerformanceResult](docs/PerformanceResult.md)
 - [PSLoginEnterprise\Model.PerformanceResults](docs/PerformanceResults.md)
 - [PSLoginEnterprise\Model.PlatformMetric](docs/PlatformMetric.md)
 - [PSLoginEnterprise\Model.PlatformMetricSeries](docs/PlatformMetricSeries.md)
 - [PSLoginEnterprise\Model.PlatformSummary](docs/PlatformSummary.md)
 - [PSLoginEnterprise\Model.ProblemDetails](docs/ProblemDetails.md)
 - [PSLoginEnterprise\Model.Property](docs/Property.md)
 - [PSLoginEnterprise\Model.Provider](docs/Provider.md)
 - [PSLoginEnterprise\Model.ProviderAzure](docs/ProviderAzure.md)
 - [PSLoginEnterprise\Model.ProviderAzureData](docs/ProviderAzureData.md)
 - [PSLoginEnterprise\Model.ProviderData](docs/ProviderData.md)
 - [PSLoginEnterprise\Model.ProviderResultSet](docs/ProviderResultSet.md)
 - [PSLoginEnterprise\Model.ProviderSortKey](docs/ProviderSortKey.md)
 - [PSLoginEnterprise\Model.RdpConnector](docs/RdpConnector.md)
 - [PSLoginEnterprise\Model.Report](docs/Report.md)
 - [PSLoginEnterprise\Model.ReportConfiguration](docs/ReportConfiguration.md)
 - [PSLoginEnterprise\Model.ReportConfigurationCreate](docs/ReportConfigurationCreate.md)
 - [PSLoginEnterprise\Model.ReportConfigurationInclude](docs/ReportConfigurationInclude.md)
 - [PSLoginEnterprise\Model.ReportConfigurationResultSet](docs/ReportConfigurationResultSet.md)
 - [PSLoginEnterprise\Model.ReportConfigurationSortKey](docs/ReportConfigurationSortKey.md)
 - [PSLoginEnterprise\Model.ReportConfigurationUpdate](docs/ReportConfigurationUpdate.md)
 - [PSLoginEnterprise\Model.ReportNotification](docs/ReportNotification.md)
 - [PSLoginEnterprise\Model.ReportRequest](docs/ReportRequest.md)
 - [PSLoginEnterprise\Model.ReportResultSet](docs/ReportResultSet.md)
 - [PSLoginEnterprise\Model.ReportState](docs/ReportState.md)
 - [PSLoginEnterprise\Model.Resolution](docs/Resolution.md)
 - [PSLoginEnterprise\Model.ResultsWrapper](docs/ResultsWrapper.md)
 - [PSLoginEnterprise\Model.Role](docs/Role.md)
 - [PSLoginEnterprise\Model.RoleCreate](docs/RoleCreate.md)
 - [PSLoginEnterprise\Model.RoleIncludeOption](docs/RoleIncludeOption.md)
 - [PSLoginEnterprise\Model.RoleResultSet](docs/RoleResultSet.md)
 - [PSLoginEnterprise\Model.RoleSortKey](docs/RoleSortKey.md)
 - [PSLoginEnterprise\Model.RoleUpdate](docs/RoleUpdate.md)
 - [PSLoginEnterprise\Model.Screenshot](docs/Screenshot.md)
 - [PSLoginEnterprise\Model.ScreenshotType](docs/ScreenshotType.md)
 - [PSLoginEnterprise\Model.SessionMetricDefinitionGroup](docs/SessionMetricDefinitionGroup.md)
 - [PSLoginEnterprise\Model.SessionMetricDefinitionGroupCreate](docs/SessionMetricDefinitionGroupCreate.md)
 - [PSLoginEnterprise\Model.SessionMetricDefinitionGroupResultSet](docs/SessionMetricDefinitionGroupResultSet.md)
 - [PSLoginEnterprise\Model.SessionMetricDefinitionGroupSortKey](docs/SessionMetricDefinitionGroupSortKey.md)
 - [PSLoginEnterprise\Model.SessionMetricDefinitionGroupUpdate](docs/SessionMetricDefinitionGroupUpdate.md)
 - [PSLoginEnterprise\Model.SessionMetricDefinitionSnapshot](docs/SessionMetricDefinitionSnapshot.md)
 - [PSLoginEnterprise\Model.SessionMetricDefinitionSortKey](docs/SessionMetricDefinitionSortKey.md)
 - [PSLoginEnterprise\Model.SessionMetricsAggregationMode](docs/SessionMetricsAggregationMode.md)
 - [PSLoginEnterprise\Model.SessionState](docs/SessionState.md)
 - [PSLoginEnterprise\Model.SessionThreshold](docs/SessionThreshold.md)
 - [PSLoginEnterprise\Model.SessionThresholdType](docs/SessionThresholdType.md)
 - [PSLoginEnterprise\Model.SortOrder](docs/SortOrder.md)
 - [PSLoginEnterprise\Model.SourceType](docs/SourceType.md)
 - [PSLoginEnterprise\Model.StartRequest](docs/StartRequest.md)
 - [PSLoginEnterprise\Model.Step](docs/Step.md)
 - [PSLoginEnterprise\Model.StepCreate](docs/StepCreate.md)
 - [PSLoginEnterprise\Model.StepSnapshot](docs/StepSnapshot.md)
 - [PSLoginEnterprise\Model.StepUpdate](docs/StepUpdate.md)
 - [PSLoginEnterprise\Model.StorefrontConnector](docs/StorefrontConnector.md)
 - [PSLoginEnterprise\Model.StringStringKeyValuePair](docs/StringStringKeyValuePair.md)
 - [PSLoginEnterprise\Model.SuccessCounts](docs/SuccessCounts.md)
 - [PSLoginEnterprise\Model.SuccessRate](docs/SuccessRate.md)
 - [PSLoginEnterprise\Model.SummarizeOperation](docs/SummarizeOperation.md)
 - [PSLoginEnterprise\Model.SystemEuxVersion](docs/SystemEuxVersion.md)
 - [PSLoginEnterprise\Model.SystemVersionResult](docs/SystemVersionResult.md)
 - [PSLoginEnterprise\Model.TargetHost](docs/TargetHost.md)
 - [PSLoginEnterprise\Model.Test](docs/Test.md)
 - [PSLoginEnterprise\Model.TestAccessBulkUpdate](docs/TestAccessBulkUpdate.md)
 - [PSLoginEnterprise\Model.TestAzureConnectionData](docs/TestAzureConnectionData.md)
 - [PSLoginEnterprise\Model.TestControlState](docs/TestControlState.md)
 - [PSLoginEnterprise\Model.TestCopy](docs/TestCopy.md)
 - [PSLoginEnterprise\Model.TestCreate](docs/TestCreate.md)
 - [PSLoginEnterprise\Model.TestCreateConnector](docs/TestCreateConnector.md)
 - [PSLoginEnterprise\Model.TestDiagnostic](docs/TestDiagnostic.md)
 - [PSLoginEnterprise\Model.TestInclude](docs/TestInclude.md)
 - [PSLoginEnterprise\Model.TestProviderConnectionData](docs/TestProviderConnectionData.md)
 - [PSLoginEnterprise\Model.TestProviderConnectionResult](docs/TestProviderConnectionResult.md)
 - [PSLoginEnterprise\Model.TestReference](docs/TestReference.md)
 - [PSLoginEnterprise\Model.TestResultSet](docs/TestResultSet.md)
 - [PSLoginEnterprise\Model.TestRun](docs/TestRun.md)
 - [PSLoginEnterprise\Model.TestRunAccessBulkUpdate](docs/TestRunAccessBulkUpdate.md)
 - [PSLoginEnterprise\Model.TestRunInclude](docs/TestRunInclude.md)
 - [PSLoginEnterprise\Model.TestRunInfo](docs/TestRunInfo.md)
 - [PSLoginEnterprise\Model.TestRunResult](docs/TestRunResult.md)
 - [PSLoginEnterprise\Model.TestRunResultOverview](docs/TestRunResultOverview.md)
 - [PSLoginEnterprise\Model.TestRunResultSet](docs/TestRunResultSet.md)
 - [PSLoginEnterprise\Model.TestRunResults](docs/TestRunResults.md)
 - [PSLoginEnterprise\Model.TestRunSortKey](docs/TestRunSortKey.md)
 - [PSLoginEnterprise\Model.TestSortKey](docs/TestSortKey.md)
 - [PSLoginEnterprise\Model.TestType](docs/TestType.md)
 - [PSLoginEnterprise\Model.TestUpdate](docs/TestUpdate.md)
 - [PSLoginEnterprise\Model.Threshold](docs/Threshold.md)
 - [PSLoginEnterprise\Model.ThresholdNotification](docs/ThresholdNotification.md)
 - [PSLoginEnterprise\Model.ThresholdNotificationAllOfThreshold](docs/ThresholdNotificationAllOfThreshold.md)
 - [PSLoginEnterprise\Model.ThresholdNotificationCreate](docs/ThresholdNotificationCreate.md)
 - [PSLoginEnterprise\Model.ThresholdNotificationUpdate](docs/ThresholdNotificationUpdate.md)
 - [PSLoginEnterprise\Model.ThresholdUpdate](docs/ThresholdUpdate.md)
 - [PSLoginEnterprise\Model.TimeRange](docs/TimeRange.md)
 - [PSLoginEnterprise\Model.TimeSeriesPoint](docs/TimeSeriesPoint.md)
 - [PSLoginEnterprise\Model.TimeSlot](docs/TimeSlot.md)
 - [PSLoginEnterprise\Model.TimeSlotModes](docs/TimeSlotModes.md)
 - [PSLoginEnterprise\Model.Trigger](docs/Trigger.md)
 - [PSLoginEnterprise\Model.UpdateFromProviderResult](docs/UpdateFromProviderResult.md)
 - [PSLoginEnterprise\Model.User](docs/User.md)
 - [PSLoginEnterprise\Model.UserCreate](docs/UserCreate.md)
 - [PSLoginEnterprise\Model.UserIncludeOption](docs/UserIncludeOption.md)
 - [PSLoginEnterprise\Model.UserResultSet](docs/UserResultSet.md)
 - [PSLoginEnterprise\Model.UserSession](docs/UserSession.md)
 - [PSLoginEnterprise\Model.UserSessionInclude](docs/UserSessionInclude.md)
 - [PSLoginEnterprise\Model.UserSessionMetricDefinition](docs/UserSessionMetricDefinition.md)
 - [PSLoginEnterprise\Model.UserSessionMetricDefinitionCreate](docs/UserSessionMetricDefinitionCreate.md)
 - [PSLoginEnterprise\Model.UserSessionMetricDefinitionResultSet](docs/UserSessionMetricDefinitionResultSet.md)
 - [PSLoginEnterprise\Model.UserSessionMetricDefinitionUpdate](docs/UserSessionMetricDefinitionUpdate.md)
 - [PSLoginEnterprise\Model.UserSessionMetricResult](docs/UserSessionMetricResult.md)
 - [PSLoginEnterprise\Model.UserSessionMetricResultResultSet](docs/UserSessionMetricResultResultSet.md)
 - [PSLoginEnterprise\Model.UserSessionMetricSortKey](docs/UserSessionMetricSortKey.md)
 - [PSLoginEnterprise\Model.UserSessionMetricsAggregatedResult](docs/UserSessionMetricsAggregatedResult.md)
 - [PSLoginEnterprise\Model.UserSessionQueryFilterType](docs/UserSessionQueryFilterType.md)
 - [PSLoginEnterprise\Model.UserSessionResultSet](docs/UserSessionResultSet.md)
 - [PSLoginEnterprise\Model.UserSortKey](docs/UserSortKey.md)
 - [PSLoginEnterprise\Model.UserType](docs/UserType.md)
 - [PSLoginEnterprise\Model.ValidationProblemDetails](docs/ValidationProblemDetails.md)
 - [PSLoginEnterprise\Model.VsiMax](docs/VsiMax.md)
 - [PSLoginEnterprise\Model.VsiMaxState](docs/VsiMaxState.md)
 - [PSLoginEnterprise\Model.WebApplication](docs/WebApplication.md)
 - [PSLoginEnterprise\Model.WebApplicationCreate](docs/WebApplicationCreate.md)
 - [PSLoginEnterprise\Model.WebApplicationDetails](docs/WebApplicationDetails.md)
 - [PSLoginEnterprise\Model.WebApplicationUpdate](docs/WebApplicationUpdate.md)
 - [PSLoginEnterprise\Model.WebDriverStatus](docs/WebDriverStatus.md)
 - [PSLoginEnterprise\Model.WebDriverUpdateInfo](docs/WebDriverUpdateInfo.md)
 - [PSLoginEnterprise\Model.WebDriverUpdateResult](docs/WebDriverUpdateResult.md)
 - [PSLoginEnterprise\Model.WebDriverUpdateState](docs/WebDriverUpdateState.md)
 - [PSLoginEnterprise\Model.WebDriverUpdateStatus](docs/WebDriverUpdateStatus.md)
 - [PSLoginEnterprise\Model.WindowsApplication](docs/WindowsApplication.md)
 - [PSLoginEnterprise\Model.WindowsApplicationCreate](docs/WindowsApplicationCreate.md)
 - [PSLoginEnterprise\Model.WindowsApplicationDetails](docs/WindowsApplicationDetails.md)
 - [PSLoginEnterprise\Model.WindowsApplicationUpdate](docs/WindowsApplicationUpdate.md)
 - [PSLoginEnterprise\Model.WmiQueryDefinition](docs/WmiQueryDefinition.md)
 - [PSLoginEnterprise\Model.WmiQueryDefinitionCreate](docs/WmiQueryDefinitionCreate.md)
 - [PSLoginEnterprise\Model.WmiQueryMeasurementDefinition](docs/WmiQueryMeasurementDefinition.md)
 - [PSLoginEnterprise\Model.WmiQueryMeasurementDefinitionCreate](docs/WmiQueryMeasurementDefinitionCreate.md)
 - [PSLoginEnterprise\Model.Workload](docs/Workload.md)
 - [PSLoginEnterprise\Model.WorkloadSnapshot](docs/WorkloadSnapshot.md)




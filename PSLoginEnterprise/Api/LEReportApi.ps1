#
# Login Enterprise
# v7.0-preview [API Console (Swagger)](/publicApi/swagger/index.html?urls.primaryName=Login%20Enterprise%20API%20v7-preview), [Documentation (ReDoc)](/publicApi/v7-preview/docs/index.html)  v6.0 [API Console (Swagger)](/publicApi/swagger/index.html?urls.primaryName=Login%20Enterprise%20API%20v6), [Documentation (ReDoc)](/publicApi/v6/docs/index.html)  v5.0 [API Console (Swagger)](/publicApi/swagger/index.html?urls.primaryName=Login%20Enterprise%20API%20v5), [Documentation (ReDoc)](/publicApi/v5/docs/index.html)  v4.0 [API Console (Swagger)](/publicApi/swagger/index.html?urls.primaryName=Login%20Enterprise%20API%20v4), [Documentation (ReDoc)](/publicApi/v4/docs/index.html)    <br><b>API v7 (preview) – Introduced in Login Enterprise v5.0 and subject to breaking changes when API v7 becomes generally available.</b></br> <br><b>API v6 – is the recommended version to use. It is the actively developed version starting with Login Enterprise v4.10.</b></br> <br><b>API v5 – is currently supported but unmaintained as of v4.10.</b></br> <br><b>API v4 – is deprecated starting with v4.10. Will be removed in Q3 2023.</b></br>   The Login Enterprise Public API provides documentation and Swagger per version within the product. For additional information please refer to the [documentation](https://support.loginvsi.com/hc/en-us/articles/360009534760) on our website. 
# Version: 7.0-preview
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

Download application-test report PDF file by test-run id

.DESCRIPTION

No description available.

.PARAMETER TestRunId
Test-run id

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

System.IO.FileInfo
#>
function Invoke-LEDownloadApplicationTestReport {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${TestRunId},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Invoke-LEDownloadApplicationTestReport' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-LEConfiguration
        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json')

        $LocalVarUri = '/v7-preview/test-runs/{testRunId}/reports/pdf'
        if (!$TestRunId) {
            throw "Error! The required parameter `TestRunId` missing when calling downloadApplicationTestReport."
        }
        $LocalVarUri = $LocalVarUri.replace('{testRunId}', [System.Web.HTTPUtility]::UrlEncode($TestRunId))



        if ($Configuration["ApiKeyPrefix"] -and $Configuration["ApiKeyPrefix"]["Authorization"]) {
            $apiKeyPrefix = $Configuration["ApiKeyPrefix"]["Authorization"]
        } else {
            $apiKeyPrefix = ""
        }
        if ($Configuration["ApiKey"] -and $Configuration["ApiKey"]["Authorization"]) {
            $LocalVarHeaderParameters['Authorization'] = $apiKeyPrefix + $Configuration["ApiKey"]["Authorization"]
            Write-Verbose ("Using API key 'Authorization' in the header for authentication in {0}" -f $MyInvocation.MyCommand)
        }

        $LocalVarResult = Invoke-LEApiClient -Method 'GET' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "System.IO.FileInfo" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

<#
.SYNOPSIS

Download report PDF file by id

.DESCRIPTION

No description available.

.PARAMETER ReportId
Report id

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

System.IO.FileInfo
#>
function Invoke-LEDownloadContinuousTestReport {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${ReportId},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Invoke-LEDownloadContinuousTestReport' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-LEConfiguration
        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json')

        $LocalVarUri = '/v7-preview/reports/{reportId}/pdf'
        if (!$ReportId) {
            throw "Error! The required parameter `ReportId` missing when calling downloadContinuousTestReport."
        }
        $LocalVarUri = $LocalVarUri.replace('{reportId}', [System.Web.HTTPUtility]::UrlEncode($ReportId))



        if ($Configuration["ApiKeyPrefix"] -and $Configuration["ApiKeyPrefix"]["Authorization"]) {
            $apiKeyPrefix = $Configuration["ApiKeyPrefix"]["Authorization"]
        } else {
            $apiKeyPrefix = ""
        }
        if ($Configuration["ApiKey"] -and $Configuration["ApiKey"]["Authorization"]) {
            $LocalVarHeaderParameters['Authorization'] = $apiKeyPrefix + $Configuration["ApiKey"]["Authorization"]
            Write-Verbose ("Using API key 'Authorization' in the header for authentication in {0}" -f $MyInvocation.MyCommand)
        }

        $LocalVarResult = Invoke-LEApiClient -Method 'GET' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "System.IO.FileInfo" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

<#
.SYNOPSIS

Get application-test report by test-run id

.DESCRIPTION

No description available.

.PARAMETER TestRunId
Test-run id

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

DataGetApplicationTestReport200Response
#>
function Get-LEApplicationTestReport {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${TestRunId},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Get-LEApplicationTestReport' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-LEConfiguration
        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json')

        $LocalVarUri = '/v7-preview/test-runs/{testRunId}/reports'
        if (!$TestRunId) {
            throw "Error! The required parameter `TestRunId` missing when calling getApplicationTestReport."
        }
        $LocalVarUri = $LocalVarUri.replace('{testRunId}', [System.Web.HTTPUtility]::UrlEncode($TestRunId))



        if ($Configuration["ApiKeyPrefix"] -and $Configuration["ApiKeyPrefix"]["Authorization"]) {
            $apiKeyPrefix = $Configuration["ApiKeyPrefix"]["Authorization"]
        } else {
            $apiKeyPrefix = ""
        }
        if ($Configuration["ApiKey"] -and $Configuration["ApiKey"]["Authorization"]) {
            $LocalVarHeaderParameters['Authorization'] = $apiKeyPrefix + $Configuration["ApiKey"]["Authorization"]
            Write-Verbose ("Using API key 'Authorization' in the header for authentication in {0}" -f $MyInvocation.MyCommand)
        }

        $LocalVarResult = Invoke-LEApiClient -Method 'GET' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "DataGetApplicationTestReport200Response" `
                                -IsBodyNullable $false

        # process oneOf response
        $LocalVarResult["Response"] = ConvertFrom-LEJsonToDataGetApplicationTestReport200Response (ConvertTo-Json $LocalVarResult["Response"] -Depth 100)

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

<#
.SYNOPSIS

Get report by id

.DESCRIPTION

No description available.

.PARAMETER ReportId
Report id

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

DataGetApplicationTestReport200Response
#>
function Get-LEContinuousTestReport {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${ReportId},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Get-LEContinuousTestReport' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-LEConfiguration
        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json')

        $LocalVarUri = '/v7-preview/reports/{reportId}'
        if (!$ReportId) {
            throw "Error! The required parameter `ReportId` missing when calling getContinuousTestReport."
        }
        $LocalVarUri = $LocalVarUri.replace('{reportId}', [System.Web.HTTPUtility]::UrlEncode($ReportId))



        if ($Configuration["ApiKeyPrefix"] -and $Configuration["ApiKeyPrefix"]["Authorization"]) {
            $apiKeyPrefix = $Configuration["ApiKeyPrefix"]["Authorization"]
        } else {
            $apiKeyPrefix = ""
        }
        if ($Configuration["ApiKey"] -and $Configuration["ApiKey"]["Authorization"]) {
            $LocalVarHeaderParameters['Authorization'] = $apiKeyPrefix + $Configuration["ApiKey"]["Authorization"]
            Write-Verbose ("Using API key 'Authorization' in the header for authentication in {0}" -f $MyInvocation.MyCommand)
        }

        $LocalVarResult = Invoke-LEApiClient -Method 'GET' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "DataGetApplicationTestReport200Response" `
                                -IsBodyNullable $false

        # process oneOf response
        $LocalVarResult["Response"] = ConvertFrom-LEJsonToDataGetApplicationTestReport200Response (ConvertTo-Json $LocalVarResult["Response"] -Depth 100)

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

<#
.SYNOPSIS

Get paginated list of continuous-test reports by configuration id

.DESCRIPTION

No description available.

.PARAMETER TestId
Test id

.PARAMETER ConfigurationId
Configuration id

.PARAMETER Direction
Sort direction

.PARAMETER Count
Number of records to return

.PARAMETER Offset
Start offset

.PARAMETER IncludeTotalCount
Include total number of records

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

ReportResultSet
#>
function Get-LEContinuousTestReports {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${TestId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${ConfigurationId},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [ValidateSet("asc", "desc")]
        [String]
        ${Direction},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [Int32]
        ${Count},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Int32]]
        ${Offset},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Boolean]]
        ${IncludeTotalCount},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Get-LEContinuousTestReports' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-LEConfiguration
        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json')

        $LocalVarUri = '/v7-preview/tests/{testId}/report-configurations/{configurationId}/reports'
        if (!$TestId) {
            throw "Error! The required parameter `TestId` missing when calling getContinuousTestReports."
        }
        $LocalVarUri = $LocalVarUri.replace('{testId}', [System.Web.HTTPUtility]::UrlEncode($TestId))
        if (!$ConfigurationId) {
            throw "Error! The required parameter `ConfigurationId` missing when calling getContinuousTestReports."
        }
        $LocalVarUri = $LocalVarUri.replace('{configurationId}', [System.Web.HTTPUtility]::UrlEncode($ConfigurationId))

        if (!$Direction) {
            throw "Error! The required parameter `Direction` missing when calling getContinuousTestReports."
        }
        $LocalVarQueryParameters['direction'] = $Direction

        if (!$Count) {
            throw "Error! The required parameter `Count` missing when calling getContinuousTestReports."
        }
        $LocalVarQueryParameters['count'] = $Count

        if ($Offset) {
            $LocalVarQueryParameters['offset'] = $Offset
        }

        if ($IncludeTotalCount) {
            $LocalVarQueryParameters['includeTotalCount'] = $IncludeTotalCount
        }



        if ($Configuration["ApiKeyPrefix"] -and $Configuration["ApiKeyPrefix"]["Authorization"]) {
            $apiKeyPrefix = $Configuration["ApiKeyPrefix"]["Authorization"]
        } else {
            $apiKeyPrefix = ""
        }
        if ($Configuration["ApiKey"] -and $Configuration["ApiKey"]["Authorization"]) {
            $LocalVarHeaderParameters['Authorization'] = $apiKeyPrefix + $Configuration["ApiKey"]["Authorization"]
            Write-Verbose ("Using API key 'Authorization' in the header for authentication in {0}" -f $MyInvocation.MyCommand)
        }

        $LocalVarResult = Invoke-LEApiClient -Method 'GET' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "ReportResultSet" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}


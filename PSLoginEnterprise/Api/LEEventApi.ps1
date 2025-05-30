#
# Login Enterprise
# v8.0-preview [API Console (Swagger)](/publicApi/swagger/index.html?urls.primaryName=Login%20Enterprise%20API%20v8-preview), [Documentation (ReDoc)](/publicApi/v8-preview/docs/index.html)  v7.0 [API Console (Swagger)](/publicApi/swagger/index.html?urls.primaryName=Login%20Enterprise%20API%20v7), [Documentation (ReDoc)](/publicApi/v7/docs/index.html)  v6.0 [API Console (Swagger)](/publicApi/swagger/index.html?urls.primaryName=Login%20Enterprise%20API%20v6), [Documentation (ReDoc)](/publicApi/v6/docs/index.html)    <br><b>API v8 (preview) – Introduced in Login Enterprise v6.0 and subject to breaking changes.</b></br> <br><b>API v7 – is the recommended version to use. It is the actively developed version starting with Login Enterprise v6.0.</b></br> <br><b>API v6 – is currently supported, but unmaintained as of v6.0.</b></br> <br><b>API v5 and v4 - These versions are removed in v6.0.</b></br>   The Login Enterprise Public API provides documentation and Swagger per version within the product. For additional information please refer to the [documentation](https://support.loginvsi.com/hc/en-us/articles/360009534760) on our website. 
# Version: 7.0
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

Get event by id

.DESCRIPTION

No description available.

.PARAMETER EventId
Event id

.PARAMETER Include
Include options

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

ModelEvent
#>
function Get-LEEvent {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${EventId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject[]]
        ${Include},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Get-LEEvent' | Write-Debug
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

        $LocalVarUri = '/v7/events/{eventId}'
        if (!$EventId) {
            throw "Error! The required parameter `EventId` missing when calling getEvent."
        }
        $LocalVarUri = $LocalVarUri.replace('{eventId}', [System.Web.HTTPUtility]::UrlEncode($EventId))

        if ($Include) {
            $LocalVarQueryParameters['include'] = $Include
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
                                -ReturnType "ModelEvent" `
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

Get paginated list of all events

.DESCRIPTION

No description available.

.PARAMETER Direction
Sort direction

.PARAMETER Count
Number of records to return

.PARAMETER Offset
Start offset

.PARAMETER IncludeTotalCount
Include total number of records

.PARAMETER From
From date-time

.PARAMETER To
To date-time

.PARAMETER Include
Include options

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

EventResultSet
#>
function Get-LEEvents {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${Direction},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [Int32]
        ${Count},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Int32]]
        ${Offset},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Boolean]]
        ${IncludeTotalCount},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[System.DateTime]]
        ${From},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[System.DateTime]]
        ${To},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject[]]
        ${Include},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Get-LEEvents' | Write-Debug
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

        $LocalVarUri = '/v7/events'

        if (!$Direction) {
            throw "Error! The required parameter `Direction` missing when calling getEvents."
        }
        $LocalVarQueryParameters['direction'] = $Direction

        if (!$Count) {
            throw "Error! The required parameter `Count` missing when calling getEvents."
        }
        $LocalVarQueryParameters['count'] = $Count

        if ($Offset) {
            $LocalVarQueryParameters['offset'] = $Offset
        }

        if ($IncludeTotalCount) {
            $LocalVarQueryParameters['includeTotalCount'] = $IncludeTotalCount
        }

        $LocalVarQueryParameters['from'] = $From

        $LocalVarQueryParameters['to'] = $To

        if ($Include) {
            $LocalVarQueryParameters['include'] = $Include
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
                                -ReturnType "EventResultSet" `
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

Get paginated list of events by app-execution id

.DESCRIPTION

No description available.

.PARAMETER TestRunId
Test-run id

.PARAMETER AppExecutionId
App-execution id

.PARAMETER Direction
Sort direction

.PARAMETER Count
Number of records to return

.PARAMETER Offset
Start offset

.PARAMETER IncludeTotalCount
Include total number of records

.PARAMETER Include
Include options

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

EventResultSet
#>
function Get-LEEventsByAppExecution {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${TestRunId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${AppExecutionId},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
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
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject[]]
        ${Include},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Get-LEEventsByAppExecution' | Write-Debug
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

        $LocalVarUri = '/v7/test-runs/{testRunId}/app-executions/{appExecutionId}/events'
        if (!$TestRunId) {
            throw "Error! The required parameter `TestRunId` missing when calling getEventsByAppExecution."
        }
        $LocalVarUri = $LocalVarUri.replace('{testRunId}', [System.Web.HTTPUtility]::UrlEncode($TestRunId))
        if (!$AppExecutionId) {
            throw "Error! The required parameter `AppExecutionId` missing when calling getEventsByAppExecution."
        }
        $LocalVarUri = $LocalVarUri.replace('{appExecutionId}', [System.Web.HTTPUtility]::UrlEncode($AppExecutionId))

        if (!$Direction) {
            throw "Error! The required parameter `Direction` missing when calling getEventsByAppExecution."
        }
        $LocalVarQueryParameters['direction'] = $Direction

        if (!$Count) {
            throw "Error! The required parameter `Count` missing when calling getEventsByAppExecution."
        }
        $LocalVarQueryParameters['count'] = $Count

        if ($Offset) {
            $LocalVarQueryParameters['offset'] = $Offset
        }

        if ($IncludeTotalCount) {
            $LocalVarQueryParameters['includeTotalCount'] = $IncludeTotalCount
        }

        if ($Include) {
            $LocalVarQueryParameters['include'] = $Include
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
                                -ReturnType "EventResultSet" `
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

Get paginated list of events by test-run id

.DESCRIPTION

No description available.

.PARAMETER TestRunId
Test-run id

.PARAMETER Direction
Sort direction

.PARAMETER Count
Number of records to return

.PARAMETER Offset
Start offset

.PARAMETER IncludeTotalCount
Include total number of records

.PARAMETER From
From date-time

.PARAMETER To
To date-time

.PARAMETER Include
Include options

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

EventResultSet
#>
function Get-LEEventsByTestRun {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${TestRunId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${Direction},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [Int32]
        ${Count},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Int32]]
        ${Offset},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Boolean]]
        ${IncludeTotalCount},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[System.DateTime]]
        ${From},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[System.DateTime]]
        ${To},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject[]]
        ${Include},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Get-LEEventsByTestRun' | Write-Debug
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

        $LocalVarUri = '/v7/test-runs/{testRunId}/events'
        if (!$TestRunId) {
            throw "Error! The required parameter `TestRunId` missing when calling getEventsByTestRun."
        }
        $LocalVarUri = $LocalVarUri.replace('{testRunId}', [System.Web.HTTPUtility]::UrlEncode($TestRunId))

        if (!$Direction) {
            throw "Error! The required parameter `Direction` missing when calling getEventsByTestRun."
        }
        $LocalVarQueryParameters['direction'] = $Direction

        if (!$Count) {
            throw "Error! The required parameter `Count` missing when calling getEventsByTestRun."
        }
        $LocalVarQueryParameters['count'] = $Count

        if ($Offset) {
            $LocalVarQueryParameters['offset'] = $Offset
        }

        if ($IncludeTotalCount) {
            $LocalVarQueryParameters['includeTotalCount'] = $IncludeTotalCount
        }

        $LocalVarQueryParameters['from'] = $From

        $LocalVarQueryParameters['to'] = $To

        if ($Include) {
            $LocalVarQueryParameters['include'] = $Include
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
                                -ReturnType "EventResultSet" `
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

Get paginated list of events by user-session id

.DESCRIPTION

No description available.

.PARAMETER TestRunId
Test-run id

.PARAMETER UserSessionId
User-session id

.PARAMETER Direction
Sort direction

.PARAMETER Count
Number of records to return

.PARAMETER Offset
Start offset

.PARAMETER IncludeTotalCount
Include total number of records

.PARAMETER Include
Include options

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

EventResultSet
#>
function Get-LEEventsByUserSession {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${TestRunId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${UserSessionId},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
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
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject[]]
        ${Include},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Get-LEEventsByUserSession' | Write-Debug
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

        $LocalVarUri = '/v7/test-runs/{testRunId}/user-sessions/{userSessionId}/events'
        if (!$TestRunId) {
            throw "Error! The required parameter `TestRunId` missing when calling getEventsByUserSession."
        }
        $LocalVarUri = $LocalVarUri.replace('{testRunId}', [System.Web.HTTPUtility]::UrlEncode($TestRunId))
        if (!$UserSessionId) {
            throw "Error! The required parameter `UserSessionId` missing when calling getEventsByUserSession."
        }
        $LocalVarUri = $LocalVarUri.replace('{userSessionId}', [System.Web.HTTPUtility]::UrlEncode($UserSessionId))

        if (!$Direction) {
            throw "Error! The required parameter `Direction` missing when calling getEventsByUserSession."
        }
        $LocalVarQueryParameters['direction'] = $Direction

        if (!$Count) {
            throw "Error! The required parameter `Count` missing when calling getEventsByUserSession."
        }
        $LocalVarQueryParameters['count'] = $Count

        if ($Offset) {
            $LocalVarQueryParameters['offset'] = $Offset
        }

        if ($IncludeTotalCount) {
            $LocalVarQueryParameters['includeTotalCount'] = $IncludeTotalCount
        }

        if ($Include) {
            $LocalVarQueryParameters['include'] = $Include
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
                                -ReturnType "EventResultSet" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}


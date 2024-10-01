#
# Login Enterprise
# v7.0-preview [API Console (Swagger)](/publicApi/swagger/index.html?urls.primaryName=Login%20Enterprise%20API%20v7-preview), [Documentation (ReDoc)](/publicApi/v7-preview/docs/index.html)  v6.0 [API Console (Swagger)](/publicApi/swagger/index.html?urls.primaryName=Login%20Enterprise%20API%20v6), [Documentation (ReDoc)](/publicApi/v6/docs/index.html)  v5.0 [API Console (Swagger)](/publicApi/swagger/index.html?urls.primaryName=Login%20Enterprise%20API%20v5), [Documentation (ReDoc)](/publicApi/v5/docs/index.html)  v4.0 [API Console (Swagger)](/publicApi/swagger/index.html?urls.primaryName=Login%20Enterprise%20API%20v4), [Documentation (ReDoc)](/publicApi/v4/docs/index.html)    <br><b>API v7 (preview) – Introduced in Login Enterprise v5.0 and subject to breaking changes when API v7 becomes generally available.</b></br> <br><b>API v6 – is the recommended version to use. It is the actively developed version starting with Login Enterprise v4.10.</b></br> <br><b>API v5 – is currently supported but unmaintained as of v4.10.</b></br> <br><b>API v4 – is deprecated starting with v4.10. Will be removed in Q3 2023.</b></br>   The Login Enterprise Public API provides documentation and Swagger per version within the product. For additional information please refer to the [documentation](https://support.loginvsi.com/hc/en-us/articles/360009534760) on our website. 
# Version: 7.0-preview
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

Load test run

.PARAMETER Type
No description available.
.PARAMETER Id
Test run id
.PARAMETER TestId
Test id
.PARAMETER Created
Created date-time
.PARAMETER Started
Started date-time
.PARAMETER Finished
Finished date-time
.PARAMETER Counter
Test run counter
.PARAMETER TestRunConfigurationSnapshot
No description available.
.PARAMETER State
No description available.
.PARAMETER Result
No description available.
.PARAMETER RampUpCompleted
Ramp-up completed date-time
.PARAMETER ActiveSessionCount
Active session count
.PARAMETER StatisticsReady
Statistics are ready
.PARAMETER ProductVersion
Product version
.PARAMETER LoginCounts
No description available.
.PARAMETER EngineCounts
No description available.
.PARAMETER AppExecutionCounts
No description available.
.PARAMETER EuxScore
No description available.
.PARAMETER VsiMax
No description available.
.PARAMETER Comment
Comment
.OUTPUTS

LoadTestRun<PSCustomObject>
#>

function Initialize-LELoadTestRun {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Type},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${TestId},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Created},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Started},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Finished},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Counter},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${TestRunConfigurationSnapshot},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("allocateResource", "rampingUp", "running", "rampingDown", "freeResources", "completed")]
        [PSCustomObject]
        ${State},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("completed", "aborted", "abandoned")]
        [PSCustomObject]
        ${Result},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${RampUpCompleted},
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${ActiveSessionCount},
        [Parameter(Position = 12, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${StatisticsReady},
        [Parameter(Position = 13, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ProductVersion},
        [Parameter(Position = 14, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${LoginCounts},
        [Parameter(Position = 15, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${EngineCounts},
        [Parameter(Position = 16, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${AppExecutionCounts},
        [Parameter(Position = 17, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${EuxScore},
        [Parameter(Position = 18, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${VsiMax},
        [Parameter(Position = 19, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Comment}
    )

    Process {
        'Creating PSCustomObject: PSLoginEnterprise => LELoadTestRun' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Type) {
            throw "invalid value for 'Type', 'Type' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "id" = ${Id}
            "testId" = ${TestId}
            "created" = ${Created}
            "started" = ${Started}
            "finished" = ${Finished}
            "counter" = ${Counter}
            "testRunConfigurationSnapshot" = ${TestRunConfigurationSnapshot}
            "state" = ${State}
            "result" = ${Result}
            "rampUpCompleted" = ${RampUpCompleted}
            "activeSessionCount" = ${ActiveSessionCount}
            "statisticsReady" = ${StatisticsReady}
            "productVersion" = ${ProductVersion}
            "loginCounts" = ${LoginCounts}
            "engineCounts" = ${EngineCounts}
            "appExecutionCounts" = ${AppExecutionCounts}
            "euxScore" = ${EuxScore}
            "vsiMax" = ${VsiMax}
            "comment" = ${Comment}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to LoadTestRun<PSCustomObject>

.DESCRIPTION

Convert from JSON to LoadTestRun<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

LoadTestRun<PSCustomObject>
#>
function ConvertFrom-LEJsonToLoadTestRun {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSLoginEnterprise => LELoadTestRun' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in LELoadTestRun
        $AllProperties = ("type", "id", "testId", "created", "started", "finished", "counter", "testRunConfigurationSnapshot", "state", "result", "rampUpCompleted", "activeSessionCount", "statisticsReady", "productVersion", "loginCounts", "engineCounts", "appExecutionCounts", "euxScore", "vsiMax", "comment")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'type' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) {
            throw "Error! JSON cannot be serialized due to the required property 'type' missing."
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "testId"))) { #optional property not found
            $TestId = $null
        } else {
            $TestId = $JsonParameters.PSobject.Properties["testId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "created"))) { #optional property not found
            $Created = $null
        } else {
            $Created = $JsonParameters.PSobject.Properties["created"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "started"))) { #optional property not found
            $Started = $null
        } else {
            $Started = $JsonParameters.PSobject.Properties["started"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "finished"))) { #optional property not found
            $Finished = $null
        } else {
            $Finished = $JsonParameters.PSobject.Properties["finished"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "counter"))) { #optional property not found
            $Counter = $null
        } else {
            $Counter = $JsonParameters.PSobject.Properties["counter"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "testRunConfigurationSnapshot"))) { #optional property not found
            $TestRunConfigurationSnapshot = $null
        } else {
            $TestRunConfigurationSnapshot = $JsonParameters.PSobject.Properties["testRunConfigurationSnapshot"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "state"))) { #optional property not found
            $State = $null
        } else {
            $State = $JsonParameters.PSobject.Properties["state"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "result"))) { #optional property not found
            $Result = $null
        } else {
            $Result = $JsonParameters.PSobject.Properties["result"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "rampUpCompleted"))) { #optional property not found
            $RampUpCompleted = $null
        } else {
            $RampUpCompleted = $JsonParameters.PSobject.Properties["rampUpCompleted"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "activeSessionCount"))) { #optional property not found
            $ActiveSessionCount = $null
        } else {
            $ActiveSessionCount = $JsonParameters.PSobject.Properties["activeSessionCount"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "statisticsReady"))) { #optional property not found
            $StatisticsReady = $null
        } else {
            $StatisticsReady = $JsonParameters.PSobject.Properties["statisticsReady"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "productVersion"))) { #optional property not found
            $ProductVersion = $null
        } else {
            $ProductVersion = $JsonParameters.PSobject.Properties["productVersion"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "loginCounts"))) { #optional property not found
            $LoginCounts = $null
        } else {
            $LoginCounts = $JsonParameters.PSobject.Properties["loginCounts"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "engineCounts"))) { #optional property not found
            $EngineCounts = $null
        } else {
            $EngineCounts = $JsonParameters.PSobject.Properties["engineCounts"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "appExecutionCounts"))) { #optional property not found
            $AppExecutionCounts = $null
        } else {
            $AppExecutionCounts = $JsonParameters.PSobject.Properties["appExecutionCounts"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "euxScore"))) { #optional property not found
            $EuxScore = $null
        } else {
            $EuxScore = $JsonParameters.PSobject.Properties["euxScore"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "vsiMax"))) { #optional property not found
            $VsiMax = $null
        } else {
            $VsiMax = $JsonParameters.PSobject.Properties["vsiMax"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "comment"))) { #optional property not found
            $Comment = $null
        } else {
            $Comment = $JsonParameters.PSobject.Properties["comment"].value
        }

        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "id" = ${Id}
            "testId" = ${TestId}
            "created" = ${Created}
            "started" = ${Started}
            "finished" = ${Finished}
            "counter" = ${Counter}
            "testRunConfigurationSnapshot" = ${TestRunConfigurationSnapshot}
            "state" = ${State}
            "result" = ${Result}
            "rampUpCompleted" = ${RampUpCompleted}
            "activeSessionCount" = ${ActiveSessionCount}
            "statisticsReady" = ${StatisticsReady}
            "productVersion" = ${ProductVersion}
            "loginCounts" = ${LoginCounts}
            "engineCounts" = ${EngineCounts}
            "appExecutionCounts" = ${AppExecutionCounts}
            "euxScore" = ${EuxScore}
            "vsiMax" = ${VsiMax}
            "comment" = ${Comment}
        }

        return $PSO
    }

}


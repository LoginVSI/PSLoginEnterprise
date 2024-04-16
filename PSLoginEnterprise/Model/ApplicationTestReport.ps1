#
# Login Enterprise
# v7.0-preview [API Console (Swagger)](/publicApi/swagger/index.html?urls.primaryName=Login%20Enterprise%20API%20v7-preview), [Documentation (ReDoc)](/publicApi/v7-preview/docs/index.html)  v6.0 [API Console (Swagger)](/publicApi/swagger/index.html?urls.primaryName=Login%20Enterprise%20API%20v6), [Documentation (ReDoc)](/publicApi/v6/docs/index.html)  v5.0 [API Console (Swagger)](/publicApi/swagger/index.html?urls.primaryName=Login%20Enterprise%20API%20v5), [Documentation (ReDoc)](/publicApi/v5/docs/index.html)  v4.0 [API Console (Swagger)](/publicApi/swagger/index.html?urls.primaryName=Login%20Enterprise%20API%20v4), [Documentation (ReDoc)](/publicApi/v4/docs/index.html)    <br><b>API v7 (preview) – Introduced in Login Enterprise v5.0 and subject to breaking changes when API v7 becomes generally available.</b></br> <br><b>API v6 – is the recommended version to use. It is the actively developed version starting with Login Enterprise v4.10.</b></br> <br><b>API v5 – is currently supported but unmaintained as of v4.10.</b></br> <br><b>API v4 – is deprecated starting with v4.10. Will be removed in Q3 2023.</b></br>   The Login Enterprise Public API provides documentation and Swagger per version within the product. For additional information please refer to the [documentation](https://support.loginvsi.com/hc/en-us/articles/360009534760) on our website. 
# Version: 6.0
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

Application test report

.PARAMETER Type
No description available.
.PARAMETER TestRunId
Test run id
.PARAMETER Id
Report id
.PARAMETER TestId
Test id
.PARAMETER OutputContentUri
Output content uri
.PARAMETER State
No description available.
.PARAMETER Trigger
No description available.
.PARAMETER Created
Created date-time
.PARAMETER ReportPeriodStart
Report period start date-time
.PARAMETER ReportPeriodEnd
Report period end date-time
.OUTPUTS

ApplicationTestReport<PSCustomObject>
#>

function Initialize-LEApplicationTestReport {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Type},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${TestRunId},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${TestId},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${OutputContentUri},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("created", "completed", "readyForPdf")]
        [PSCustomObject]
        ${State},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("manual", "scheduled", "automatic")]
        [PSCustomObject]
        ${Trigger},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Created},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${ReportPeriodStart},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${ReportPeriodEnd}
    )

    Process {
        'Creating PSCustomObject: PSLoginEnterprise => LEApplicationTestReport' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Type) {
            throw "invalid value for 'Type', 'Type' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "testRunId" = ${TestRunId}
            "id" = ${Id}
            "testId" = ${TestId}
            "outputContentUri" = ${OutputContentUri}
            "state" = ${State}
            "trigger" = ${Trigger}
            "created" = ${Created}
            "reportPeriodStart" = ${ReportPeriodStart}
            "reportPeriodEnd" = ${ReportPeriodEnd}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ApplicationTestReport<PSCustomObject>

.DESCRIPTION

Convert from JSON to ApplicationTestReport<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ApplicationTestReport<PSCustomObject>
#>
function ConvertFrom-LEJsonToApplicationTestReport {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSLoginEnterprise => LEApplicationTestReport' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in LEApplicationTestReport
        $AllProperties = ("type", "testRunId", "id", "testId", "outputContentUri", "state", "trigger", "created", "reportPeriodStart", "reportPeriodEnd")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "testRunId"))) { #optional property not found
            $TestRunId = $null
        } else {
            $TestRunId = $JsonParameters.PSobject.Properties["testRunId"].value
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "outputContentUri"))) { #optional property not found
            $OutputContentUri = $null
        } else {
            $OutputContentUri = $JsonParameters.PSobject.Properties["outputContentUri"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "state"))) { #optional property not found
            $State = $null
        } else {
            $State = $JsonParameters.PSobject.Properties["state"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "trigger"))) { #optional property not found
            $Trigger = $null
        } else {
            $Trigger = $JsonParameters.PSobject.Properties["trigger"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "created"))) { #optional property not found
            $Created = $null
        } else {
            $Created = $JsonParameters.PSobject.Properties["created"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "reportPeriodStart"))) { #optional property not found
            $ReportPeriodStart = $null
        } else {
            $ReportPeriodStart = $JsonParameters.PSobject.Properties["reportPeriodStart"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "reportPeriodEnd"))) { #optional property not found
            $ReportPeriodEnd = $null
        } else {
            $ReportPeriodEnd = $JsonParameters.PSobject.Properties["reportPeriodEnd"].value
        }

        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "testRunId" = ${TestRunId}
            "id" = ${Id}
            "testId" = ${TestId}
            "outputContentUri" = ${OutputContentUri}
            "state" = ${State}
            "trigger" = ${Trigger}
            "created" = ${Created}
            "reportPeriodStart" = ${ReportPeriodStart}
            "reportPeriodEnd" = ${ReportPeriodEnd}
        }

        return $PSO
    }

}


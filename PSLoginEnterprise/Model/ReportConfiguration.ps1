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

Report configuration

.PARAMETER Id
Report configuration id
.PARAMETER TestId
Test id
.PARAMETER Name
Report configuration name
.PARAMETER TestName
Test name
.PARAMETER Description
Report configuration description
.PARAMETER Frequency
No description available.
.PARAMETER IsEnabled
Enable report configuration
.PARAMETER Notification
No description available.
.PARAMETER Thresholds
Report thresholds
.PARAMETER Created
Created date-time
.PARAMETER LastModified
Last modified date-time
.PARAMETER LastReportPeriodStart
Last report period start date-time
.PARAMETER TimeZoneOffset
Time zone offset
.OUTPUTS

ReportConfiguration<PSCustomObject>
#>

function Initialize-LEReportConfiguration {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${TestId},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${TestName},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("daily", "monthly", "weekly")]
        [PSCustomObject]
        ${Frequency},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${IsEnabled},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Notification},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Thresholds},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Created},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${LastModified},
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${LastReportPeriodStart},
        [Parameter(Position = 12, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${TimeZoneOffset}
    )

    Process {
        'Creating PSCustomObject: PSLoginEnterprise => LEReportConfiguration' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "testId" = ${TestId}
            "name" = ${Name}
            "testName" = ${TestName}
            "description" = ${Description}
            "frequency" = ${Frequency}
            "isEnabled" = ${IsEnabled}
            "notification" = ${Notification}
            "thresholds" = ${Thresholds}
            "created" = ${Created}
            "lastModified" = ${LastModified}
            "lastReportPeriodStart" = ${LastReportPeriodStart}
            "timeZoneOffset" = ${TimeZoneOffset}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ReportConfiguration<PSCustomObject>

.DESCRIPTION

Convert from JSON to ReportConfiguration<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ReportConfiguration<PSCustomObject>
#>
function ConvertFrom-LEJsonToReportConfiguration {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSLoginEnterprise => LEReportConfiguration' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in LEReportConfiguration
        $AllProperties = ("id", "testId", "name", "testName", "description", "frequency", "isEnabled", "notification", "thresholds", "created", "lastModified", "lastReportPeriodStart", "timeZoneOffset")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "testName"))) { #optional property not found
            $TestName = $null
        } else {
            $TestName = $JsonParameters.PSobject.Properties["testName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "frequency"))) { #optional property not found
            $Frequency = $null
        } else {
            $Frequency = $JsonParameters.PSobject.Properties["frequency"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "isEnabled"))) { #optional property not found
            $IsEnabled = $null
        } else {
            $IsEnabled = $JsonParameters.PSobject.Properties["isEnabled"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "notification"))) { #optional property not found
            $Notification = $null
        } else {
            $Notification = $JsonParameters.PSobject.Properties["notification"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "thresholds"))) { #optional property not found
            $Thresholds = $null
        } else {
            $Thresholds = $JsonParameters.PSobject.Properties["thresholds"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "created"))) { #optional property not found
            $Created = $null
        } else {
            $Created = $JsonParameters.PSobject.Properties["created"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "lastModified"))) { #optional property not found
            $LastModified = $null
        } else {
            $LastModified = $JsonParameters.PSobject.Properties["lastModified"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "lastReportPeriodStart"))) { #optional property not found
            $LastReportPeriodStart = $null
        } else {
            $LastReportPeriodStart = $JsonParameters.PSobject.Properties["lastReportPeriodStart"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "timeZoneOffset"))) { #optional property not found
            $TimeZoneOffset = $null
        } else {
            $TimeZoneOffset = $JsonParameters.PSobject.Properties["timeZoneOffset"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "testId" = ${TestId}
            "name" = ${Name}
            "testName" = ${TestName}
            "description" = ${Description}
            "frequency" = ${Frequency}
            "isEnabled" = ${IsEnabled}
            "notification" = ${Notification}
            "thresholds" = ${Thresholds}
            "created" = ${Created}
            "lastModified" = ${LastModified}
            "lastReportPeriodStart" = ${LastReportPeriodStart}
            "timeZoneOffset" = ${TimeZoneOffset}
        }

        return $PSO
    }

}


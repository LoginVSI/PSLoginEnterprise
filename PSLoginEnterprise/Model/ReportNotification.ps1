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

Report notification

.PARAMETER IsEnabled
Enable report notification
.PARAMETER Recipient
Notification email address
.PARAMETER Created
Created date-time
.PARAMETER LastModified
Last modified date-time
.OUTPUTS

ReportNotification<PSCustomObject>
#>

function Initialize-LEReportNotification {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${IsEnabled},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Recipient},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Created},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${LastModified}
    )

    Process {
        'Creating PSCustomObject: PSLoginEnterprise => LEReportNotification' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "isEnabled" = ${IsEnabled}
            "recipient" = ${Recipient}
            "created" = ${Created}
            "lastModified" = ${LastModified}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ReportNotification<PSCustomObject>

.DESCRIPTION

Convert from JSON to ReportNotification<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ReportNotification<PSCustomObject>
#>
function ConvertFrom-LEJsonToReportNotification {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSLoginEnterprise => LEReportNotification' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in LEReportNotification
        $AllProperties = ("isEnabled", "recipient", "created", "lastModified")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "isEnabled"))) { #optional property not found
            $IsEnabled = $null
        } else {
            $IsEnabled = $JsonParameters.PSobject.Properties["isEnabled"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "recipient"))) { #optional property not found
            $Recipient = $null
        } else {
            $Recipient = $JsonParameters.PSobject.Properties["recipient"].value
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

        $PSO = [PSCustomObject]@{
            "isEnabled" = ${IsEnabled}
            "recipient" = ${Recipient}
            "created" = ${Created}
            "lastModified" = ${LastModified}
        }

        return $PSO
    }

}


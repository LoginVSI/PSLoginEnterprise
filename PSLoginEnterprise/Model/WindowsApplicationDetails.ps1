#
# Login Enterprise
# v8.0-preview [API Console (Swagger)](/publicApi/swagger/index.html?urls.primaryName=Login%20Enterprise%20API%20v8-preview), [Documentation (ReDoc)](/publicApi/v8-preview/docs/index.html)  v7.0 [API Console (Swagger)](/publicApi/swagger/index.html?urls.primaryName=Login%20Enterprise%20API%20v7), [Documentation (ReDoc)](/publicApi/v7/docs/index.html)  v6.0 [API Console (Swagger)](/publicApi/swagger/index.html?urls.primaryName=Login%20Enterprise%20API%20v6), [Documentation (ReDoc)](/publicApi/v6/docs/index.html)    <br><b>API v8 (preview) – Introduced in Login Enterprise v6.0 and subject to breaking changes.</b></br> <br><b>API v7 – is the recommended version to use. It is the actively developed version starting with Login Enterprise v6.0.</b></br> <br><b>API v6 – is currently supported, but unmaintained as of v6.0.</b></br> <br><b>API v5 and v4 - These versions are removed in v6.0.</b></br>   The Login Enterprise Public API provides documentation and Swagger per version within the product. For additional information please refer to the [documentation](https://support.loginvsi.com/hc/en-us/articles/360009534760) on our website. 
# Version: 7.0
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

Windows application details

.PARAMETER Type
No description available.
.PARAMETER CommandLine
Command line arguments
.PARAMETER WorkingDirectory
Working directory
.OUTPUTS

WindowsApplicationDetails<PSCustomObject>
#>

function Initialize-LEWindowsApplicationDetails {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Type},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${CommandLine},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${WorkingDirectory}
    )

    Process {
        'Creating PSCustomObject: PSLoginEnterprise => LEWindowsApplicationDetails' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Type) {
            throw "invalid value for 'Type', 'Type' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "commandLine" = ${CommandLine}
            "workingDirectory" = ${WorkingDirectory}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to WindowsApplicationDetails<PSCustomObject>

.DESCRIPTION

Convert from JSON to WindowsApplicationDetails<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

WindowsApplicationDetails<PSCustomObject>
#>
function ConvertFrom-LEJsonToWindowsApplicationDetails {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSLoginEnterprise => LEWindowsApplicationDetails' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in LEWindowsApplicationDetails
        $AllProperties = ("type", "commandLine", "workingDirectory")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "commandLine"))) { #optional property not found
            $CommandLine = $null
        } else {
            $CommandLine = $JsonParameters.PSobject.Properties["commandLine"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "workingDirectory"))) { #optional property not found
            $WorkingDirectory = $null
        } else {
            $WorkingDirectory = $JsonParameters.PSobject.Properties["workingDirectory"].value
        }

        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "commandLine" = ${CommandLine}
            "workingDirectory" = ${WorkingDirectory}
        }

        return $PSO
    }

}


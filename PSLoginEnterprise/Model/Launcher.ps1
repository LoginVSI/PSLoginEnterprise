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

Launcher

.PARAMETER MachineName
Launcher name
.PARAMETER SupportedVersion
Indicates whether the version of the launcher is supported
.PARAMETER Sessions
Number of active sessions
.PARAMETER CurrentVersion
Indicates whether the launcher version is current
.PARAMETER Online
Launcher state
.PARAMETER FirstSeen
First seen date-time
.PARAMETER LastStateChange
Last state change date-time
.PARAMETER Properties
Launcher properties
.PARAMETER Groups
Launcher Groups
.PARAMETER LocationId
Location id
.OUTPUTS

Launcher<PSCustomObject>
#>

function Initialize-LELauncher {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${MachineName},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${SupportedVersion},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Sessions},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${CurrentVersion},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Online},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${FirstSeen},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${LastStateChange},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Properties},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Groups},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${LocationId}
    )

    Process {
        'Creating PSCustomObject: PSLoginEnterprise => LELauncher' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "machineName" = ${MachineName}
            "supportedVersion" = ${SupportedVersion}
            "sessions" = ${Sessions}
            "currentVersion" = ${CurrentVersion}
            "online" = ${Online}
            "firstSeen" = ${FirstSeen}
            "lastStateChange" = ${LastStateChange}
            "properties" = ${Properties}
            "groups" = ${Groups}
            "locationId" = ${LocationId}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to Launcher<PSCustomObject>

.DESCRIPTION

Convert from JSON to Launcher<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

Launcher<PSCustomObject>
#>
function ConvertFrom-LEJsonToLauncher {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSLoginEnterprise => LELauncher' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in LELauncher
        $AllProperties = ("machineName", "supportedVersion", "sessions", "currentVersion", "online", "firstSeen", "lastStateChange", "properties", "groups", "locationId")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "machineName"))) { #optional property not found
            $MachineName = $null
        } else {
            $MachineName = $JsonParameters.PSobject.Properties["machineName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "supportedVersion"))) { #optional property not found
            $SupportedVersion = $null
        } else {
            $SupportedVersion = $JsonParameters.PSobject.Properties["supportedVersion"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sessions"))) { #optional property not found
            $Sessions = $null
        } else {
            $Sessions = $JsonParameters.PSobject.Properties["sessions"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "currentVersion"))) { #optional property not found
            $CurrentVersion = $null
        } else {
            $CurrentVersion = $JsonParameters.PSobject.Properties["currentVersion"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "online"))) { #optional property not found
            $Online = $null
        } else {
            $Online = $JsonParameters.PSobject.Properties["online"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "firstSeen"))) { #optional property not found
            $FirstSeen = $null
        } else {
            $FirstSeen = $JsonParameters.PSobject.Properties["firstSeen"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "lastStateChange"))) { #optional property not found
            $LastStateChange = $null
        } else {
            $LastStateChange = $JsonParameters.PSobject.Properties["lastStateChange"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "properties"))) { #optional property not found
            $Properties = $null
        } else {
            $Properties = $JsonParameters.PSobject.Properties["properties"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "groups"))) { #optional property not found
            $Groups = $null
        } else {
            $Groups = $JsonParameters.PSobject.Properties["groups"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "locationId"))) { #optional property not found
            $LocationId = $null
        } else {
            $LocationId = $JsonParameters.PSobject.Properties["locationId"].value
        }

        $PSO = [PSCustomObject]@{
            "machineName" = ${MachineName}
            "supportedVersion" = ${SupportedVersion}
            "sessions" = ${Sessions}
            "currentVersion" = ${CurrentVersion}
            "online" = ${Online}
            "firstSeen" = ${FirstSeen}
            "lastStateChange" = ${LastStateChange}
            "properties" = ${Properties}
            "groups" = ${Groups}
            "locationId" = ${LocationId}
        }

        return $PSO
    }

}


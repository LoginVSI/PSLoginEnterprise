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

Web application

.PARAMETER Type
No description available.
.PARAMETER BrowserName
No description available.
.PARAMETER Url
Start URL
.PARAMETER Id
Application id
.PARAMETER Name
Application name
.PARAMETER Description
Application description
.PARAMETER Username
Application user name
.PARAMETER Created
Created date-time
.PARAMETER LastModified
Last modified date-time
.PARAMETER Script
Application script
.PARAMETER Timers
Application timers
.PARAMETER TakeScreenshots
If set to true, it is allowed taking screenshots in case of application error
.PARAMETER HasPassword
Has password
.OUTPUTS

WebApplication<PSCustomObject>
#>

function Initialize-LEWebApplication {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Type},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("chrome", "edge42", "edge44", "edgeChromium", "firefox")]
        [PSCustomObject]
        ${BrowserName},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Url},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Username},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Created},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${LastModified},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Script},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Timers},
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${TakeScreenshots},
        [Parameter(Position = 12, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${HasPassword}
    )

    Process {
        'Creating PSCustomObject: PSLoginEnterprise => LEWebApplication' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Type) {
            throw "invalid value for 'Type', 'Type' cannot be null."
        }

        if (!$Url -and $Url.length -gt 256) {
            throw "invalid value for 'Url', the character length must be smaller than or equal to 256."
        }


        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "browserName" = ${BrowserName}
            "url" = ${Url}
            "id" = ${Id}
            "name" = ${Name}
            "description" = ${Description}
            "username" = ${Username}
            "created" = ${Created}
            "lastModified" = ${LastModified}
            "script" = ${Script}
            "timers" = ${Timers}
            "takeScreenshots" = ${TakeScreenshots}
            "hasPassword" = ${HasPassword}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to WebApplication<PSCustomObject>

.DESCRIPTION

Convert from JSON to WebApplication<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

WebApplication<PSCustomObject>
#>
function ConvertFrom-LEJsonToWebApplication {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSLoginEnterprise => LEWebApplication' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in LEWebApplication
        $AllProperties = ("type", "browserName", "url", "id", "name", "description", "username", "created", "lastModified", "script", "timers", "takeScreenshots", "hasPassword")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "browserName"))) { #optional property not found
            $BrowserName = $null
        } else {
            $BrowserName = $JsonParameters.PSobject.Properties["browserName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "url"))) { #optional property not found
            $Url = $null
        } else {
            $Url = $JsonParameters.PSobject.Properties["url"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "username"))) { #optional property not found
            $Username = $null
        } else {
            $Username = $JsonParameters.PSobject.Properties["username"].value
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "script"))) { #optional property not found
            $Script = $null
        } else {
            $Script = $JsonParameters.PSobject.Properties["script"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "timers"))) { #optional property not found
            $Timers = $null
        } else {
            $Timers = $JsonParameters.PSobject.Properties["timers"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "takeScreenshots"))) { #optional property not found
            $TakeScreenshots = $null
        } else {
            $TakeScreenshots = $JsonParameters.PSobject.Properties["takeScreenshots"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "hasPassword"))) { #optional property not found
            $HasPassword = $null
        } else {
            $HasPassword = $JsonParameters.PSobject.Properties["hasPassword"].value
        }

        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "browserName" = ${BrowserName}
            "url" = ${Url}
            "id" = ${Id}
            "name" = ${Name}
            "description" = ${Description}
            "username" = ${Username}
            "created" = ${Created}
            "lastModified" = ${LastModified}
            "script" = ${Script}
            "timers" = ${Timers}
            "takeScreenshots" = ${TakeScreenshots}
            "hasPassword" = ${HasPassword}
        }

        return $PSO
    }

}


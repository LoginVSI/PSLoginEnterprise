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

Windows application creation data

.PARAMETER Type
No description available.
.PARAMETER CommandLine
Command line arguments
.PARAMETER WorkingDirectory
Working directory
.PARAMETER Name
Application name
.PARAMETER Description
Application description
.PARAMETER Username
Application user name
.PARAMETER Password
Application password
.PARAMETER TakeScreenshots
Enable/disable taking screenshots in case of application error
.PARAMETER ScriptContent
Script content
.OUTPUTS

WindowsApplicationCreate<PSCustomObject>
#>

function Initialize-LEWindowsApplicationCreate {
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
        ${WorkingDirectory},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Username},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Password},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${TakeScreenshots},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ScriptContent}
    )

    Process {
        'Creating PSCustomObject: PSLoginEnterprise => LEWindowsApplicationCreate' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Type) {
            throw "invalid value for 'Type', 'Type' cannot be null."
        }

        if ($null -eq $CommandLine) {
            throw "invalid value for 'CommandLine', 'CommandLine' cannot be null."
        }

        if ($CommandLine.length -gt 512) {
            throw "invalid value for 'CommandLine', the character length must be smaller than or equal to 512."
        }

        if (!$WorkingDirectory -and $WorkingDirectory.length -gt 256) {
            throw "invalid value for 'WorkingDirectory', the character length must be smaller than or equal to 256."
        }

        if ($null -eq $Name) {
            throw "invalid value for 'Name', 'Name' cannot be null."
        }

        if ($Name.length -gt 64) {
            throw "invalid value for 'Name', the character length must be smaller than or equal to 64."
        }

        if (!$Description -and $Description.length -gt 256) {
            throw "invalid value for 'Description', the character length must be smaller than or equal to 256."
        }

        if (!$Username -and $Username.length -gt 64) {
            throw "invalid value for 'Username', the character length must be smaller than or equal to 64."
        }

        if (!$Password -and $Password.length -gt 64) {
            throw "invalid value for 'Password', the character length must be smaller than or equal to 64."
        }


        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "commandLine" = ${CommandLine}
            "workingDirectory" = ${WorkingDirectory}
            "name" = ${Name}
            "description" = ${Description}
            "username" = ${Username}
            "password" = ${Password}
            "takeScreenshots" = ${TakeScreenshots}
            "scriptContent" = ${ScriptContent}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to WindowsApplicationCreate<PSCustomObject>

.DESCRIPTION

Convert from JSON to WindowsApplicationCreate<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

WindowsApplicationCreate<PSCustomObject>
#>
function ConvertFrom-LEJsonToWindowsApplicationCreate {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSLoginEnterprise => LEWindowsApplicationCreate' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in LEWindowsApplicationCreate
        $AllProperties = ("type", "commandLine", "workingDirectory", "name", "description", "username", "password", "takeScreenshots", "scriptContent")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "commandLine"))) {
            throw "Error! JSON cannot be serialized due to the required property 'commandLine' missing."
        } else {
            $CommandLine = $JsonParameters.PSobject.Properties["commandLine"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) {
            throw "Error! JSON cannot be serialized due to the required property 'name' missing."
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "workingDirectory"))) { #optional property not found
            $WorkingDirectory = $null
        } else {
            $WorkingDirectory = $JsonParameters.PSobject.Properties["workingDirectory"].value
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "password"))) { #optional property not found
            $Password = $null
        } else {
            $Password = $JsonParameters.PSobject.Properties["password"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "takeScreenshots"))) { #optional property not found
            $TakeScreenshots = $null
        } else {
            $TakeScreenshots = $JsonParameters.PSobject.Properties["takeScreenshots"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "scriptContent"))) { #optional property not found
            $ScriptContent = $null
        } else {
            $ScriptContent = $JsonParameters.PSobject.Properties["scriptContent"].value
        }

        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "commandLine" = ${CommandLine}
            "workingDirectory" = ${WorkingDirectory}
            "name" = ${Name}
            "description" = ${Description}
            "username" = ${Username}
            "password" = ${Password}
            "takeScreenshots" = ${TakeScreenshots}
            "scriptContent" = ${ScriptContent}
        }

        return $PSO
    }

}


#
# Login Enterprise
# v7.0-preview [API Console (Swagger)](/publicApi/swagger/index.html?urls.primaryName=Login%20Enterprise%20API%20v7-preview), [Documentation (ReDoc)](/publicApi/v7-preview/docs/index.html)  v6.0 [API Console (Swagger)](/publicApi/swagger/index.html?urls.primaryName=Login%20Enterprise%20API%20v6), [Documentation (ReDoc)](/publicApi/v6/docs/index.html)  v5.0 [API Console (Swagger)](/publicApi/swagger/index.html?urls.primaryName=Login%20Enterprise%20API%20v5), [Documentation (ReDoc)](/publicApi/v5/docs/index.html)  v4.0 [API Console (Swagger)](/publicApi/swagger/index.html?urls.primaryName=Login%20Enterprise%20API%20v4), [Documentation (ReDoc)](/publicApi/v4/docs/index.html)    <br><b>API v7 (preview) – Introduced in Login Enterprise v5.0 and subject to breaking changes when API v7 becomes generally available.</b></br> <br><b>API v6 – is the recommended version to use. It is the actively developed version starting with Login Enterprise v4.10.</b></br> <br><b>API v5 – is currently supported but unmaintained as of v4.10.</b></br> <br><b>API v4 – is deprecated starting with v4.10. Will be removed in Q3 2023.</b></br>   The Login Enterprise Public API provides documentation and Swagger per version within the product. For additional information please refer to the [documentation](https://support.loginvsi.com/hc/en-us/articles/360009534760) on our website. 
# Version: 7.0-preview
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

Enum VsiMaxState.

.DESCRIPTION

VSImax State
#>

enum VsiMaxState {
    # enum value: "disabled"
    disabled
    # enum value: "inProgress"
    inProgress
    # enum value: "completed"
    completed
    # enum value: "unavailable"
    unavailable
    # enum value: "aboveThreshold"
    aboveThreshold
    # enum value: "belowThreshold"
    belowThreshold
    # enum value: "belowSessionCount"
    belowSessionCount
}


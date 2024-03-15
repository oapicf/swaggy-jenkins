#
# Swaggy Jenkins
# Jenkins API clients generated from Swagger / Open API specification
# Version: 2.0.1-pre.0
# Contact: blah+oapicf@cliffano.com
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER Self
No description available.
.PARAMETER Class
No description available.
.OUTPUTS

GithubRespositoryContainerlinks<PSCustomObject>
#>

function Initialize-GithubRespositoryContainerlinks {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Self},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Class}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => GithubRespositoryContainerlinks' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "self" = ${Self}
            "_class" = ${Class}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to GithubRespositoryContainerlinks<PSCustomObject>

.DESCRIPTION

Convert from JSON to GithubRespositoryContainerlinks<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

GithubRespositoryContainerlinks<PSCustomObject>
#>
function ConvertFrom-JsonToGithubRespositoryContainerlinks {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => GithubRespositoryContainerlinks' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in GithubRespositoryContainerlinks
        $AllProperties = ("self", "_class")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "self"))) { #optional property not found
            $Self = $null
        } else {
            $Self = $JsonParameters.PSobject.Properties["self"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "_class"))) { #optional property not found
            $Class = $null
        } else {
            $Class = $JsonParameters.PSobject.Properties["_class"].value
        }

        $PSO = [PSCustomObject]@{
            "self" = ${Self}
            "_class" = ${Class}
        }

        return $PSO
    }

}


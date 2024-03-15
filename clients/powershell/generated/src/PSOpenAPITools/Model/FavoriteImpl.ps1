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

.PARAMETER Class
No description available.
.PARAMETER Links
No description available.
.PARAMETER Item
No description available.
.OUTPUTS

FavoriteImpl<PSCustomObject>
#>

function Initialize-FavoriteImpl {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Class},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Links},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Item}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => FavoriteImpl' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "_class" = ${Class}
            "_links" = ${Links}
            "item" = ${Item}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to FavoriteImpl<PSCustomObject>

.DESCRIPTION

Convert from JSON to FavoriteImpl<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

FavoriteImpl<PSCustomObject>
#>
function ConvertFrom-JsonToFavoriteImpl {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => FavoriteImpl' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in FavoriteImpl
        $AllProperties = ("_class", "_links", "item")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "_class"))) { #optional property not found
            $Class = $null
        } else {
            $Class = $JsonParameters.PSobject.Properties["_class"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "_links"))) { #optional property not found
            $Links = $null
        } else {
            $Links = $JsonParameters.PSobject.Properties["_links"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "item"))) { #optional property not found
            $Item = $null
        } else {
            $Item = $JsonParameters.PSobject.Properties["item"].value
        }

        $PSO = [PSCustomObject]@{
            "_class" = ${Class}
            "_links" = ${Links}
            "item" = ${Item}
        }

        return $PSO
    }

}


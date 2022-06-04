#
# Swaggy Jenkins
# Jenkins API clients generated from Swagger / Open API specification
# Version: 1.5.1-pre.0
# Contact: blah@cliffano.com
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER Class
No description available.
.OUTPUTS

FreeStyleProjectactions<PSCustomObject>
#>

function Initialize-FreeStyleProjectactions {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Class}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => FreeStyleProjectactions' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "_class" = ${Class}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to FreeStyleProjectactions<PSCustomObject>

.DESCRIPTION

Convert from JSON to FreeStyleProjectactions<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

FreeStyleProjectactions<PSCustomObject>
#>
function ConvertFrom-JsonToFreeStyleProjectactions {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => FreeStyleProjectactions' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in FreeStyleProjectactions
        $AllProperties = ("_class")
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

        $PSO = [PSCustomObject]@{
            "_class" = ${Class}
        }

        return $PSO
    }

}


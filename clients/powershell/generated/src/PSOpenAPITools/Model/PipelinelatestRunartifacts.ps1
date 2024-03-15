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

.PARAMETER Name
No description available.
.PARAMETER Size
No description available.
.PARAMETER Url
No description available.
.PARAMETER Class
No description available.
.OUTPUTS

PipelinelatestRunartifacts<PSCustomObject>
#>

function Initialize-PipelinelatestRunartifacts {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Size},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Url},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Class}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => PipelinelatestRunartifacts' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "size" = ${Size}
            "url" = ${Url}
            "_class" = ${Class}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to PipelinelatestRunartifacts<PSCustomObject>

.DESCRIPTION

Convert from JSON to PipelinelatestRunartifacts<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

PipelinelatestRunartifacts<PSCustomObject>
#>
function ConvertFrom-JsonToPipelinelatestRunartifacts {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => PipelinelatestRunartifacts' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in PipelinelatestRunartifacts
        $AllProperties = ("name", "size", "url", "_class")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "size"))) { #optional property not found
            $Size = $null
        } else {
            $Size = $JsonParameters.PSobject.Properties["size"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "url"))) { #optional property not found
            $Url = $null
        } else {
            $Url = $JsonParameters.PSobject.Properties["url"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "_class"))) { #optional property not found
            $Class = $null
        } else {
            $Class = $JsonParameters.PSobject.Properties["_class"].value
        }

        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "size" = ${Size}
            "url" = ${Url}
            "_class" = ${Class}
        }

        return $PSO
    }

}


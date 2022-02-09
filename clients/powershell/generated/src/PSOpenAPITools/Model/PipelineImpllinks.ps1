#
# Swaggy Jenkins
# Jenkins API clients generated from Swagger / Open API specification
# Version: 1.1.2-pre.0
# Contact: blah@cliffano.com
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER Runs
No description available.
.PARAMETER Self
No description available.
.PARAMETER Queue
No description available.
.PARAMETER Actions
No description available.
.PARAMETER Class
No description available.
.OUTPUTS

PipelineImpllinks<PSCustomObject>
#>

function Initialize-PipelineImpllinks {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Runs},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Self},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Queue},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Actions},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Class}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => PipelineImpllinks' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "runs" = ${Runs}
            "self" = ${Self}
            "queue" = ${Queue}
            "actions" = ${Actions}
            "_class" = ${Class}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to PipelineImpllinks<PSCustomObject>

.DESCRIPTION

Convert from JSON to PipelineImpllinks<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

PipelineImpllinks<PSCustomObject>
#>
function ConvertFrom-JsonToPipelineImpllinks {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => PipelineImpllinks' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in PipelineImpllinks
        $AllProperties = ("runs", "self", "queue", "actions", "_class")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "runs"))) { #optional property not found
            $Runs = $null
        } else {
            $Runs = $JsonParameters.PSobject.Properties["runs"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "self"))) { #optional property not found
            $Self = $null
        } else {
            $Self = $JsonParameters.PSobject.Properties["self"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "queue"))) { #optional property not found
            $Queue = $null
        } else {
            $Queue = $JsonParameters.PSobject.Properties["queue"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "actions"))) { #optional property not found
            $Actions = $null
        } else {
            $Actions = $JsonParameters.PSobject.Properties["actions"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "_class"))) { #optional property not found
            $Class = $null
        } else {
            $Class = $JsonParameters.PSobject.Properties["_class"].value
        }

        $PSO = [PSCustomObject]@{
            "runs" = ${Runs}
            "self" = ${Self}
            "queue" = ${Queue}
            "actions" = ${Actions}
            "_class" = ${Class}
        }

        return $PSO
    }

}


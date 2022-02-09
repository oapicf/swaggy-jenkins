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

.PARAMETER Class
No description available.
.PARAMETER ExpectedBuildNumber
No description available.
.PARAMETER Id
No description available.
.PARAMETER Pipeline
No description available.
.PARAMETER QueuedTime
No description available.
.OUTPUTS

QueueItemImpl<PSCustomObject>
#>

function Initialize-QueueItemImpl {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Class},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${ExpectedBuildNumber},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Pipeline},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${QueuedTime}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => QueueItemImpl' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "_class" = ${Class}
            "expectedBuildNumber" = ${ExpectedBuildNumber}
            "id" = ${Id}
            "pipeline" = ${Pipeline}
            "queuedTime" = ${QueuedTime}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to QueueItemImpl<PSCustomObject>

.DESCRIPTION

Convert from JSON to QueueItemImpl<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

QueueItemImpl<PSCustomObject>
#>
function ConvertFrom-JsonToQueueItemImpl {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => QueueItemImpl' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in QueueItemImpl
        $AllProperties = ("_class", "expectedBuildNumber", "id", "pipeline", "queuedTime")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "expectedBuildNumber"))) { #optional property not found
            $ExpectedBuildNumber = $null
        } else {
            $ExpectedBuildNumber = $JsonParameters.PSobject.Properties["expectedBuildNumber"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "pipeline"))) { #optional property not found
            $Pipeline = $null
        } else {
            $Pipeline = $JsonParameters.PSobject.Properties["pipeline"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "queuedTime"))) { #optional property not found
            $QueuedTime = $null
        } else {
            $QueuedTime = $JsonParameters.PSobject.Properties["queuedTime"].value
        }

        $PSO = [PSCustomObject]@{
            "_class" = ${Class}
            "expectedBuildNumber" = ${ExpectedBuildNumber}
            "id" = ${Id}
            "pipeline" = ${Pipeline}
            "queuedTime" = ${QueuedTime}
        }

        return $PSO
    }

}


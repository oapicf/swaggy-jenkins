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
.PARAMETER Artifacts
No description available.
.PARAMETER DurationInMillis
No description available.
.PARAMETER EstimatedDurationInMillis
No description available.
.PARAMETER EnQueueTime
No description available.
.PARAMETER EndTime
No description available.
.PARAMETER Id
No description available.
.PARAMETER Organization
No description available.
.PARAMETER Pipeline
No description available.
.PARAMETER Result
No description available.
.PARAMETER RunSummary
No description available.
.PARAMETER StartTime
No description available.
.PARAMETER State
No description available.
.PARAMETER Type
No description available.
.PARAMETER CommitId
No description available.
.OUTPUTS

PipelineActivity<PSCustomObject>
#>

function Initialize-PipelineActivity {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Class},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Artifacts},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${DurationInMillis},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${EstimatedDurationInMillis},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${EnQueueTime},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${EndTime},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Organization},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Pipeline},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Result},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${RunSummary},
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${StartTime},
        [Parameter(Position = 12, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${State},
        [Parameter(Position = 13, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Type},
        [Parameter(Position = 14, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${CommitId}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => PipelineActivity' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "_class" = ${Class}
            "artifacts" = ${Artifacts}
            "durationInMillis" = ${DurationInMillis}
            "estimatedDurationInMillis" = ${EstimatedDurationInMillis}
            "enQueueTime" = ${EnQueueTime}
            "endTime" = ${EndTime}
            "id" = ${Id}
            "organization" = ${Organization}
            "pipeline" = ${Pipeline}
            "result" = ${Result}
            "runSummary" = ${RunSummary}
            "startTime" = ${StartTime}
            "state" = ${State}
            "type" = ${Type}
            "commitId" = ${CommitId}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to PipelineActivity<PSCustomObject>

.DESCRIPTION

Convert from JSON to PipelineActivity<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

PipelineActivity<PSCustomObject>
#>
function ConvertFrom-JsonToPipelineActivity {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => PipelineActivity' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in PipelineActivity
        $AllProperties = ("_class", "artifacts", "durationInMillis", "estimatedDurationInMillis", "enQueueTime", "endTime", "id", "organization", "pipeline", "result", "runSummary", "startTime", "state", "type", "commitId")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "artifacts"))) { #optional property not found
            $Artifacts = $null
        } else {
            $Artifacts = $JsonParameters.PSobject.Properties["artifacts"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "durationInMillis"))) { #optional property not found
            $DurationInMillis = $null
        } else {
            $DurationInMillis = $JsonParameters.PSobject.Properties["durationInMillis"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "estimatedDurationInMillis"))) { #optional property not found
            $EstimatedDurationInMillis = $null
        } else {
            $EstimatedDurationInMillis = $JsonParameters.PSobject.Properties["estimatedDurationInMillis"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "enQueueTime"))) { #optional property not found
            $EnQueueTime = $null
        } else {
            $EnQueueTime = $JsonParameters.PSobject.Properties["enQueueTime"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "endTime"))) { #optional property not found
            $EndTime = $null
        } else {
            $EndTime = $JsonParameters.PSobject.Properties["endTime"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "organization"))) { #optional property not found
            $Organization = $null
        } else {
            $Organization = $JsonParameters.PSobject.Properties["organization"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "pipeline"))) { #optional property not found
            $Pipeline = $null
        } else {
            $Pipeline = $JsonParameters.PSobject.Properties["pipeline"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "result"))) { #optional property not found
            $Result = $null
        } else {
            $Result = $JsonParameters.PSobject.Properties["result"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "runSummary"))) { #optional property not found
            $RunSummary = $null
        } else {
            $RunSummary = $JsonParameters.PSobject.Properties["runSummary"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "startTime"))) { #optional property not found
            $StartTime = $null
        } else {
            $StartTime = $JsonParameters.PSobject.Properties["startTime"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "state"))) { #optional property not found
            $State = $null
        } else {
            $State = $JsonParameters.PSobject.Properties["state"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) { #optional property not found
            $Type = $null
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "commitId"))) { #optional property not found
            $CommitId = $null
        } else {
            $CommitId = $JsonParameters.PSobject.Properties["commitId"].value
        }

        $PSO = [PSCustomObject]@{
            "_class" = ${Class}
            "artifacts" = ${Artifacts}
            "durationInMillis" = ${DurationInMillis}
            "estimatedDurationInMillis" = ${EstimatedDurationInMillis}
            "enQueueTime" = ${EnQueueTime}
            "endTime" = ${EndTime}
            "id" = ${Id}
            "organization" = ${Organization}
            "pipeline" = ${Pipeline}
            "result" = ${Result}
            "runSummary" = ${RunSummary}
            "startTime" = ${StartTime}
            "state" = ${State}
            "type" = ${Type}
            "commitId" = ${CommitId}
        }

        return $PSO
    }

}


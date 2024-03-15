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
.PARAMETER Actions
No description available.
.PARAMETER Blocked
No description available.
.PARAMETER Buildable
No description available.
.PARAMETER Id
No description available.
.PARAMETER InQueueSince
No description available.
.PARAMETER Params
No description available.
.PARAMETER Stuck
No description available.
.PARAMETER Task
No description available.
.PARAMETER Url
No description available.
.PARAMETER Why
No description available.
.PARAMETER Cancelled
No description available.
.PARAMETER Executable
No description available.
.OUTPUTS

QueueLeftItem<PSCustomObject>
#>

function Initialize-QueueLeftItem {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Class},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Actions},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Blocked},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Buildable},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Id},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${InQueueSince},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Params},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Stuck},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Task},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Url},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Why},
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Cancelled},
        [Parameter(Position = 12, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Executable}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => QueueLeftItem' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "_class" = ${Class}
            "actions" = ${Actions}
            "blocked" = ${Blocked}
            "buildable" = ${Buildable}
            "id" = ${Id}
            "inQueueSince" = ${InQueueSince}
            "params" = ${Params}
            "stuck" = ${Stuck}
            "task" = ${Task}
            "url" = ${Url}
            "why" = ${Why}
            "cancelled" = ${Cancelled}
            "executable" = ${Executable}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to QueueLeftItem<PSCustomObject>

.DESCRIPTION

Convert from JSON to QueueLeftItem<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

QueueLeftItem<PSCustomObject>
#>
function ConvertFrom-JsonToQueueLeftItem {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => QueueLeftItem' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in QueueLeftItem
        $AllProperties = ("_class", "actions", "blocked", "buildable", "id", "inQueueSince", "params", "stuck", "task", "url", "why", "cancelled", "executable")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "actions"))) { #optional property not found
            $Actions = $null
        } else {
            $Actions = $JsonParameters.PSobject.Properties["actions"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "blocked"))) { #optional property not found
            $Blocked = $null
        } else {
            $Blocked = $JsonParameters.PSobject.Properties["blocked"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "buildable"))) { #optional property not found
            $Buildable = $null
        } else {
            $Buildable = $JsonParameters.PSobject.Properties["buildable"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "inQueueSince"))) { #optional property not found
            $InQueueSince = $null
        } else {
            $InQueueSince = $JsonParameters.PSobject.Properties["inQueueSince"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "params"))) { #optional property not found
            $Params = $null
        } else {
            $Params = $JsonParameters.PSobject.Properties["params"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "stuck"))) { #optional property not found
            $Stuck = $null
        } else {
            $Stuck = $JsonParameters.PSobject.Properties["stuck"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "task"))) { #optional property not found
            $Task = $null
        } else {
            $Task = $JsonParameters.PSobject.Properties["task"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "url"))) { #optional property not found
            $Url = $null
        } else {
            $Url = $JsonParameters.PSobject.Properties["url"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "why"))) { #optional property not found
            $Why = $null
        } else {
            $Why = $JsonParameters.PSobject.Properties["why"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "cancelled"))) { #optional property not found
            $Cancelled = $null
        } else {
            $Cancelled = $JsonParameters.PSobject.Properties["cancelled"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "executable"))) { #optional property not found
            $Executable = $null
        } else {
            $Executable = $JsonParameters.PSobject.Properties["executable"].value
        }

        $PSO = [PSCustomObject]@{
            "_class" = ${Class}
            "actions" = ${Actions}
            "blocked" = ${Blocked}
            "buildable" = ${Buildable}
            "id" = ${Id}
            "inQueueSince" = ${InQueueSince}
            "params" = ${Params}
            "stuck" = ${Stuck}
            "task" = ${Task}
            "url" = ${Url}
            "why" = ${Why}
            "cancelled" = ${Cancelled}
            "executable" = ${Executable}
        }

        return $PSO
    }

}


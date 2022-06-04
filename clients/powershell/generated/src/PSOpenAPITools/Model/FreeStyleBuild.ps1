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
.PARAMETER Number
No description available.
.PARAMETER Url
No description available.
.PARAMETER Actions
No description available.
.PARAMETER Building
No description available.
.PARAMETER Description
No description available.
.PARAMETER DisplayName
No description available.
.PARAMETER Duration
No description available.
.PARAMETER EstimatedDuration
No description available.
.PARAMETER Executor
No description available.
.PARAMETER FullDisplayName
No description available.
.PARAMETER Id
No description available.
.PARAMETER KeepLog
No description available.
.PARAMETER QueueId
No description available.
.PARAMETER Result
No description available.
.PARAMETER Timestamp
No description available.
.PARAMETER BuiltOn
No description available.
.PARAMETER ChangeSet
No description available.
.OUTPUTS

FreeStyleBuild<PSCustomObject>
#>

function Initialize-FreeStyleBuild {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Class},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Number},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Url},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Actions},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Building},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DisplayName},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Duration},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${EstimatedDuration},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Executor},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${FullDisplayName},
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 12, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${KeepLog},
        [Parameter(Position = 13, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${QueueId},
        [Parameter(Position = 14, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Result},
        [Parameter(Position = 15, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Timestamp},
        [Parameter(Position = 16, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${BuiltOn},
        [Parameter(Position = 17, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${ChangeSet}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => FreeStyleBuild' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "_class" = ${Class}
            "number" = ${Number}
            "url" = ${Url}
            "actions" = ${Actions}
            "building" = ${Building}
            "description" = ${Description}
            "displayName" = ${DisplayName}
            "duration" = ${Duration}
            "estimatedDuration" = ${EstimatedDuration}
            "executor" = ${Executor}
            "fullDisplayName" = ${FullDisplayName}
            "id" = ${Id}
            "keepLog" = ${KeepLog}
            "queueId" = ${QueueId}
            "result" = ${Result}
            "timestamp" = ${Timestamp}
            "builtOn" = ${BuiltOn}
            "changeSet" = ${ChangeSet}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to FreeStyleBuild<PSCustomObject>

.DESCRIPTION

Convert from JSON to FreeStyleBuild<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

FreeStyleBuild<PSCustomObject>
#>
function ConvertFrom-JsonToFreeStyleBuild {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => FreeStyleBuild' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in FreeStyleBuild
        $AllProperties = ("_class", "number", "url", "actions", "building", "description", "displayName", "duration", "estimatedDuration", "executor", "fullDisplayName", "id", "keepLog", "queueId", "result", "timestamp", "builtOn", "changeSet")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "number"))) { #optional property not found
            $Number = $null
        } else {
            $Number = $JsonParameters.PSobject.Properties["number"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "url"))) { #optional property not found
            $Url = $null
        } else {
            $Url = $JsonParameters.PSobject.Properties["url"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "actions"))) { #optional property not found
            $Actions = $null
        } else {
            $Actions = $JsonParameters.PSobject.Properties["actions"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "building"))) { #optional property not found
            $Building = $null
        } else {
            $Building = $JsonParameters.PSobject.Properties["building"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "displayName"))) { #optional property not found
            $DisplayName = $null
        } else {
            $DisplayName = $JsonParameters.PSobject.Properties["displayName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "duration"))) { #optional property not found
            $Duration = $null
        } else {
            $Duration = $JsonParameters.PSobject.Properties["duration"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "estimatedDuration"))) { #optional property not found
            $EstimatedDuration = $null
        } else {
            $EstimatedDuration = $JsonParameters.PSobject.Properties["estimatedDuration"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "executor"))) { #optional property not found
            $Executor = $null
        } else {
            $Executor = $JsonParameters.PSobject.Properties["executor"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "fullDisplayName"))) { #optional property not found
            $FullDisplayName = $null
        } else {
            $FullDisplayName = $JsonParameters.PSobject.Properties["fullDisplayName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "keepLog"))) { #optional property not found
            $KeepLog = $null
        } else {
            $KeepLog = $JsonParameters.PSobject.Properties["keepLog"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "queueId"))) { #optional property not found
            $QueueId = $null
        } else {
            $QueueId = $JsonParameters.PSobject.Properties["queueId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "result"))) { #optional property not found
            $Result = $null
        } else {
            $Result = $JsonParameters.PSobject.Properties["result"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "timestamp"))) { #optional property not found
            $Timestamp = $null
        } else {
            $Timestamp = $JsonParameters.PSobject.Properties["timestamp"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "builtOn"))) { #optional property not found
            $BuiltOn = $null
        } else {
            $BuiltOn = $JsonParameters.PSobject.Properties["builtOn"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "changeSet"))) { #optional property not found
            $ChangeSet = $null
        } else {
            $ChangeSet = $JsonParameters.PSobject.Properties["changeSet"].value
        }

        $PSO = [PSCustomObject]@{
            "_class" = ${Class}
            "number" = ${Number}
            "url" = ${Url}
            "actions" = ${Actions}
            "building" = ${Building}
            "description" = ${Description}
            "displayName" = ${DisplayName}
            "duration" = ${Duration}
            "estimatedDuration" = ${EstimatedDuration}
            "executor" = ${Executor}
            "fullDisplayName" = ${FullDisplayName}
            "id" = ${Id}
            "keepLog" = ${KeepLog}
            "queueId" = ${QueueId}
            "result" = ${Result}
            "timestamp" = ${Timestamp}
            "builtOn" = ${BuiltOn}
            "changeSet" = ${ChangeSet}
        }

        return $PSO
    }

}


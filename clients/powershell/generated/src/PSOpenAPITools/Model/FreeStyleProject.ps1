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
.PARAMETER Name
No description available.
.PARAMETER Url
No description available.
.PARAMETER Color
No description available.
.PARAMETER Actions
No description available.
.PARAMETER Description
No description available.
.PARAMETER DisplayName
No description available.
.PARAMETER DisplayNameOrNull
No description available.
.PARAMETER FullDisplayName
No description available.
.PARAMETER FullName
No description available.
.PARAMETER Buildable
No description available.
.PARAMETER Builds
No description available.
.PARAMETER FirstBuild
No description available.
.PARAMETER HealthReport
No description available.
.PARAMETER InQueue
No description available.
.PARAMETER KeepDependencies
No description available.
.PARAMETER LastBuild
No description available.
.PARAMETER LastCompletedBuild
No description available.
.PARAMETER LastFailedBuild
No description available.
.PARAMETER LastStableBuild
No description available.
.PARAMETER LastSuccessfulBuild
No description available.
.PARAMETER LastUnstableBuild
No description available.
.PARAMETER LastUnsuccessfulBuild
No description available.
.PARAMETER NextBuildNumber
No description available.
.PARAMETER QueueItem
No description available.
.PARAMETER ConcurrentBuild
No description available.
.PARAMETER Scm
No description available.
.OUTPUTS

FreeStyleProject<PSCustomObject>
#>

function Initialize-FreeStyleProject {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Class},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Url},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Color},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Actions},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DisplayName},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DisplayNameOrNull},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${FullDisplayName},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${FullName},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Buildable},
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Builds},
        [Parameter(Position = 12, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${FirstBuild},
        [Parameter(Position = 13, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${HealthReport},
        [Parameter(Position = 14, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${InQueue},
        [Parameter(Position = 15, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${KeepDependencies},
        [Parameter(Position = 16, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${LastBuild},
        [Parameter(Position = 17, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${LastCompletedBuild},
        [Parameter(Position = 18, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${LastFailedBuild},
        [Parameter(Position = 19, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${LastStableBuild},
        [Parameter(Position = 20, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${LastSuccessfulBuild},
        [Parameter(Position = 21, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${LastUnstableBuild},
        [Parameter(Position = 22, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${LastUnsuccessfulBuild},
        [Parameter(Position = 23, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${NextBuildNumber},
        [Parameter(Position = 24, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${QueueItem},
        [Parameter(Position = 25, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${ConcurrentBuild},
        [Parameter(Position = 26, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Scm}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => FreeStyleProject' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "_class" = ${Class}
            "name" = ${Name}
            "url" = ${Url}
            "color" = ${Color}
            "actions" = ${Actions}
            "description" = ${Description}
            "displayName" = ${DisplayName}
            "displayNameOrNull" = ${DisplayNameOrNull}
            "fullDisplayName" = ${FullDisplayName}
            "fullName" = ${FullName}
            "buildable" = ${Buildable}
            "builds" = ${Builds}
            "firstBuild" = ${FirstBuild}
            "healthReport" = ${HealthReport}
            "inQueue" = ${InQueue}
            "keepDependencies" = ${KeepDependencies}
            "lastBuild" = ${LastBuild}
            "lastCompletedBuild" = ${LastCompletedBuild}
            "lastFailedBuild" = ${LastFailedBuild}
            "lastStableBuild" = ${LastStableBuild}
            "lastSuccessfulBuild" = ${LastSuccessfulBuild}
            "lastUnstableBuild" = ${LastUnstableBuild}
            "lastUnsuccessfulBuild" = ${LastUnsuccessfulBuild}
            "nextBuildNumber" = ${NextBuildNumber}
            "queueItem" = ${QueueItem}
            "concurrentBuild" = ${ConcurrentBuild}
            "scm" = ${Scm}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to FreeStyleProject<PSCustomObject>

.DESCRIPTION

Convert from JSON to FreeStyleProject<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

FreeStyleProject<PSCustomObject>
#>
function ConvertFrom-JsonToFreeStyleProject {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => FreeStyleProject' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in FreeStyleProject
        $AllProperties = ("_class", "name", "url", "color", "actions", "description", "displayName", "displayNameOrNull", "fullDisplayName", "fullName", "buildable", "builds", "firstBuild", "healthReport", "inQueue", "keepDependencies", "lastBuild", "lastCompletedBuild", "lastFailedBuild", "lastStableBuild", "lastSuccessfulBuild", "lastUnstableBuild", "lastUnsuccessfulBuild", "nextBuildNumber", "queueItem", "concurrentBuild", "scm")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "url"))) { #optional property not found
            $Url = $null
        } else {
            $Url = $JsonParameters.PSobject.Properties["url"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "color"))) { #optional property not found
            $Color = $null
        } else {
            $Color = $JsonParameters.PSobject.Properties["color"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "actions"))) { #optional property not found
            $Actions = $null
        } else {
            $Actions = $JsonParameters.PSobject.Properties["actions"].value
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "displayNameOrNull"))) { #optional property not found
            $DisplayNameOrNull = $null
        } else {
            $DisplayNameOrNull = $JsonParameters.PSobject.Properties["displayNameOrNull"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "fullDisplayName"))) { #optional property not found
            $FullDisplayName = $null
        } else {
            $FullDisplayName = $JsonParameters.PSobject.Properties["fullDisplayName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "fullName"))) { #optional property not found
            $FullName = $null
        } else {
            $FullName = $JsonParameters.PSobject.Properties["fullName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "buildable"))) { #optional property not found
            $Buildable = $null
        } else {
            $Buildable = $JsonParameters.PSobject.Properties["buildable"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "builds"))) { #optional property not found
            $Builds = $null
        } else {
            $Builds = $JsonParameters.PSobject.Properties["builds"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "firstBuild"))) { #optional property not found
            $FirstBuild = $null
        } else {
            $FirstBuild = $JsonParameters.PSobject.Properties["firstBuild"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "healthReport"))) { #optional property not found
            $HealthReport = $null
        } else {
            $HealthReport = $JsonParameters.PSobject.Properties["healthReport"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "inQueue"))) { #optional property not found
            $InQueue = $null
        } else {
            $InQueue = $JsonParameters.PSobject.Properties["inQueue"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "keepDependencies"))) { #optional property not found
            $KeepDependencies = $null
        } else {
            $KeepDependencies = $JsonParameters.PSobject.Properties["keepDependencies"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "lastBuild"))) { #optional property not found
            $LastBuild = $null
        } else {
            $LastBuild = $JsonParameters.PSobject.Properties["lastBuild"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "lastCompletedBuild"))) { #optional property not found
            $LastCompletedBuild = $null
        } else {
            $LastCompletedBuild = $JsonParameters.PSobject.Properties["lastCompletedBuild"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "lastFailedBuild"))) { #optional property not found
            $LastFailedBuild = $null
        } else {
            $LastFailedBuild = $JsonParameters.PSobject.Properties["lastFailedBuild"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "lastStableBuild"))) { #optional property not found
            $LastStableBuild = $null
        } else {
            $LastStableBuild = $JsonParameters.PSobject.Properties["lastStableBuild"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "lastSuccessfulBuild"))) { #optional property not found
            $LastSuccessfulBuild = $null
        } else {
            $LastSuccessfulBuild = $JsonParameters.PSobject.Properties["lastSuccessfulBuild"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "lastUnstableBuild"))) { #optional property not found
            $LastUnstableBuild = $null
        } else {
            $LastUnstableBuild = $JsonParameters.PSobject.Properties["lastUnstableBuild"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "lastUnsuccessfulBuild"))) { #optional property not found
            $LastUnsuccessfulBuild = $null
        } else {
            $LastUnsuccessfulBuild = $JsonParameters.PSobject.Properties["lastUnsuccessfulBuild"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "nextBuildNumber"))) { #optional property not found
            $NextBuildNumber = $null
        } else {
            $NextBuildNumber = $JsonParameters.PSobject.Properties["nextBuildNumber"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "queueItem"))) { #optional property not found
            $QueueItem = $null
        } else {
            $QueueItem = $JsonParameters.PSobject.Properties["queueItem"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "concurrentBuild"))) { #optional property not found
            $ConcurrentBuild = $null
        } else {
            $ConcurrentBuild = $JsonParameters.PSobject.Properties["concurrentBuild"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "scm"))) { #optional property not found
            $Scm = $null
        } else {
            $Scm = $JsonParameters.PSobject.Properties["scm"].value
        }

        $PSO = [PSCustomObject]@{
            "_class" = ${Class}
            "name" = ${Name}
            "url" = ${Url}
            "color" = ${Color}
            "actions" = ${Actions}
            "description" = ${Description}
            "displayName" = ${DisplayName}
            "displayNameOrNull" = ${DisplayNameOrNull}
            "fullDisplayName" = ${FullDisplayName}
            "fullName" = ${FullName}
            "buildable" = ${Buildable}
            "builds" = ${Builds}
            "firstBuild" = ${FirstBuild}
            "healthReport" = ${HealthReport}
            "inQueue" = ${InQueue}
            "keepDependencies" = ${KeepDependencies}
            "lastBuild" = ${LastBuild}
            "lastCompletedBuild" = ${LastCompletedBuild}
            "lastFailedBuild" = ${LastFailedBuild}
            "lastStableBuild" = ${LastStableBuild}
            "lastSuccessfulBuild" = ${LastSuccessfulBuild}
            "lastUnstableBuild" = ${LastUnstableBuild}
            "lastUnsuccessfulBuild" = ${LastUnsuccessfulBuild}
            "nextBuildNumber" = ${NextBuildNumber}
            "queueItem" = ${QueueItem}
            "concurrentBuild" = ${ConcurrentBuild}
            "scm" = ${Scm}
        }

        return $PSO
    }

}


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
.PARAMETER Timestamp
No description available.
.PARAMETER Path
No description available.
.PARAMETER Size
No description available.
.OUTPUTS

DiskSpaceMonitorDescriptorDiskSpace<PSCustomObject>
#>

function Initialize-DiskSpaceMonitorDescriptorDiskSpace {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Class},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Timestamp},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Path},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Size}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => DiskSpaceMonitorDescriptorDiskSpace' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "_class" = ${Class}
            "timestamp" = ${Timestamp}
            "path" = ${Path}
            "size" = ${Size}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to DiskSpaceMonitorDescriptorDiskSpace<PSCustomObject>

.DESCRIPTION

Convert from JSON to DiskSpaceMonitorDescriptorDiskSpace<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

DiskSpaceMonitorDescriptorDiskSpace<PSCustomObject>
#>
function ConvertFrom-JsonToDiskSpaceMonitorDescriptorDiskSpace {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => DiskSpaceMonitorDescriptorDiskSpace' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in DiskSpaceMonitorDescriptorDiskSpace
        $AllProperties = ("_class", "timestamp", "path", "size")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "timestamp"))) { #optional property not found
            $Timestamp = $null
        } else {
            $Timestamp = $JsonParameters.PSobject.Properties["timestamp"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "path"))) { #optional property not found
            $Path = $null
        } else {
            $Path = $JsonParameters.PSobject.Properties["path"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "size"))) { #optional property not found
            $Size = $null
        } else {
            $Size = $JsonParameters.PSobject.Properties["size"].value
        }

        $PSO = [PSCustomObject]@{
            "_class" = ${Class}
            "timestamp" = ${Timestamp}
            "path" = ${Path}
            "size" = ${Size}
        }

        return $PSO
    }

}


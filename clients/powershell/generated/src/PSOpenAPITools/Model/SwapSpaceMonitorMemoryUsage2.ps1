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
.PARAMETER AvailablePhysicalMemory
No description available.
.PARAMETER AvailableSwapSpace
No description available.
.PARAMETER TotalPhysicalMemory
No description available.
.PARAMETER TotalSwapSpace
No description available.
.OUTPUTS

SwapSpaceMonitorMemoryUsage2<PSCustomObject>
#>

function Initialize-SwapSpaceMonitorMemoryUsage2 {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Class},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${AvailablePhysicalMemory},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${AvailableSwapSpace},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${TotalPhysicalMemory},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${TotalSwapSpace}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => SwapSpaceMonitorMemoryUsage2' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "_class" = ${Class}
            "availablePhysicalMemory" = ${AvailablePhysicalMemory}
            "availableSwapSpace" = ${AvailableSwapSpace}
            "totalPhysicalMemory" = ${TotalPhysicalMemory}
            "totalSwapSpace" = ${TotalSwapSpace}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to SwapSpaceMonitorMemoryUsage2<PSCustomObject>

.DESCRIPTION

Convert from JSON to SwapSpaceMonitorMemoryUsage2<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

SwapSpaceMonitorMemoryUsage2<PSCustomObject>
#>
function ConvertFrom-JsonToSwapSpaceMonitorMemoryUsage2 {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => SwapSpaceMonitorMemoryUsage2' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in SwapSpaceMonitorMemoryUsage2
        $AllProperties = ("_class", "availablePhysicalMemory", "availableSwapSpace", "totalPhysicalMemory", "totalSwapSpace")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "availablePhysicalMemory"))) { #optional property not found
            $AvailablePhysicalMemory = $null
        } else {
            $AvailablePhysicalMemory = $JsonParameters.PSobject.Properties["availablePhysicalMemory"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "availableSwapSpace"))) { #optional property not found
            $AvailableSwapSpace = $null
        } else {
            $AvailableSwapSpace = $JsonParameters.PSobject.Properties["availableSwapSpace"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "totalPhysicalMemory"))) { #optional property not found
            $TotalPhysicalMemory = $null
        } else {
            $TotalPhysicalMemory = $JsonParameters.PSobject.Properties["totalPhysicalMemory"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "totalSwapSpace"))) { #optional property not found
            $TotalSwapSpace = $null
        } else {
            $TotalSwapSpace = $JsonParameters.PSobject.Properties["totalSwapSpace"].value
        }

        $PSO = [PSCustomObject]@{
            "_class" = ${Class}
            "availablePhysicalMemory" = ${AvailablePhysicalMemory}
            "availableSwapSpace" = ${AvailableSwapSpace}
            "totalPhysicalMemory" = ${TotalPhysicalMemory}
            "totalSwapSpace" = ${TotalSwapSpace}
        }

        return $PSO
    }

}


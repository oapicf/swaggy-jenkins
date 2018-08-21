function New-SwapSpaceMonitorMemoryUsage2 {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Underscoreclass},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${availablePhysicalMemory},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${availableSwapSpace},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${totalPhysicalMemory},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${totalSwapSpace}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.SwapSpaceMonitorMemoryUsage2' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.SwapSpaceMonitorMemoryUsage2 -ArgumentList @(
            ${Underscoreclass},
            ${availablePhysicalMemory},
            ${availableSwapSpace},
            ${totalPhysicalMemory},
            ${totalSwapSpace}
        )
    }
}

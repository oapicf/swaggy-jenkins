function New-HudsonMasterComputermonitorData {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Org.OpenAPITools.Model.SwapSpaceMonitorMemoryUsage2]]
        ${hudsonPeriodnodeUnderscoremonitorsPeriodSwapSpaceMonitor},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Org.OpenAPITools.Model.DiskSpaceMonitorDescriptorDiskSpace]]
        ${hudsonPeriodnodeUnderscoremonitorsPeriodTemporarySpaceMonitor},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Org.OpenAPITools.Model.DiskSpaceMonitorDescriptorDiskSpace]]
        ${hudsonPeriodnodeUnderscoremonitorsPeriodDiskSpaceMonitor},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${hudsonPeriodnodeUnderscoremonitorsPeriodArchitectureMonitor},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Org.OpenAPITools.Model.ResponseTimeMonitorData]]
        ${hudsonPeriodnodeUnderscoremonitorsPeriodResponseTimeMonitor},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Org.OpenAPITools.Model.ClockDifference]]
        ${hudsonPeriodnodeUnderscoremonitorsPeriodClockMonitor},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Underscoreclass}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.HudsonMasterComputermonitorData' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.HudsonMasterComputermonitorData -ArgumentList @(
            ${hudsonPeriodnodeUnderscoremonitorsPeriodSwapSpaceMonitor},
            ${hudsonPeriodnodeUnderscoremonitorsPeriodTemporarySpaceMonitor},
            ${hudsonPeriodnodeUnderscoremonitorsPeriodDiskSpaceMonitor},
            ${hudsonPeriodnodeUnderscoremonitorsPeriodArchitectureMonitor},
            ${hudsonPeriodnodeUnderscoremonitorsPeriodResponseTimeMonitor},
            ${hudsonPeriodnodeUnderscoremonitorsPeriodClockMonitor},
            ${Underscoreclass}
        )
    }
}

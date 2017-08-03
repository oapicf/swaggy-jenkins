function New-HudsonMasterComputermonitorData {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[IO.Swagger.Model.SwapSpaceMonitorMemoryUsage2]]
        ${hudson.node_monitors.SwapSpaceMonitor},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[IO.Swagger.Model.DiskSpaceMonitorDescriptorDiskSpace]]
        ${hudson.node_monitors.TemporarySpaceMonitor},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[IO.Swagger.Model.DiskSpaceMonitorDescriptorDiskSpace]]
        ${hudson.node_monitors.DiskSpaceMonitor},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${hudson.node_monitors.ArchitectureMonitor},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[IO.Swagger.Model.ResponseTimeMonitorData]]
        ${hudson.node_monitors.ResponseTimeMonitor},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[IO.Swagger.Model.ClockDifference]]
        ${hudson.node_monitors.ClockMonitor},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${_class}
    )

    Process {
        'Creating object: IO.Swagger.Model.HudsonMasterComputermonitorData' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName IO.Swagger.Model.HudsonMasterComputermonitorData -ArgumentList @(
            ${hudson.node_monitors.SwapSpaceMonitor},
            ${hudson.node_monitors.TemporarySpaceMonitor},
            ${hudson.node_monitors.DiskSpaceMonitor},
            ${hudson.node_monitors.ArchitectureMonitor},
            ${hudson.node_monitors.ResponseTimeMonitor},
            ${hudson.node_monitors.ClockMonitor},
            ${_class}
        )
    }
}

function New-DiskSpaceMonitorDescriptorDiskSpace {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${_class},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${timestamp},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${path},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${size}
    )

    Process {
        'Creating object: IO.Swagger.Model.DiskSpaceMonitorDescriptorDiskSpace' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName IO.Swagger.Model.DiskSpaceMonitorDescriptorDiskSpace -ArgumentList @(
            ${_class},
            ${timestamp},
            ${path},
            ${size}
        )
    }
}

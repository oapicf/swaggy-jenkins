function New-DiskSpaceMonitorDescriptorDiskSpace {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Underscoreclass},
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
        'Creating object: Org.OpenAPITools.Model.DiskSpaceMonitorDescriptorDiskSpace' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.DiskSpaceMonitorDescriptorDiskSpace -ArgumentList @(
            ${Underscoreclass},
            ${timestamp},
            ${path},
            ${size}
        )
    }
}

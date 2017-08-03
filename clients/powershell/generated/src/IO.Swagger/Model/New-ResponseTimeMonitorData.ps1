function New-ResponseTimeMonitorData {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${_class},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${timestamp},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${average}
    )

    Process {
        'Creating object: IO.Swagger.Model.ResponseTimeMonitorData' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName IO.Swagger.Model.ResponseTimeMonitorData -ArgumentList @(
            ${_class},
            ${timestamp},
            ${average}
        )
    }
}

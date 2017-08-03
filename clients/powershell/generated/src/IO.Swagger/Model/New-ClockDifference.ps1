function New-ClockDifference {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${_class},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${diff}
    )

    Process {
        'Creating object: IO.Swagger.Model.ClockDifference' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName IO.Swagger.Model.ClockDifference -ArgumentList @(
            ${_class},
            ${diff}
        )
    }
}

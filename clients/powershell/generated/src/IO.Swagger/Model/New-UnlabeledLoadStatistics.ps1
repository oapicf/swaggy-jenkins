function New-UnlabeledLoadStatistics {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${_class}
    )

    Process {
        'Creating object: IO.Swagger.Model.UnlabeledLoadStatistics' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName IO.Swagger.Model.UnlabeledLoadStatistics -ArgumentList @(
            ${_class}
        )
    }
}

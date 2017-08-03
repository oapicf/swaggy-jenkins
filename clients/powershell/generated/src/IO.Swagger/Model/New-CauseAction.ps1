function New-CauseAction {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${_class},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[IO.Swagger.Model.CauseUserIdCause[]]]
        ${causes}
    )

    Process {
        'Creating object: IO.Swagger.Model.CauseAction' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName IO.Swagger.Model.CauseAction -ArgumentList @(
            ${_class},
            ${causes}
        )
    }
}

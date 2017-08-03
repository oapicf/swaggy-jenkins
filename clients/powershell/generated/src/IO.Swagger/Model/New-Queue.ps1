function New-Queue {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${_class},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[IO.Swagger.Model.QueueBlockedItem[]]]
        ${items}
    )

    Process {
        'Creating object: IO.Swagger.Model.Queue' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName IO.Swagger.Model.Queue -ArgumentList @(
            ${_class},
            ${items}
        )
    }
}

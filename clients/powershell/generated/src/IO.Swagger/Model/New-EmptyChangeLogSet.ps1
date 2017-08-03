function New-EmptyChangeLogSet {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${_class},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${kind}
    )

    Process {
        'Creating object: IO.Swagger.Model.EmptyChangeLogSet' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName IO.Swagger.Model.EmptyChangeLogSet -ArgumentList @(
            ${_class},
            ${kind}
        )
    }
}

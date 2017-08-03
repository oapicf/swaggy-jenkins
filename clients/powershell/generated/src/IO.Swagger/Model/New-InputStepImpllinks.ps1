function New-InputStepImpllinks {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[IO.Swagger.Model.Link]]
        ${self},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${_class}
    )

    Process {
        'Creating object: IO.Swagger.Model.InputStepImpllinks' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName IO.Swagger.Model.InputStepImpllinks -ArgumentList @(
            ${self},
            ${_class}
        )
    }
}

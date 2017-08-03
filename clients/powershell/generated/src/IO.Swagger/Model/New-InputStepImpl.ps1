function New-InputStepImpl {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${_class},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[IO.Swagger.Model.InputStepImpllinks]]
        ${_links},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${id},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${message},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ok},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[IO.Swagger.Model.StringParameterDefinition[]]]
        ${parameters},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${submitter}
    )

    Process {
        'Creating object: IO.Swagger.Model.InputStepImpl' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName IO.Swagger.Model.InputStepImpl -ArgumentList @(
            ${_class},
            ${_links},
            ${id},
            ${message},
            ${ok},
            ${parameters},
            ${submitter}
        )
    }
}

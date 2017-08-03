function New-StringParameterDefinition {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${_class},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[IO.Swagger.Model.StringParameterValue]]
        ${defaultParameterValue},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${description},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${name},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${type}
    )

    Process {
        'Creating object: IO.Swagger.Model.StringParameterDefinition' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName IO.Swagger.Model.StringParameterDefinition -ArgumentList @(
            ${_class},
            ${defaultParameterValue},
            ${description},
            ${name},
            ${type}
        )
    }
}

function New-StringParameterValue {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${_class},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${name},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${value}
    )

    Process {
        'Creating object: IO.Swagger.Model.StringParameterValue' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName IO.Swagger.Model.StringParameterValue -ArgumentList @(
            ${_class},
            ${name},
            ${value}
        )
    }
}

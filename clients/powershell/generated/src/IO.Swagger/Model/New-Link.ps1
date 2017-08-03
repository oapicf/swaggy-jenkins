function New-Link {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${_class},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${href}
    )

    Process {
        'Creating object: IO.Swagger.Model.Link' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName IO.Swagger.Model.Link -ArgumentList @(
            ${_class},
            ${href}
        )
    }
}

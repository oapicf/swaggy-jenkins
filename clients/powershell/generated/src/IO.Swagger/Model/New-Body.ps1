function New-Body {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [Boolean]
        ${favorite}
    )

    Process {
        'Creating object: IO.Swagger.Model.Body' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName IO.Swagger.Model.Body -ArgumentList @(
            ${favorite}
        )
    }
}

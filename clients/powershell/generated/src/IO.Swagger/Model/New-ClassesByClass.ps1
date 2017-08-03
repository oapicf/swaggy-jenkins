function New-ClassesByClass {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[String[]]]
        ${classes},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${_class}
    )

    Process {
        'Creating object: IO.Swagger.Model.ClassesByClass' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName IO.Swagger.Model.ClassesByClass -ArgumentList @(
            ${classes},
            ${_class}
        )
    }
}

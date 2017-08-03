function New-DefaultCrumbIssuer {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${_class},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${crumb},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${crumbRequestField}
    )

    Process {
        'Creating object: IO.Swagger.Model.DefaultCrumbIssuer' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName IO.Swagger.Model.DefaultCrumbIssuer -ArgumentList @(
            ${_class},
            ${crumb},
            ${crumbRequestField}
        )
    }
}

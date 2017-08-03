function New-ScmOrganisations {
    [CmdletBinding()]
    Param (
    )

    Process {
        'Creating object: IO.Swagger.Model.ScmOrganisations' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName IO.Swagger.Model.ScmOrganisations -ArgumentList @(
        )
    }
}

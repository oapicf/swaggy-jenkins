function New-UserFavorites {
    [CmdletBinding()]
    Param (
    )

    Process {
        'Creating object: IO.Swagger.Model.UserFavorites' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName IO.Swagger.Model.UserFavorites -ArgumentList @(
        )
    }
}

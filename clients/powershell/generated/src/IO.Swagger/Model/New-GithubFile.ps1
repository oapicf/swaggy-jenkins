function New-GithubFile {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[IO.Swagger.Model.GithubContent]]
        ${content},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${_class}
    )

    Process {
        'Creating object: IO.Swagger.Model.GithubFile' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName IO.Swagger.Model.GithubFile -ArgumentList @(
            ${content},
            ${_class}
        )
    }
}

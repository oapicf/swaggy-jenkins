function New-GithubRespositoryContainer {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${_class},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[IO.Swagger.Model.GithubRespositoryContainerlinks]]
        ${_links},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[IO.Swagger.Model.GithubRepositories]]
        ${repositories}
    )

    Process {
        'Creating object: IO.Swagger.Model.GithubRespositoryContainer' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName IO.Swagger.Model.GithubRespositoryContainer -ArgumentList @(
            ${_class},
            ${_links},
            ${repositories}
        )
    }
}

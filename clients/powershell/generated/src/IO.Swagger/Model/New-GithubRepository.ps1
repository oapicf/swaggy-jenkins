function New-GithubRepository {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${_class},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[IO.Swagger.Model.GithubRepositorylinks]]
        ${_links},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${defaultBranch},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${description},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${name},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[IO.Swagger.Model.GithubRepositorypermissions]]
        ${permissions},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${private},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${fullName}
    )

    Process {
        'Creating object: IO.Swagger.Model.GithubRepository' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName IO.Swagger.Model.GithubRepository -ArgumentList @(
            ${_class},
            ${_links},
            ${defaultBranch},
            ${description},
            ${name},
            ${permissions},
            ${private},
            ${fullName}
        )
    }
}

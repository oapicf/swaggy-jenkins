function New-GithubRepositories {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Underscoreclass},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Org.OpenAPITools.Model.GithubRepositorieslinks]]
        ${Underscorelinks},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Org.OpenAPITools.Model.GithubRepository[]]]
        ${items},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${lastPage},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${nextPage},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${pageSize}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.GithubRepositories' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.GithubRepositories -ArgumentList @(
            ${Underscoreclass},
            ${Underscorelinks},
            ${items},
            ${lastPage},
            ${nextPage},
            ${pageSize}
        )
    }
}

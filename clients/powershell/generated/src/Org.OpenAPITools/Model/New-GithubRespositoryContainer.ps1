function New-GithubRespositoryContainer {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Underscoreclass},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Org.OpenAPITools.Model.GithubRespositoryContainerlinks]]
        ${Underscorelinks},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Org.OpenAPITools.Model.GithubRepositories]]
        ${repositories}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.GithubRespositoryContainer' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.GithubRespositoryContainer -ArgumentList @(
            ${Underscoreclass},
            ${Underscorelinks},
            ${repositories}
        )
    }
}

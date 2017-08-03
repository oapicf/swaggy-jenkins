function New-PipelineBranchesitempullRequest {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[IO.Swagger.Model.PipelineBranchesitempullRequestlinks]]
        ${_links},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${author},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${id},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${title},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${url},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${_class}
    )

    Process {
        'Creating object: IO.Swagger.Model.PipelineBranchesitempullRequest' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName IO.Swagger.Model.PipelineBranchesitempullRequest -ArgumentList @(
            ${_links},
            ${author},
            ${id},
            ${title},
            ${url},
            ${_class}
        )
    }
}

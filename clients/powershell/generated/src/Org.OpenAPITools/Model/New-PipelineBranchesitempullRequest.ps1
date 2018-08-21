function New-PipelineBranchesitempullRequest {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Org.OpenAPITools.Model.PipelineBranchesitempullRequestlinks]]
        ${Underscorelinks},
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
        ${Underscoreclass}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.PipelineBranchesitempullRequest' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.PipelineBranchesitempullRequest -ArgumentList @(
            ${Underscorelinks},
            ${author},
            ${id},
            ${title},
            ${url},
            ${Underscoreclass}
        )
    }
}

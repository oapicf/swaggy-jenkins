function New-PipelineBranchesitem {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${displayName},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${estimatedDurationInMillis},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${name},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${weatherScore},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Org.OpenAPITools.Model.PipelineBranchesitemlatestRun]]
        ${latestRun},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${organization},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Org.OpenAPITools.Model.PipelineBranchesitempullRequest]]
        ${pullRequest},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${totalNumberOfPullRequests},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Underscoreclass}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.PipelineBranchesitem' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.PipelineBranchesitem -ArgumentList @(
            ${displayName},
            ${estimatedDurationInMillis},
            ${name},
            ${weatherScore},
            ${latestRun},
            ${organization},
            ${pullRequest},
            ${totalNumberOfPullRequests},
            ${Underscoreclass}
        )
    }
}

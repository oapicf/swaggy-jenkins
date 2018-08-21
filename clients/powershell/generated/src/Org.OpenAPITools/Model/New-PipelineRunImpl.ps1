function New-PipelineRunImpl {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Underscoreclass},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Org.OpenAPITools.Model.PipelineRunImpllinks]]
        ${Underscorelinks},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${durationInMillis},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${enQueueTime},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${endTime},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${estimatedDurationInMillis},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${id},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${organization},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${pipeline},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${result},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${runSummary},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${startTime},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${state},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${type},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${commitId}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.PipelineRunImpl' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.PipelineRunImpl -ArgumentList @(
            ${Underscoreclass},
            ${Underscorelinks},
            ${durationInMillis},
            ${enQueueTime},
            ${endTime},
            ${estimatedDurationInMillis},
            ${id},
            ${organization},
            ${pipeline},
            ${result},
            ${runSummary},
            ${startTime},
            ${state},
            ${type},
            ${commitId}
        )
    }
}

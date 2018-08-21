function New-PipelineRunNode {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Underscoreclass},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${displayName},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${durationInMillis},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Org.OpenAPITools.Model.PipelineRunNodeedges[]]]
        ${edges},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${id},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${result},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${startTime},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${state}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.PipelineRunNode' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.PipelineRunNode -ArgumentList @(
            ${Underscoreclass},
            ${displayName},
            ${durationInMillis},
            ${edges},
            ${id},
            ${result},
            ${startTime},
            ${state}
        )
    }
}

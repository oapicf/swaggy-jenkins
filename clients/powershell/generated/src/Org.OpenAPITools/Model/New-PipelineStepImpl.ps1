function New-PipelineStepImpl {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Underscoreclass},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Org.OpenAPITools.Model.PipelineStepImpllinks]]
        ${Underscorelinks},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${displayName},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${durationInMillis},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${id},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Org.OpenAPITools.Model.InputStepImpl]]
        ${input},
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
        'Creating object: Org.OpenAPITools.Model.PipelineStepImpl' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.PipelineStepImpl -ArgumentList @(
            ${Underscoreclass},
            ${Underscorelinks},
            ${displayName},
            ${durationInMillis},
            ${id},
            ${input},
            ${result},
            ${startTime},
            ${state}
        )
    }
}

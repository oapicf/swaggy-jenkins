function New-Pipeline {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Underscoreclass},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${organization},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${name},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${displayName},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${fullName},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${weatherScore},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${estimatedDurationInMillis},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Org.OpenAPITools.Model.PipelinelatestRun]]
        ${latestRun}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.Pipeline' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.Pipeline -ArgumentList @(
            ${Underscoreclass},
            ${organization},
            ${name},
            ${displayName},
            ${fullName},
            ${weatherScore},
            ${estimatedDurationInMillis},
            ${latestRun}
        )
    }
}

function New-BranchImpl {
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
        ${estimatedDurationInMillis},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${fullDisplayName},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${fullName},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${name},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${organization},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Org.OpenAPITools.Model.StringParameterDefinition[]]]
        ${parameters},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Org.OpenAPITools.Model.BranchImplpermissions]]
        ${permissions},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${weatherScore},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${pullRequest},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Org.OpenAPITools.Model.BranchImpllinks]]
        ${Underscorelinks},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Org.OpenAPITools.Model.PipelineRunImpl]]
        ${latestRun}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.BranchImpl' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.BranchImpl -ArgumentList @(
            ${Underscoreclass},
            ${displayName},
            ${estimatedDurationInMillis},
            ${fullDisplayName},
            ${fullName},
            ${name},
            ${organization},
            ${parameters},
            ${permissions},
            ${weatherScore},
            ${pullRequest},
            ${Underscorelinks},
            ${latestRun}
        )
    }
}

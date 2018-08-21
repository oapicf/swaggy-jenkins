function New-BranchImpllinks {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Org.OpenAPITools.Model.Link]]
        ${self},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Org.OpenAPITools.Model.Link]]
        ${actions},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Org.OpenAPITools.Model.Link]]
        ${runs},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Org.OpenAPITools.Model.Link]]
        ${queue},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Underscoreclass}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.BranchImpllinks' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.BranchImpllinks -ArgumentList @(
            ${self},
            ${actions},
            ${runs},
            ${queue},
            ${Underscoreclass}
        )
    }
}

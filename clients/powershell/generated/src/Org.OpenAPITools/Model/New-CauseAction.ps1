function New-CauseAction {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Underscoreclass},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Org.OpenAPITools.Model.CauseUserIdCause[]]]
        ${causes}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.CauseAction' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.CauseAction -ArgumentList @(
            ${Underscoreclass},
            ${causes}
        )
    }
}

function New-CauseUserIdCause {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Underscoreclass},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${shortDescription},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${userId},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${userName}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.CauseUserIdCause' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.CauseUserIdCause -ArgumentList @(
            ${Underscoreclass},
            ${shortDescription},
            ${userId},
            ${userName}
        )
    }
}

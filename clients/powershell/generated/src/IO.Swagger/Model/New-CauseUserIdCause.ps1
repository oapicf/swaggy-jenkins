function New-CauseUserIdCause {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${_class},
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
        'Creating object: IO.Swagger.Model.CauseUserIdCause' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName IO.Swagger.Model.CauseUserIdCause -ArgumentList @(
            ${_class},
            ${shortDescription},
            ${userId},
            ${userName}
        )
    }
}

function New-ComputerSet {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Underscoreclass},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${busyExecutors},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Org.OpenAPITools.Model.HudsonMasterComputer[]]]
        ${computer},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${displayName},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${totalExecutors}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.ComputerSet' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.ComputerSet -ArgumentList @(
            ${Underscoreclass},
            ${busyExecutors},
            ${computer},
            ${displayName},
            ${totalExecutors}
        )
    }
}

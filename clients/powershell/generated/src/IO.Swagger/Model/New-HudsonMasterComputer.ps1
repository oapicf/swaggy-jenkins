function New-HudsonMasterComputer {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${_class},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${displayName},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[IO.Swagger.Model.HudsonMasterComputerexecutors[]]]
        ${executors},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${icon},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${iconClassName},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${idle},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${jnlpAgent},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${launchSupported},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[IO.Swagger.Model.Label1]]
        ${loadStatistics},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${manualLaunchAllowed},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[IO.Swagger.Model.HudsonMasterComputermonitorData]]
        ${monitorData},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${numExecutors},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${offline},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${offlineCause},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${offlineCauseReason},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${temporarilyOffline}
    )

    Process {
        'Creating object: IO.Swagger.Model.HudsonMasterComputer' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName IO.Swagger.Model.HudsonMasterComputer -ArgumentList @(
            ${_class},
            ${displayName},
            ${executors},
            ${icon},
            ${iconClassName},
            ${idle},
            ${jnlpAgent},
            ${launchSupported},
            ${loadStatistics},
            ${manualLaunchAllowed},
            ${monitorData},
            ${numExecutors},
            ${offline},
            ${offlineCause},
            ${offlineCauseReason},
            ${temporarilyOffline}
        )
    }
}

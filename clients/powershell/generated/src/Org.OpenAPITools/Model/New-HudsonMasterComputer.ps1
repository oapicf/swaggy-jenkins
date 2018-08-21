function New-HudsonMasterComputer {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Underscoreclass},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${displayName},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Org.OpenAPITools.Model.HudsonMasterComputerexecutors[]]]
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
        [System.Nullable[Org.OpenAPITools.Model.Label1]]
        ${loadStatistics},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${manualLaunchAllowed},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Org.OpenAPITools.Model.HudsonMasterComputermonitorData]]
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
        'Creating object: Org.OpenAPITools.Model.HudsonMasterComputer' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.HudsonMasterComputer -ArgumentList @(
            ${Underscoreclass},
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

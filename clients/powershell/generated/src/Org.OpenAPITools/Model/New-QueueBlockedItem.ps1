function New-QueueBlockedItem {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Underscoreclass},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Org.OpenAPITools.Model.CauseAction[]]]
        ${actions},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${blocked},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${buildable},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${id},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${inQueueSince},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${params},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${stuck},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Org.OpenAPITools.Model.FreeStyleProject]]
        ${task},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${url},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${why},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${buildableStartMilliseconds}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.QueueBlockedItem' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.QueueBlockedItem -ArgumentList @(
            ${Underscoreclass},
            ${actions},
            ${blocked},
            ${buildable},
            ${id},
            ${inQueueSince},
            ${params},
            ${stuck},
            ${task},
            ${url},
            ${why},
            ${buildableStartMilliseconds}
        )
    }
}

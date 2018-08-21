function New-ResponseTimeMonitorData {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Underscoreclass},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${timestamp},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${average}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.ResponseTimeMonitorData' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.ResponseTimeMonitorData -ArgumentList @(
            ${Underscoreclass},
            ${timestamp},
            ${average}
        )
    }
}

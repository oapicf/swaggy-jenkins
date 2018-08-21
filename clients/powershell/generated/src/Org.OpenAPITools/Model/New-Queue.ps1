function New-Queue {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Underscoreclass},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Org.OpenAPITools.Model.QueueBlockedItem[]]]
        ${items}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.Queue' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.Queue -ArgumentList @(
            ${Underscoreclass},
            ${items}
        )
    }
}

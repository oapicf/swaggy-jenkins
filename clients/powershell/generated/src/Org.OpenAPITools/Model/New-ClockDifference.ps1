function New-ClockDifference {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Underscoreclass},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${diff}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.ClockDifference' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.ClockDifference -ArgumentList @(
            ${Underscoreclass},
            ${diff}
        )
    }
}

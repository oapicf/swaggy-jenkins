function New-UnlabeledLoadStatistics {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Underscoreclass}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.UnlabeledLoadStatistics' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.UnlabeledLoadStatistics -ArgumentList @(
            ${Underscoreclass}
        )
    }
}

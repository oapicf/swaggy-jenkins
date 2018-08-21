function New-NullSCM {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Underscoreclass}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.NullSCM' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.NullSCM -ArgumentList @(
            ${Underscoreclass}
        )
    }
}

function New-Link {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Underscoreclass},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${href}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.Link' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.Link -ArgumentList @(
            ${Underscoreclass},
            ${href}
        )
    }
}

function New-ExtensionClassContainerImpl1 {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Underscoreclass},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Org.OpenAPITools.Model.ExtensionClassContainerImpl1links]]
        ${Underscorelinks},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Org.OpenAPITools.Model.ExtensionClassContainerImpl1map]]
        ${map}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.ExtensionClassContainerImpl1' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.ExtensionClassContainerImpl1 -ArgumentList @(
            ${Underscoreclass},
            ${Underscorelinks},
            ${map}
        )
    }
}

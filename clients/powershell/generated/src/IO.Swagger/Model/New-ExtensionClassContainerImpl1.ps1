function New-ExtensionClassContainerImpl1 {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${_class},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[IO.Swagger.Model.ExtensionClassContainerImpl1links]]
        ${_links},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[IO.Swagger.Model.ExtensionClassContainerImpl1map]]
        ${map}
    )

    Process {
        'Creating object: IO.Swagger.Model.ExtensionClassContainerImpl1' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName IO.Swagger.Model.ExtensionClassContainerImpl1 -ArgumentList @(
            ${_class},
            ${_links},
            ${map}
        )
    }
}

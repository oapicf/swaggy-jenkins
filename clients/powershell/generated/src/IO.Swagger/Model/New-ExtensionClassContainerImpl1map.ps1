function New-ExtensionClassContainerImpl1map {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[IO.Swagger.Model.ExtensionClassImpl]]
        ${io.jenkins.blueocean.service.embedded.rest.PipelineImpl},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[IO.Swagger.Model.ExtensionClassImpl]]
        ${io.jenkins.blueocean.service.embedded.rest.MultiBranchPipelineImpl},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${_class}
    )

    Process {
        'Creating object: IO.Swagger.Model.ExtensionClassContainerImpl1map' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName IO.Swagger.Model.ExtensionClassContainerImpl1map -ArgumentList @(
            ${io.jenkins.blueocean.service.embedded.rest.PipelineImpl},
            ${io.jenkins.blueocean.service.embedded.rest.MultiBranchPipelineImpl},
            ${_class}
        )
    }
}

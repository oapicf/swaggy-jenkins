function New-Hudson {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${_class},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[IO.Swagger.Model.HudsonassignedLabels[]]]
        ${assignedLabels},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${mode},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${nodeDescription},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${nodeName},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${numExecutors},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${description},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[IO.Swagger.Model.FreeStyleProject[]]]
        ${jobs},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[IO.Swagger.Model.AllView]]
        ${primaryView},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${quietingDown},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${slaveAgentPort},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[IO.Swagger.Model.UnlabeledLoadStatistics]]
        ${unlabeledLoad},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${useCrumbs},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${useSecurity},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[IO.Swagger.Model.AllView[]]]
        ${views}
    )

    Process {
        'Creating object: IO.Swagger.Model.Hudson' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName IO.Swagger.Model.Hudson -ArgumentList @(
            ${_class},
            ${assignedLabels},
            ${mode},
            ${nodeDescription},
            ${nodeName},
            ${numExecutors},
            ${description},
            ${jobs},
            ${primaryView},
            ${quietingDown},
            ${slaveAgentPort},
            ${unlabeledLoad},
            ${useCrumbs},
            ${useSecurity},
            ${views}
        )
    }
}

function New-PipelineRunNodeSteps {
    [CmdletBinding()]
    Param (
    )

    Process {
        'Creating object: IO.Swagger.Model.PipelineRunNodeSteps' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName IO.Swagger.Model.PipelineRunNodeSteps -ArgumentList @(
        )
    }
}

function New-PipelineRunSteps {
    [CmdletBinding()]
    Param (
    )

    Process {
        'Creating object: IO.Swagger.Model.PipelineRunSteps' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName IO.Swagger.Model.PipelineRunSteps -ArgumentList @(
        )
    }
}

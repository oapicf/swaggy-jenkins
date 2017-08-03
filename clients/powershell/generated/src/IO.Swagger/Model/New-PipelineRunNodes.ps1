function New-PipelineRunNodes {
    [CmdletBinding()]
    Param (
    )

    Process {
        'Creating object: IO.Swagger.Model.PipelineRunNodes' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName IO.Swagger.Model.PipelineRunNodes -ArgumentList @(
        )
    }
}

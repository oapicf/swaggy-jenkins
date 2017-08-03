function New-PipelineActivities {
    [CmdletBinding()]
    Param (
    )

    Process {
        'Creating object: IO.Swagger.Model.PipelineActivities' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName IO.Swagger.Model.PipelineActivities -ArgumentList @(
        )
    }
}

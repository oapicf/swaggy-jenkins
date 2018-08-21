function New-PipelineQueue {
    [CmdletBinding()]
    Param (
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.PipelineQueue' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.PipelineQueue -ArgumentList @(
        )
    }
}

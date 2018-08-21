function New-PipelineRunNodes {
    [CmdletBinding()]
    Param (
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.PipelineRunNodes' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.PipelineRunNodes -ArgumentList @(
        )
    }
}

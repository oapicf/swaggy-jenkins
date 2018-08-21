function New-PipelineRunNodeSteps {
    [CmdletBinding()]
    Param (
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.PipelineRunNodeSteps' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.PipelineRunNodeSteps -ArgumentList @(
        )
    }
}

function New-PipelineBranches {
    [CmdletBinding()]
    Param (
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.PipelineBranches' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.PipelineBranches -ArgumentList @(
        )
    }
}

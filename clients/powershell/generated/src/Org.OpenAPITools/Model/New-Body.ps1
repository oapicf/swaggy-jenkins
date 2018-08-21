function New-Body {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [Boolean]
        ${favorite}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.Body' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.Body -ArgumentList @(
            ${favorite}
        )
    }
}

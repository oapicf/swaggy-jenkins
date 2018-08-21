function New-AllView {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Underscoreclass},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${name},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${url}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.AllView' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.AllView -ArgumentList @(
            ${Underscoreclass},
            ${name},
            ${url}
        )
    }
}

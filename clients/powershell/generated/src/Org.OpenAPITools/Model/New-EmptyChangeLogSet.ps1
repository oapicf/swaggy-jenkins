function New-EmptyChangeLogSet {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Underscoreclass},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${kind}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.EmptyChangeLogSet' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.EmptyChangeLogSet -ArgumentList @(
            ${Underscoreclass},
            ${kind}
        )
    }
}

function New-Organisation {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Underscoreclass},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${name}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.Organisation' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.Organisation -ArgumentList @(
            ${Underscoreclass},
            ${name}
        )
    }
}

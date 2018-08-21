function New-ExtensionClassImpl {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Underscoreclass},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Org.OpenAPITools.Model.ExtensionClassImpllinks]]
        ${Underscorelinks},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[String[]]]
        ${classes}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.ExtensionClassImpl' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.ExtensionClassImpl -ArgumentList @(
            ${Underscoreclass},
            ${Underscorelinks},
            ${classes}
        )
    }
}

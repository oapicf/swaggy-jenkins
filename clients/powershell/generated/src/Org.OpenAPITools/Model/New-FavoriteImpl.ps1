function New-FavoriteImpl {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Underscoreclass},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Org.OpenAPITools.Model.FavoriteImpllinks]]
        ${Underscorelinks},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Org.OpenAPITools.Model.PipelineImpl]]
        ${item}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.FavoriteImpl' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.FavoriteImpl -ArgumentList @(
            ${Underscoreclass},
            ${Underscorelinks},
            ${item}
        )
    }
}

function New-PipelineRunartifacts {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${name},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${size},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${url},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Underscoreclass}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.PipelineRunartifacts' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.PipelineRunartifacts -ArgumentList @(
            ${name},
            ${size},
            ${url},
            ${Underscoreclass}
        )
    }
}

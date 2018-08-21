function New-InputStepImpl {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Underscoreclass},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Org.OpenAPITools.Model.InputStepImpllinks]]
        ${Underscorelinks},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${id},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${message},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ok},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Org.OpenAPITools.Model.StringParameterDefinition[]]]
        ${parameters},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${submitter}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.InputStepImpl' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.InputStepImpl -ArgumentList @(
            ${Underscoreclass},
            ${Underscorelinks},
            ${id},
            ${message},
            ${ok},
            ${parameters},
            ${submitter}
        )
    }
}

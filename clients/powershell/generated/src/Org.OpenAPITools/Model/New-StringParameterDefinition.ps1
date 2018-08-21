function New-StringParameterDefinition {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Underscoreclass},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Org.OpenAPITools.Model.StringParameterValue]]
        ${defaultParameterValue},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${description},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${name},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${type}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.StringParameterDefinition' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.StringParameterDefinition -ArgumentList @(
            ${Underscoreclass},
            ${defaultParameterValue},
            ${description},
            ${name},
            ${type}
        )
    }
}

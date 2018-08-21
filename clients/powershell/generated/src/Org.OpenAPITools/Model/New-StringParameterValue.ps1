function New-StringParameterValue {
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
        ${value}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.StringParameterValue' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.StringParameterValue -ArgumentList @(
            ${Underscoreclass},
            ${name},
            ${value}
        )
    }
}

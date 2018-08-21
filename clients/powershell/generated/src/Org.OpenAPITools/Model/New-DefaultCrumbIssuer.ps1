function New-DefaultCrumbIssuer {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Underscoreclass},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${crumb},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${crumbRequestField}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.DefaultCrumbIssuer' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.DefaultCrumbIssuer -ArgumentList @(
            ${Underscoreclass},
            ${crumb},
            ${crumbRequestField}
        )
    }
}

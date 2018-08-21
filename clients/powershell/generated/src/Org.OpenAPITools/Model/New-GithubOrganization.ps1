function New-GithubOrganization {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Underscoreclass},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Org.OpenAPITools.Model.GithubOrganizationlinks]]
        ${Underscorelinks},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${jenkinsOrganizationPipeline},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${name}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.GithubOrganization' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.GithubOrganization -ArgumentList @(
            ${Underscoreclass},
            ${Underscorelinks},
            ${jenkinsOrganizationPipeline},
            ${name}
        )
    }
}

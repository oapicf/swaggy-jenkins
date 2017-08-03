function New-GithubOrganization {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${_class},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[IO.Swagger.Model.GithubOrganizationlinks]]
        ${_links},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${jenkinsOrganizationPipeline},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${name}
    )

    Process {
        'Creating object: IO.Swagger.Model.GithubOrganization' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName IO.Swagger.Model.GithubOrganization -ArgumentList @(
            ${_class},
            ${_links},
            ${jenkinsOrganizationPipeline},
            ${name}
        )
    }
}

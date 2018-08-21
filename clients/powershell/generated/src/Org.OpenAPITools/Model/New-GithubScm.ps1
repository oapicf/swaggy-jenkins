function New-GithubScm {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Underscoreclass},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Org.OpenAPITools.Model.GithubScmlinks]]
        ${Underscorelinks},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${credentialId},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${id},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${uri}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.GithubScm' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.GithubScm -ArgumentList @(
            ${Underscoreclass},
            ${Underscorelinks},
            ${credentialId},
            ${id},
            ${uri}
        )
    }
}

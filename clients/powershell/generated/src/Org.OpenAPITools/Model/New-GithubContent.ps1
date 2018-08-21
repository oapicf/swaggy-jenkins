function New-GithubContent {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${name},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${sha},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Underscoreclass},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${repo},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${size},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${owner},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${path},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${base64Data}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.GithubContent' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.GithubContent -ArgumentList @(
            ${name},
            ${sha},
            ${Underscoreclass},
            ${repo},
            ${size},
            ${owner},
            ${path},
            ${base64Data}
        )
    }
}

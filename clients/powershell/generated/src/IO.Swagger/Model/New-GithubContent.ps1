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
        ${_class},
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
        'Creating object: IO.Swagger.Model.GithubContent' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName IO.Swagger.Model.GithubContent -ArgumentList @(
            ${name},
            ${sha},
            ${_class},
            ${repo},
            ${size},
            ${owner},
            ${path},
            ${base64Data}
        )
    }
}

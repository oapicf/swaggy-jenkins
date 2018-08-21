function New-GenericResource {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Underscoreclass},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${displayName},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${durationInMillis},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${id},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${result},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${startTime}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.GenericResource' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.GenericResource -ArgumentList @(
            ${Underscoreclass},
            ${displayName},
            ${durationInMillis},
            ${id},
            ${result},
            ${startTime}
        )
    }
}

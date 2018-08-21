function New-Users {
    [CmdletBinding()]
    Param (
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.Users' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.Users -ArgumentList @(
        )
    }
}

function Invoke-BaseRemoteAccessApiGetCrumb {
    [CmdletBinding()]
    Param (
    )

    Process {
        'Calling method: BaseRemoteAccessApi-GetCrumb' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:BaseRemoteAccessApi.GetCrumb(
        )
    }
}


#region Import functions

'API', 'Model', 'Private' | Get-ChildItem -Path {
    Join-Path $PSScriptRoot $_
} -Filter '*.ps1' | ForEach-Object {
    Write-Verbose "Importing file: $($_.BaseName)"
    try {
        . $_.FullName
    } catch {
        Write-Verbose "Can't import function!"
    }
}

#endregion


#region Initialize APIs

'Creating object: Org.OpenAPITools.Api.BaseAccessApi' | Write-Verbose
$Script:BaseAccessApi= New-Object -TypeName Org.OpenAPITools.Api.BaseAccessApi -ArgumentList @($null)

'Creating object: Org.OpenAPITools.Api.BlueOceanApi' | Write-Verbose
$Script:BlueOceanApi= New-Object -TypeName Org.OpenAPITools.Api.BlueOceanApi -ArgumentList @($null)

'Creating object: Org.OpenAPITools.Api.RemoteAccessApi' | Write-Verbose
$Script:RemoteAccessApi= New-Object -TypeName Org.OpenAPITools.Api.RemoteAccessApi -ArgumentList @($null)


#endregion

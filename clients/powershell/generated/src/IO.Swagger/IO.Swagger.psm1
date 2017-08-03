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

'Creating object: IO.Swagger.Api.BlueOceanApi' | Write-Verbose
$Script:BlueOceanApi= New-Object -TypeName IO.Swagger.Api.BlueOceanApi -ArgumentList @($null)

'Creating object: IO.Swagger.Api.RemoteAccessApi' | Write-Verbose
$Script:RemoteAccessApi= New-Object -TypeName IO.Swagger.Api.RemoteAccessApi -ArgumentList @($null)


#endregion

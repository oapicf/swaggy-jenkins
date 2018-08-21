function New-FreeStyleBuild {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Underscoreclass},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${number},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${url},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Org.OpenAPITools.Model.CauseAction[]]]
        ${actions},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${building},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${description},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${displayName},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${duration},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${estimatedDuration},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${executor},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${fullDisplayName},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${id},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${keepLog},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${queueId},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${result},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${timestamp},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${builtOn},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Org.OpenAPITools.Model.EmptyChangeLogSet]]
        ${changeSet}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.FreeStyleBuild' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.FreeStyleBuild -ArgumentList @(
            ${Underscoreclass},
            ${number},
            ${url},
            ${actions},
            ${building},
            ${description},
            ${displayName},
            ${duration},
            ${estimatedDuration},
            ${executor},
            ${fullDisplayName},
            ${id},
            ${keepLog},
            ${queueId},
            ${result},
            ${timestamp},
            ${builtOn},
            ${changeSet}
        )
    }
}

function New-FreeStyleProject {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Underscoreclass},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${name},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${url},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${color},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Org.OpenAPITools.Model.FreeStyleProjectactions[]]]
        ${actions},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${description},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${displayName},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${displayNameOrNull},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${fullDisplayName},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${fullName},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${buildable},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Org.OpenAPITools.Model.FreeStyleBuild[]]]
        ${builds},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Org.OpenAPITools.Model.FreeStyleBuild]]
        ${firstBuild},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Org.OpenAPITools.Model.FreeStyleProjecthealthReport[]]]
        ${healthReport},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${inQueue},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${keepDependencies},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Org.OpenAPITools.Model.FreeStyleBuild]]
        ${lastBuild},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Org.OpenAPITools.Model.FreeStyleBuild]]
        ${lastCompletedBuild},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${lastFailedBuild},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Org.OpenAPITools.Model.FreeStyleBuild]]
        ${lastStableBuild},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Org.OpenAPITools.Model.FreeStyleBuild]]
        ${lastSuccessfulBuild},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${lastUnstableBuild},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${lastUnsuccessfulBuild},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${nextBuildNumber},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${queueItem},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${concurrentBuild},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Org.OpenAPITools.Model.NullSCM]]
        ${scm}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.FreeStyleProject' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.FreeStyleProject -ArgumentList @(
            ${Underscoreclass},
            ${name},
            ${url},
            ${color},
            ${actions},
            ${description},
            ${displayName},
            ${displayNameOrNull},
            ${fullDisplayName},
            ${fullName},
            ${buildable},
            ${builds},
            ${firstBuild},
            ${healthReport},
            ${inQueue},
            ${keepDependencies},
            ${lastBuild},
            ${lastCompletedBuild},
            ${lastFailedBuild},
            ${lastStableBuild},
            ${lastSuccessfulBuild},
            ${lastUnstableBuild},
            ${lastUnsuccessfulBuild},
            ${nextBuildNumber},
            ${queueItem},
            ${concurrentBuild},
            ${scm}
        )
    }
}

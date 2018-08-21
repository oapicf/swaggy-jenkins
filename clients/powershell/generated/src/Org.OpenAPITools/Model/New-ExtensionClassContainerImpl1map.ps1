function New-ExtensionClassContainerImpl1map {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Org.OpenAPITools.Model.ExtensionClassImpl]]
        ${ioPeriodjenkinsPeriodblueoceanPeriodservicePeriodembeddedPeriodrestPeriodPipelineImpl},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Org.OpenAPITools.Model.ExtensionClassImpl]]
        ${ioPeriodjenkinsPeriodblueoceanPeriodservicePeriodembeddedPeriodrestPeriodMultiBranchPipelineImpl},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Underscoreclass}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.ExtensionClassContainerImpl1map' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.ExtensionClassContainerImpl1map -ArgumentList @(
            ${ioPeriodjenkinsPeriodblueoceanPeriodservicePeriodembeddedPeriodrestPeriodPipelineImpl},
            ${ioPeriodjenkinsPeriodblueoceanPeriodservicePeriodembeddedPeriodrestPeriodMultiBranchPipelineImpl},
            ${Underscoreclass}
        )
    }
}

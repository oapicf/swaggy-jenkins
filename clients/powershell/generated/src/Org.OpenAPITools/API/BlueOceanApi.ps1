function Invoke-BlueOceanApiDeletePipelineQueueItem {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${organization},
        [Parameter(Position = 1, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${pipeline},
        [Parameter(Position = 2, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${queue}
    )

    Process {
        'Calling method: BlueOceanApi-DeletePipelineQueueItem' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:BlueOceanApi.DeletePipelineQueueItem(
            ${organization},
            ${pipeline},
            ${queue}
        )
    }
}

function Invoke-BlueOceanApiGetAuthenticatedUser {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${organization}
    )

    Process {
        'Calling method: BlueOceanApi-GetAuthenticatedUser' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:BlueOceanApi.GetAuthenticatedUser(
            ${organization}
        )
    }
}

function Invoke-BlueOceanApiGetClasses {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${class}
    )

    Process {
        'Calling method: BlueOceanApi-GetClasses' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:BlueOceanApi.GetClasses(
            ${class}
        )
    }
}

function Invoke-BlueOceanApiGetJsonWebKey {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [Int32]
        ${key}
    )

    Process {
        'Calling method: BlueOceanApi-GetJsonWebKey' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:BlueOceanApi.GetJsonWebKey(
            ${key}
        )
    }
}

function Invoke-BlueOceanApiGetJsonWebToken {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [Int32]
        ${expiryTimeInMins},
        [Parameter(Position = 1, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [Int32]
        ${maxExpiryTimeInMins}
    )

    Process {
        'Calling method: BlueOceanApi-GetJsonWebToken' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:BlueOceanApi.GetJsonWebToken(
            ${expiryTimeInMins},
            ${maxExpiryTimeInMins}
        )
    }
}

function Invoke-BlueOceanApiGetOrganisation {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${organization}
    )

    Process {
        'Calling method: BlueOceanApi-GetOrganisation' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:BlueOceanApi.GetOrganisation(
            ${organization}
        )
    }
}

function Invoke-BlueOceanApiGetOrganisations {
    [CmdletBinding()]
    Param (
    )

    Process {
        'Calling method: BlueOceanApi-GetOrganisations' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:BlueOceanApi.GetOrganisations(
        )
    }
}

function Invoke-BlueOceanApiGetPipeline {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${organization},
        [Parameter(Position = 1, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${pipeline}
    )

    Process {
        'Calling method: BlueOceanApi-GetPipeline' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:BlueOceanApi.GetPipeline(
            ${organization},
            ${pipeline}
        )
    }
}

function Invoke-BlueOceanApiGetPipelineActivities {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${organization},
        [Parameter(Position = 1, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${pipeline}
    )

    Process {
        'Calling method: BlueOceanApi-GetPipelineActivities' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:BlueOceanApi.GetPipelineActivities(
            ${organization},
            ${pipeline}
        )
    }
}

function Invoke-BlueOceanApiGetPipelineBranch {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${organization},
        [Parameter(Position = 1, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${pipeline},
        [Parameter(Position = 2, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${branch}
    )

    Process {
        'Calling method: BlueOceanApi-GetPipelineBranch' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:BlueOceanApi.GetPipelineBranch(
            ${organization},
            ${pipeline},
            ${branch}
        )
    }
}

function Invoke-BlueOceanApiGetPipelineBranchRun {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${organization},
        [Parameter(Position = 1, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${pipeline},
        [Parameter(Position = 2, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${branch},
        [Parameter(Position = 3, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${run}
    )

    Process {
        'Calling method: BlueOceanApi-GetPipelineBranchRun' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:BlueOceanApi.GetPipelineBranchRun(
            ${organization},
            ${pipeline},
            ${branch},
            ${run}
        )
    }
}

function Invoke-BlueOceanApiGetPipelineBranches {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${organization},
        [Parameter(Position = 1, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${pipeline}
    )

    Process {
        'Calling method: BlueOceanApi-GetPipelineBranches' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:BlueOceanApi.GetPipelineBranches(
            ${organization},
            ${pipeline}
        )
    }
}

function Invoke-BlueOceanApiGetPipelineFolder {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${organization},
        [Parameter(Position = 1, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${folder}
    )

    Process {
        'Calling method: BlueOceanApi-GetPipelineFolder' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:BlueOceanApi.GetPipelineFolder(
            ${organization},
            ${folder}
        )
    }
}

function Invoke-BlueOceanApiGetPipelineFolderPipeline {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${organization},
        [Parameter(Position = 1, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${pipeline},
        [Parameter(Position = 2, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${folder}
    )

    Process {
        'Calling method: BlueOceanApi-GetPipelineFolderPipeline' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:BlueOceanApi.GetPipelineFolderPipeline(
            ${organization},
            ${pipeline},
            ${folder}
        )
    }
}

function Invoke-BlueOceanApiGetPipelineQueue {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${organization},
        [Parameter(Position = 1, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${pipeline}
    )

    Process {
        'Calling method: BlueOceanApi-GetPipelineQueue' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:BlueOceanApi.GetPipelineQueue(
            ${organization},
            ${pipeline}
        )
    }
}

function Invoke-BlueOceanApiGetPipelineRun {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${organization},
        [Parameter(Position = 1, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${pipeline},
        [Parameter(Position = 2, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${run}
    )

    Process {
        'Calling method: BlueOceanApi-GetPipelineRun' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:BlueOceanApi.GetPipelineRun(
            ${organization},
            ${pipeline},
            ${run}
        )
    }
}

function Invoke-BlueOceanApiGetPipelineRunLog {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${organization},
        [Parameter(Position = 1, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${pipeline},
        [Parameter(Position = 2, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${run},
        [Parameter(Position = 3, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [Int32]
        ${start},
        [Parameter(Position = 4, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [Boolean]
        ${download}
    )

    Process {
        'Calling method: BlueOceanApi-GetPipelineRunLog' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:BlueOceanApi.GetPipelineRunLog(
            ${organization},
            ${pipeline},
            ${run},
            ${start},
            ${download}
        )
    }
}

function Invoke-BlueOceanApiGetPipelineRunNode {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${organization},
        [Parameter(Position = 1, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${pipeline},
        [Parameter(Position = 2, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${run},
        [Parameter(Position = 3, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${node}
    )

    Process {
        'Calling method: BlueOceanApi-GetPipelineRunNode' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:BlueOceanApi.GetPipelineRunNode(
            ${organization},
            ${pipeline},
            ${run},
            ${node}
        )
    }
}

function Invoke-BlueOceanApiGetPipelineRunNodeStep {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${organization},
        [Parameter(Position = 1, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${pipeline},
        [Parameter(Position = 2, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${run},
        [Parameter(Position = 3, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${node},
        [Parameter(Position = 4, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${step}
    )

    Process {
        'Calling method: BlueOceanApi-GetPipelineRunNodeStep' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:BlueOceanApi.GetPipelineRunNodeStep(
            ${organization},
            ${pipeline},
            ${run},
            ${node},
            ${step}
        )
    }
}

function Invoke-BlueOceanApiGetPipelineRunNodeStepLog {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${organization},
        [Parameter(Position = 1, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${pipeline},
        [Parameter(Position = 2, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${run},
        [Parameter(Position = 3, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${node},
        [Parameter(Position = 4, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${step}
    )

    Process {
        'Calling method: BlueOceanApi-GetPipelineRunNodeStepLog' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:BlueOceanApi.GetPipelineRunNodeStepLog(
            ${organization},
            ${pipeline},
            ${run},
            ${node},
            ${step}
        )
    }
}

function Invoke-BlueOceanApiGetPipelineRunNodeSteps {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${organization},
        [Parameter(Position = 1, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${pipeline},
        [Parameter(Position = 2, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${run},
        [Parameter(Position = 3, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${node}
    )

    Process {
        'Calling method: BlueOceanApi-GetPipelineRunNodeSteps' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:BlueOceanApi.GetPipelineRunNodeSteps(
            ${organization},
            ${pipeline},
            ${run},
            ${node}
        )
    }
}

function Invoke-BlueOceanApiGetPipelineRunNodes {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${organization},
        [Parameter(Position = 1, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${pipeline},
        [Parameter(Position = 2, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${run}
    )

    Process {
        'Calling method: BlueOceanApi-GetPipelineRunNodes' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:BlueOceanApi.GetPipelineRunNodes(
            ${organization},
            ${pipeline},
            ${run}
        )
    }
}

function Invoke-BlueOceanApiGetPipelineRuns {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${organization},
        [Parameter(Position = 1, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${pipeline}
    )

    Process {
        'Calling method: BlueOceanApi-GetPipelineRuns' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:BlueOceanApi.GetPipelineRuns(
            ${organization},
            ${pipeline}
        )
    }
}

function Invoke-BlueOceanApiGetPipelines {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${organization}
    )

    Process {
        'Calling method: BlueOceanApi-GetPipelines' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:BlueOceanApi.GetPipelines(
            ${organization}
        )
    }
}

function Invoke-BlueOceanApiGetSCM {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${organization},
        [Parameter(Position = 1, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${scm}
    )

    Process {
        'Calling method: BlueOceanApi-GetSCM' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:BlueOceanApi.GetSCM(
            ${organization},
            ${scm}
        )
    }
}

function Invoke-BlueOceanApiGetSCMOrganisationRepositories {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${organization},
        [Parameter(Position = 1, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${scm},
        [Parameter(Position = 2, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${scmOrganisation},
        [Parameter(Position = 3, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${credentialId},
        [Parameter(Position = 4, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [Int32]
        ${pageSize},
        [Parameter(Position = 5, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [Int32]
        ${pageNumber}
    )

    Process {
        'Calling method: BlueOceanApi-GetSCMOrganisationRepositories' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:BlueOceanApi.GetSCMOrganisationRepositories(
            ${organization},
            ${scm},
            ${scmOrganisation},
            ${credentialId},
            ${pageSize},
            ${pageNumber}
        )
    }
}

function Invoke-BlueOceanApiGetSCMOrganisationRepository {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${organization},
        [Parameter(Position = 1, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${scm},
        [Parameter(Position = 2, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${scmOrganisation},
        [Parameter(Position = 3, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${repository},
        [Parameter(Position = 4, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${credentialId}
    )

    Process {
        'Calling method: BlueOceanApi-GetSCMOrganisationRepository' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:BlueOceanApi.GetSCMOrganisationRepository(
            ${organization},
            ${scm},
            ${scmOrganisation},
            ${repository},
            ${credentialId}
        )
    }
}

function Invoke-BlueOceanApiGetSCMOrganisations {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${organization},
        [Parameter(Position = 1, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${scm},
        [Parameter(Position = 2, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${credentialId}
    )

    Process {
        'Calling method: BlueOceanApi-GetSCMOrganisations' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:BlueOceanApi.GetSCMOrganisations(
            ${organization},
            ${scm},
            ${credentialId}
        )
    }
}

function Invoke-BlueOceanApiGetUser {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${organization},
        [Parameter(Position = 1, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${user}
    )

    Process {
        'Calling method: BlueOceanApi-GetUser' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:BlueOceanApi.GetUser(
            ${organization},
            ${user}
        )
    }
}

function Invoke-BlueOceanApiGetUserFavorites {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${user}
    )

    Process {
        'Calling method: BlueOceanApi-GetUserFavorites' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:BlueOceanApi.GetUserFavorites(
            ${user}
        )
    }
}

function Invoke-BlueOceanApiGetUsers {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${organization}
    )

    Process {
        'Calling method: BlueOceanApi-GetUsers' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:BlueOceanApi.GetUsers(
            ${organization}
        )
    }
}

function Invoke-BlueOceanApiPostPipelineRun {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${organization},
        [Parameter(Position = 1, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${pipeline},
        [Parameter(Position = 2, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${run}
    )

    Process {
        'Calling method: BlueOceanApi-PostPipelineRun' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:BlueOceanApi.PostPipelineRun(
            ${organization},
            ${pipeline},
            ${run}
        )
    }
}

function Invoke-BlueOceanApiPostPipelineRuns {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${organization},
        [Parameter(Position = 1, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${pipeline}
    )

    Process {
        'Calling method: BlueOceanApi-PostPipelineRuns' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:BlueOceanApi.PostPipelineRuns(
            ${organization},
            ${pipeline}
        )
    }
}

function Invoke-BlueOceanApiPutPipelineFavorite {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${organization},
        [Parameter(Position = 1, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${pipeline},
        [Parameter(Position = 2, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [Org.OpenAPITools.Model.Body]
        ${body}
    )

    Process {
        'Calling method: BlueOceanApi-PutPipelineFavorite' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:BlueOceanApi.PutPipelineFavorite(
            ${organization},
            ${pipeline},
            ${body}
        )
    }
}

function Invoke-BlueOceanApiPutPipelineRun {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${organization},
        [Parameter(Position = 1, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${pipeline},
        [Parameter(Position = 2, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${run},
        [Parameter(Position = 3, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${blocking},
        [Parameter(Position = 4, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [Int32]
        ${timeOutInSecs}
    )

    Process {
        'Calling method: BlueOceanApi-PutPipelineRun' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:BlueOceanApi.PutPipelineRun(
            ${organization},
            ${pipeline},
            ${run},
            ${blocking},
            ${timeOutInSecs}
        )
    }
}

function Invoke-BlueOceanApiSearch {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${q}
    )

    Process {
        'Calling method: BlueOceanApi-Search' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:BlueOceanApi.Search(
            ${q}
        )
    }
}

function Invoke-BlueOceanApiSearchClasses {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${q}
    )

    Process {
        'Calling method: BlueOceanApi-SearchClasses' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:BlueOceanApi.SearchClasses(
            ${q}
        )
    }
}


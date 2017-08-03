function Invoke-RemoteAccessApiGetComputer {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [Int32]
        ${depth}
    )

    Process {
        'Calling method: RemoteAccessApi-GetComputer' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:RemoteAccessApi.GetComputer(
            ${depth}
        )
    }
}

function Invoke-RemoteAccessApiGetCrumb {
    [CmdletBinding()]
    Param (
    )

    Process {
        'Calling method: RemoteAccessApi-GetCrumb' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:RemoteAccessApi.GetCrumb(
        )
    }
}

function Invoke-RemoteAccessApiGetJenkins {
    [CmdletBinding()]
    Param (
    )

    Process {
        'Calling method: RemoteAccessApi-GetJenkins' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:RemoteAccessApi.GetJenkins(
        )
    }
}

function Invoke-RemoteAccessApiGetJob {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${name}
    )

    Process {
        'Calling method: RemoteAccessApi-GetJob' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:RemoteAccessApi.GetJob(
            ${name}
        )
    }
}

function Invoke-RemoteAccessApiGetJobConfig {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${name}
    )

    Process {
        'Calling method: RemoteAccessApi-GetJobConfig' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:RemoteAccessApi.GetJobConfig(
            ${name}
        )
    }
}

function Invoke-RemoteAccessApiGetJobLastBuild {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${name}
    )

    Process {
        'Calling method: RemoteAccessApi-GetJobLastBuild' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:RemoteAccessApi.GetJobLastBuild(
            ${name}
        )
    }
}

function Invoke-RemoteAccessApiGetJobProgressiveText {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${name},
        [Parameter(Position = 1, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${number},
        [Parameter(Position = 2, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${start}
    )

    Process {
        'Calling method: RemoteAccessApi-GetJobProgressiveText' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:RemoteAccessApi.GetJobProgressiveText(
            ${name},
            ${number},
            ${start}
        )
    }
}

function Invoke-RemoteAccessApiGetQueue {
    [CmdletBinding()]
    Param (
    )

    Process {
        'Calling method: RemoteAccessApi-GetQueue' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:RemoteAccessApi.GetQueue(
        )
    }
}

function Invoke-RemoteAccessApiGetQueueItem {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${number}
    )

    Process {
        'Calling method: RemoteAccessApi-GetQueueItem' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:RemoteAccessApi.GetQueueItem(
            ${number}
        )
    }
}

function Invoke-RemoteAccessApiGetView {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${name}
    )

    Process {
        'Calling method: RemoteAccessApi-GetView' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:RemoteAccessApi.GetView(
            ${name}
        )
    }
}

function Invoke-RemoteAccessApiGetViewConfig {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${name}
    )

    Process {
        'Calling method: RemoteAccessApi-GetViewConfig' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:RemoteAccessApi.GetViewConfig(
            ${name}
        )
    }
}

function Invoke-RemoteAccessApiHeadJenkins {
    [CmdletBinding()]
    Param (
    )

    Process {
        'Calling method: RemoteAccessApi-HeadJenkins' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:RemoteAccessApi.HeadJenkins(
        )
    }
}

function Invoke-RemoteAccessApiPostCreateItem {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${name},
        [Parameter(Position = 1, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${from},
        [Parameter(Position = 2, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${mode},
        [Parameter(Position = 3, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${body},
        [Parameter(Position = 2, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${jenkinsCrumb},
        [Parameter(Position = 5, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${contentType}
    )

    Process {
        'Calling method: RemoteAccessApi-PostCreateItem' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:RemoteAccessApi.PostCreateItem(
            ${name},
            ${from},
            ${mode},
            ${body},
            ${jenkinsCrumb},
            ${contentType}
        )
    }
}

function Invoke-RemoteAccessApiPostCreateView {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${name},
        [Parameter(Position = 1, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${body},
        [Parameter(Position = 2, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${jenkinsCrumb},
        [Parameter(Position = 3, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${contentType}
    )

    Process {
        'Calling method: RemoteAccessApi-PostCreateView' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:RemoteAccessApi.PostCreateView(
            ${name},
            ${body},
            ${jenkinsCrumb},
            ${contentType}
        )
    }
}

function Invoke-RemoteAccessApiPostJobBuild {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${name},
        [Parameter(Position = 1, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${json},
        [Parameter(Position = 2, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${token},
        [Parameter(Position = 2, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${jenkinsCrumb}
    )

    Process {
        'Calling method: RemoteAccessApi-PostJobBuild' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:RemoteAccessApi.PostJobBuild(
            ${name},
            ${json},
            ${token},
            ${jenkinsCrumb}
        )
    }
}

function Invoke-RemoteAccessApiPostJobConfig {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${name},
        [Parameter(Position = 1, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${body},
        [Parameter(Position = 2, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${jenkinsCrumb}
    )

    Process {
        'Calling method: RemoteAccessApi-PostJobConfig' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:RemoteAccessApi.PostJobConfig(
            ${name},
            ${body},
            ${jenkinsCrumb}
        )
    }
}

function Invoke-RemoteAccessApiPostJobDelete {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${name},
        [Parameter(Position = 2, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${jenkinsCrumb}
    )

    Process {
        'Calling method: RemoteAccessApi-PostJobDelete' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:RemoteAccessApi.PostJobDelete(
            ${name},
            ${jenkinsCrumb}
        )
    }
}

function Invoke-RemoteAccessApiPostJobDisable {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${name},
        [Parameter(Position = 2, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${jenkinsCrumb}
    )

    Process {
        'Calling method: RemoteAccessApi-PostJobDisable' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:RemoteAccessApi.PostJobDisable(
            ${name},
            ${jenkinsCrumb}
        )
    }
}

function Invoke-RemoteAccessApiPostJobEnable {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${name},
        [Parameter(Position = 2, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${jenkinsCrumb}
    )

    Process {
        'Calling method: RemoteAccessApi-PostJobEnable' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:RemoteAccessApi.PostJobEnable(
            ${name},
            ${jenkinsCrumb}
        )
    }
}

function Invoke-RemoteAccessApiPostJobLastBuildStop {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${name},
        [Parameter(Position = 2, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${jenkinsCrumb}
    )

    Process {
        'Calling method: RemoteAccessApi-PostJobLastBuildStop' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:RemoteAccessApi.PostJobLastBuildStop(
            ${name},
            ${jenkinsCrumb}
        )
    }
}

function Invoke-RemoteAccessApiPostViewConfig {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${name},
        [Parameter(Position = 1, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${body},
        [Parameter(Position = 2, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${jenkinsCrumb}
    )

    Process {
        'Calling method: RemoteAccessApi-PostViewConfig' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:RemoteAccessApi.PostViewConfig(
            ${name},
            ${body},
            ${jenkinsCrumb}
        )
    }
}


# org.openapitools.database - Kotlin database library for Swaggy Jenkins

## Requires


## Build

```
./gradlew check assemble
```

This runs all tests and packages the library.

## Features/Implementation Notes

* Some Kotlin and Java types are fully qualified to avoid conflicts with types defined in OpenAPI definitions.
* Supports Mapper using API model classes.
* Supports SQLite types.

<a name="documentation-for-models"></a>
## Documentation for Models

 - [org.openapitools.database.models.AllView](docs/AllView.md)
 - [org.openapitools.database.models.BranchImpl](docs/BranchImpl.md)
 - [org.openapitools.database.models.BranchImpllinks](docs/BranchImpllinks.md)
 - [org.openapitools.database.models.BranchImplpermissions](docs/BranchImplpermissions.md)
 - [org.openapitools.database.models.CauseAction](docs/CauseAction.md)
 - [org.openapitools.database.models.CauseUserIdCause](docs/CauseUserIdCause.md)
 - [org.openapitools.database.models.ClassesByClass](docs/ClassesByClass.md)
 - [org.openapitools.database.models.ClockDifference](docs/ClockDifference.md)
 - [org.openapitools.database.models.ComputerSet](docs/ComputerSet.md)
 - [org.openapitools.database.models.DefaultCrumbIssuer](docs/DefaultCrumbIssuer.md)
 - [org.openapitools.database.models.DiskSpaceMonitorDescriptorDiskSpace](docs/DiskSpaceMonitorDescriptorDiskSpace.md)
 - [org.openapitools.database.models.EmptyChangeLogSet](docs/EmptyChangeLogSet.md)
 - [org.openapitools.database.models.ExtensionClassContainerImpl1](docs/ExtensionClassContainerImpl1.md)
 - [org.openapitools.database.models.ExtensionClassContainerImpl1links](docs/ExtensionClassContainerImpl1links.md)
 - [org.openapitools.database.models.ExtensionClassContainerImpl1map](docs/ExtensionClassContainerImpl1map.md)
 - [org.openapitools.database.models.ExtensionClassImpl](docs/ExtensionClassImpl.md)
 - [org.openapitools.database.models.ExtensionClassImpllinks](docs/ExtensionClassImpllinks.md)
 - [org.openapitools.database.models.FavoriteImpl](docs/FavoriteImpl.md)
 - [org.openapitools.database.models.FavoriteImpllinks](docs/FavoriteImpllinks.md)
 - [org.openapitools.database.models.FreeStyleBuild](docs/FreeStyleBuild.md)
 - [org.openapitools.database.models.FreeStyleProject](docs/FreeStyleProject.md)
 - [org.openapitools.database.models.FreeStyleProjectactions](docs/FreeStyleProjectactions.md)
 - [org.openapitools.database.models.FreeStyleProjecthealthReport](docs/FreeStyleProjecthealthReport.md)
 - [org.openapitools.database.models.GenericResource](docs/GenericResource.md)
 - [org.openapitools.database.models.GithubContent](docs/GithubContent.md)
 - [org.openapitools.database.models.GithubFile](docs/GithubFile.md)
 - [org.openapitools.database.models.GithubOrganization](docs/GithubOrganization.md)
 - [org.openapitools.database.models.GithubOrganizationlinks](docs/GithubOrganizationlinks.md)
 - [org.openapitools.database.models.GithubRepositories](docs/GithubRepositories.md)
 - [org.openapitools.database.models.GithubRepositorieslinks](docs/GithubRepositorieslinks.md)
 - [org.openapitools.database.models.GithubRepository](docs/GithubRepository.md)
 - [org.openapitools.database.models.GithubRepositorylinks](docs/GithubRepositorylinks.md)
 - [org.openapitools.database.models.GithubRepositorypermissions](docs/GithubRepositorypermissions.md)
 - [org.openapitools.database.models.GithubRespositoryContainer](docs/GithubRespositoryContainer.md)
 - [org.openapitools.database.models.GithubRespositoryContainerlinks](docs/GithubRespositoryContainerlinks.md)
 - [org.openapitools.database.models.GithubScm](docs/GithubScm.md)
 - [org.openapitools.database.models.GithubScmlinks](docs/GithubScmlinks.md)
 - [org.openapitools.database.models.Hudson](docs/Hudson.md)
 - [org.openapitools.database.models.HudsonMasterComputer](docs/HudsonMasterComputer.md)
 - [org.openapitools.database.models.HudsonMasterComputerexecutors](docs/HudsonMasterComputerexecutors.md)
 - [org.openapitools.database.models.HudsonMasterComputermonitorData](docs/HudsonMasterComputermonitorData.md)
 - [org.openapitools.database.models.HudsonassignedLabels](docs/HudsonassignedLabels.md)
 - [org.openapitools.database.models.InputStepImpl](docs/InputStepImpl.md)
 - [org.openapitools.database.models.InputStepImpllinks](docs/InputStepImpllinks.md)
 - [org.openapitools.database.models.Label1](docs/Label1.md)
 - [org.openapitools.database.models.Link](docs/Link.md)
 - [org.openapitools.database.models.ListView](docs/ListView.md)
 - [org.openapitools.database.models.MultibranchPipeline](docs/MultibranchPipeline.md)
 - [org.openapitools.database.models.NullSCM](docs/NullSCM.md)
 - [org.openapitools.database.models.Organisation](docs/Organisation.md)
 - [org.openapitools.database.models.Pipeline](docs/Pipeline.md)
 - [org.openapitools.database.models.PipelineActivity](docs/PipelineActivity.md)
 - [org.openapitools.database.models.PipelineActivityartifacts](docs/PipelineActivityartifacts.md)
 - [org.openapitools.database.models.PipelineBranchesitem](docs/PipelineBranchesitem.md)
 - [org.openapitools.database.models.PipelineBranchesitemlatestRun](docs/PipelineBranchesitemlatestRun.md)
 - [org.openapitools.database.models.PipelineBranchesitempullRequest](docs/PipelineBranchesitempullRequest.md)
 - [org.openapitools.database.models.PipelineBranchesitempullRequestlinks](docs/PipelineBranchesitempullRequestlinks.md)
 - [org.openapitools.database.models.PipelineFolderImpl](docs/PipelineFolderImpl.md)
 - [org.openapitools.database.models.PipelineImpl](docs/PipelineImpl.md)
 - [org.openapitools.database.models.PipelineImpllinks](docs/PipelineImpllinks.md)
 - [org.openapitools.database.models.PipelineRun](docs/PipelineRun.md)
 - [org.openapitools.database.models.PipelineRunImpl](docs/PipelineRunImpl.md)
 - [org.openapitools.database.models.PipelineRunImpllinks](docs/PipelineRunImpllinks.md)
 - [org.openapitools.database.models.PipelineRunNode](docs/PipelineRunNode.md)
 - [org.openapitools.database.models.PipelineRunNodeedges](docs/PipelineRunNodeedges.md)
 - [org.openapitools.database.models.PipelineRunartifacts](docs/PipelineRunartifacts.md)
 - [org.openapitools.database.models.PipelineStepImpl](docs/PipelineStepImpl.md)
 - [org.openapitools.database.models.PipelineStepImpllinks](docs/PipelineStepImpllinks.md)
 - [org.openapitools.database.models.PipelinelatestRun](docs/PipelinelatestRun.md)
 - [org.openapitools.database.models.PipelinelatestRunartifacts](docs/PipelinelatestRunartifacts.md)
 - [org.openapitools.database.models.Queue](docs/Queue.md)
 - [org.openapitools.database.models.QueueBlockedItem](docs/QueueBlockedItem.md)
 - [org.openapitools.database.models.QueueItemImpl](docs/QueueItemImpl.md)
 - [org.openapitools.database.models.QueueLeftItem](docs/QueueLeftItem.md)
 - [org.openapitools.database.models.ResponseTimeMonitorData](docs/ResponseTimeMonitorData.md)
 - [org.openapitools.database.models.StringParameterDefinition](docs/StringParameterDefinition.md)
 - [org.openapitools.database.models.StringParameterValue](docs/StringParameterValue.md)
 - [org.openapitools.database.models.SwapSpaceMonitorMemoryUsage2](docs/SwapSpaceMonitorMemoryUsage2.md)
 - [org.openapitools.database.models.UnlabeledLoadStatistics](docs/UnlabeledLoadStatistics.md)
 - [org.openapitools.database.models.User](docs/User.md)


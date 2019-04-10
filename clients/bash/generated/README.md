# Swaggy Jenkins Bash client

## Overview
This is a Bash client script for accessing Swaggy Jenkins service.

The script uses cURL underneath for making all REST calls.

## Usage

```shell
# Make sure the script has executable rights
$ chmod u+x 

# Print the list of operations available on the service
$ ./ -h

# Print the service description
$ ./ --about

# Print detailed information about specific operation
$ ./ <operationId> -h

# Make GET request
./ --host http://<hostname>:<port> --accept xml <operationId> <queryParam1>=<value1> <header_key1>:<header_value2>

# Make GET request using arbitrary curl options (must be passed before <operationId>) to an SSL service using username:password
 -k -sS --tlsv1.2 --host https://<hostname> -u <user>:<password> --accept xml <operationId> <queryParam1>=<value1> <header_key1>:<header_value2>

# Make POST request
$ echo '<body_content>' |  --host <hostname> --content-type json <operationId> -

# Make POST request with simple JSON content, e.g.:
# {
#   "key1": "value1",
#   "key2": "value2",
#   "key3": 23
# }
$ echo '<body_content>' |  --host <hostname> --content-type json <operationId> key1==value1 key2=value2 key3:=23 -

# Preview the cURL command without actually executing it
$  --host http://<hostname>:<port> --dry-run <operationid>

```

## Docker image
You can easily create a Docker image containing a preconfigured environment
for using the REST Bash client including working autocompletion and short
welcome message with basic instructions, using the generated Dockerfile:

```shell
docker build -t my-rest-client .
docker run -it my-rest-client
```

By default you will be logged into a Zsh environment which has much more
advanced auto completion, but you can switch to Bash, where basic autocompletion
is also available.

## Shell completion

### Bash
The generated bash-completion script can be either directly loaded to the current Bash session using:

```shell
source .bash-completion
```

Alternatively, the script can be copied to the `/etc/bash-completion.d` (or on OSX with Homebrew to `/usr/local/etc/bash-completion.d`):

```shell
sudo cp .bash-completion /etc/bash-completion.d/
```

#### OS X
On OSX you might need to install bash-completion using Homebrew:
```shell
brew install bash-completion
```
and add the following to the `~/.bashrc`:

```shell
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi
```

### Zsh
In Zsh, the generated `_` Zsh completion file must be copied to one of the folders under `$FPATH` variable.


## Documentation for API Endpoints

All URIs are relative to */*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*BaseAccessApi* | [**getCrumb**](docs/BaseAccessApi.md#getcrumb) | **GET** /crumbIssuer/api/json | 
*BlueOceanApi* | [**deletePipelineQueueItem**](docs/BlueOceanApi.md#deletepipelinequeueitem) | **DELETE** /blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue} | 
*BlueOceanApi* | [**getAuthenticatedUser**](docs/BlueOceanApi.md#getauthenticateduser) | **GET** /blue/rest/organizations/{organization}/user/ | 
*BlueOceanApi* | [**getClasses**](docs/BlueOceanApi.md#getclasses) | **GET** /blue/rest/classes/{class} | 
*BlueOceanApi* | [**getJsonWebKey**](docs/BlueOceanApi.md#getjsonwebkey) | **GET** /jwt-auth/jwks/{key} | 
*BlueOceanApi* | [**getJsonWebToken**](docs/BlueOceanApi.md#getjsonwebtoken) | **GET** /jwt-auth/token | 
*BlueOceanApi* | [**getOrganisation**](docs/BlueOceanApi.md#getorganisation) | **GET** /blue/rest/organizations/{organization} | 
*BlueOceanApi* | [**getOrganisations**](docs/BlueOceanApi.md#getorganisations) | **GET** /blue/rest/organizations/ | 
*BlueOceanApi* | [**getPipeline**](docs/BlueOceanApi.md#getpipeline) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline} | 
*BlueOceanApi* | [**getPipelineActivities**](docs/BlueOceanApi.md#getpipelineactivities) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/activities | 
*BlueOceanApi* | [**getPipelineBranch**](docs/BlueOceanApi.md#getpipelinebranch) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/ | 
*BlueOceanApi* | [**getPipelineBranchRun**](docs/BlueOceanApi.md#getpipelinebranchrun) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run} | 
*BlueOceanApi* | [**getPipelineBranches**](docs/BlueOceanApi.md#getpipelinebranches) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches | 
*BlueOceanApi* | [**getPipelineFolder**](docs/BlueOceanApi.md#getpipelinefolder) | **GET** /blue/rest/organizations/{organization}/pipelines/{folder}/ | 
*BlueOceanApi* | [**getPipelineFolderPipeline**](docs/BlueOceanApi.md#getpipelinefolderpipeline) | **GET** /blue/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline} | 
*BlueOceanApi* | [**getPipelineQueue**](docs/BlueOceanApi.md#getpipelinequeue) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/queue | 
*BlueOceanApi* | [**getPipelineRun**](docs/BlueOceanApi.md#getpipelinerun) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run} | 
*BlueOceanApi* | [**getPipelineRunLog**](docs/BlueOceanApi.md#getpipelinerunlog) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log | 
*BlueOceanApi* | [**getPipelineRunNode**](docs/BlueOceanApi.md#getpipelinerunnode) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node} | 
*BlueOceanApi* | [**getPipelineRunNodeStep**](docs/BlueOceanApi.md#getpipelinerunnodestep) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step} | 
*BlueOceanApi* | [**getPipelineRunNodeStepLog**](docs/BlueOceanApi.md#getpipelinerunnodesteplog) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log | 
*BlueOceanApi* | [**getPipelineRunNodeSteps**](docs/BlueOceanApi.md#getpipelinerunnodesteps) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps | 
*BlueOceanApi* | [**getPipelineRunNodes**](docs/BlueOceanApi.md#getpipelinerunnodes) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes | 
*BlueOceanApi* | [**getPipelineRuns**](docs/BlueOceanApi.md#getpipelineruns) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs | 
*BlueOceanApi* | [**getPipelines**](docs/BlueOceanApi.md#getpipelines) | **GET** /blue/rest/organizations/{organization}/pipelines/ | 
*BlueOceanApi* | [**getSCM**](docs/BlueOceanApi.md#getscm) | **GET** /blue/rest/organizations/{organization}/scm/{scm} | 
*BlueOceanApi* | [**getSCMOrganisationRepositories**](docs/BlueOceanApi.md#getscmorganisationrepositories) | **GET** /blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories | 
*BlueOceanApi* | [**getSCMOrganisationRepository**](docs/BlueOceanApi.md#getscmorganisationrepository) | **GET** /blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository} | 
*BlueOceanApi* | [**getSCMOrganisations**](docs/BlueOceanApi.md#getscmorganisations) | **GET** /blue/rest/organizations/{organization}/scm/{scm}/organizations | 
*BlueOceanApi* | [**getUser**](docs/BlueOceanApi.md#getuser) | **GET** /blue/rest/organizations/{organization}/users/{user} | 
*BlueOceanApi* | [**getUserFavorites**](docs/BlueOceanApi.md#getuserfavorites) | **GET** /blue/rest/users/{user}/favorites | 
*BlueOceanApi* | [**getUsers**](docs/BlueOceanApi.md#getusers) | **GET** /blue/rest/organizations/{organization}/users/ | 
*BlueOceanApi* | [**postPipelineRun**](docs/BlueOceanApi.md#postpipelinerun) | **POST** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay | 
*BlueOceanApi* | [**postPipelineRuns**](docs/BlueOceanApi.md#postpipelineruns) | **POST** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs | 
*BlueOceanApi* | [**putPipelineFavorite**](docs/BlueOceanApi.md#putpipelinefavorite) | **PUT** /blue/rest/organizations/{organization}/pipelines/{pipeline}/favorite | 
*BlueOceanApi* | [**putPipelineRun**](docs/BlueOceanApi.md#putpipelinerun) | **PUT** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop | 
*BlueOceanApi* | [**search**](docs/BlueOceanApi.md#search) | **GET** /blue/rest/search/ | 
*BlueOceanApi* | [**searchClasses**](docs/BlueOceanApi.md#searchclasses) | **GET** /blue/rest/classes/ | 
*RemoteAccessApi* | [**getComputer**](docs/RemoteAccessApi.md#getcomputer) | **GET** /computer/api/json | 
*RemoteAccessApi* | [**getJenkins**](docs/RemoteAccessApi.md#getjenkins) | **GET** /api/json | 
*RemoteAccessApi* | [**getJob**](docs/RemoteAccessApi.md#getjob) | **GET** /job/{name}/api/json | 
*RemoteAccessApi* | [**getJobConfig**](docs/RemoteAccessApi.md#getjobconfig) | **GET** /job/{name}/config.xml | 
*RemoteAccessApi* | [**getJobLastBuild**](docs/RemoteAccessApi.md#getjoblastbuild) | **GET** /job/{name}/lastBuild/api/json | 
*RemoteAccessApi* | [**getJobProgressiveText**](docs/RemoteAccessApi.md#getjobprogressivetext) | **GET** /job/{name}/{number}/logText/progressiveText | 
*RemoteAccessApi* | [**getQueue**](docs/RemoteAccessApi.md#getqueue) | **GET** /queue/api/json | 
*RemoteAccessApi* | [**getQueueItem**](docs/RemoteAccessApi.md#getqueueitem) | **GET** /queue/item/{number}/api/json | 
*RemoteAccessApi* | [**getView**](docs/RemoteAccessApi.md#getview) | **GET** /view/{name}/api/json | 
*RemoteAccessApi* | [**getViewConfig**](docs/RemoteAccessApi.md#getviewconfig) | **GET** /view/{name}/config.xml | 
*RemoteAccessApi* | [**headJenkins**](docs/RemoteAccessApi.md#headjenkins) | **HEAD** /api/json | 
*RemoteAccessApi* | [**postCreateItem**](docs/RemoteAccessApi.md#postcreateitem) | **POST** /createItem | 
*RemoteAccessApi* | [**postCreateView**](docs/RemoteAccessApi.md#postcreateview) | **POST** /createView | 
*RemoteAccessApi* | [**postJobBuild**](docs/RemoteAccessApi.md#postjobbuild) | **POST** /job/{name}/build | 
*RemoteAccessApi* | [**postJobConfig**](docs/RemoteAccessApi.md#postjobconfig) | **POST** /job/{name}/config.xml | 
*RemoteAccessApi* | [**postJobDelete**](docs/RemoteAccessApi.md#postjobdelete) | **POST** /job/{name}/doDelete | 
*RemoteAccessApi* | [**postJobDisable**](docs/RemoteAccessApi.md#postjobdisable) | **POST** /job/{name}/disable | 
*RemoteAccessApi* | [**postJobEnable**](docs/RemoteAccessApi.md#postjobenable) | **POST** /job/{name}/enable | 
*RemoteAccessApi* | [**postJobLastBuildStop**](docs/RemoteAccessApi.md#postjoblastbuildstop) | **POST** /job/{name}/lastBuild/stop | 
*RemoteAccessApi* | [**postViewConfig**](docs/RemoteAccessApi.md#postviewconfig) | **POST** /view/{name}/config.xml | 


## Documentation For Models

 - [AllView](docs/AllView.md)
 - [Body](docs/Body.md)
 - [BranchImpl](docs/BranchImpl.md)
 - [BranchImpllinks](docs/BranchImpllinks.md)
 - [BranchImplpermissions](docs/BranchImplpermissions.md)
 - [CauseAction](docs/CauseAction.md)
 - [CauseUserIdCause](docs/CauseUserIdCause.md)
 - [ClassesByClass](docs/ClassesByClass.md)
 - [ClockDifference](docs/ClockDifference.md)
 - [ComputerSet](docs/ComputerSet.md)
 - [DefaultCrumbIssuer](docs/DefaultCrumbIssuer.md)
 - [DiskSpaceMonitorDescriptorDiskSpace](docs/DiskSpaceMonitorDescriptorDiskSpace.md)
 - [EmptyChangeLogSet](docs/EmptyChangeLogSet.md)
 - [ExtensionClassContainerImpl1](docs/ExtensionClassContainerImpl1.md)
 - [ExtensionClassContainerImpl1links](docs/ExtensionClassContainerImpl1links.md)
 - [ExtensionClassContainerImpl1map](docs/ExtensionClassContainerImpl1map.md)
 - [ExtensionClassImpl](docs/ExtensionClassImpl.md)
 - [ExtensionClassImpllinks](docs/ExtensionClassImpllinks.md)
 - [FavoriteImpl](docs/FavoriteImpl.md)
 - [FavoriteImpllinks](docs/FavoriteImpllinks.md)
 - [FreeStyleBuild](docs/FreeStyleBuild.md)
 - [FreeStyleProject](docs/FreeStyleProject.md)
 - [FreeStyleProjectactions](docs/FreeStyleProjectactions.md)
 - [FreeStyleProjecthealthReport](docs/FreeStyleProjecthealthReport.md)
 - [GenericResource](docs/GenericResource.md)
 - [GithubContent](docs/GithubContent.md)
 - [GithubFile](docs/GithubFile.md)
 - [GithubOrganization](docs/GithubOrganization.md)
 - [GithubOrganizationlinks](docs/GithubOrganizationlinks.md)
 - [GithubRepositories](docs/GithubRepositories.md)
 - [GithubRepositorieslinks](docs/GithubRepositorieslinks.md)
 - [GithubRepository](docs/GithubRepository.md)
 - [GithubRepositorylinks](docs/GithubRepositorylinks.md)
 - [GithubRepositorypermissions](docs/GithubRepositorypermissions.md)
 - [GithubRespositoryContainer](docs/GithubRespositoryContainer.md)
 - [GithubRespositoryContainerlinks](docs/GithubRespositoryContainerlinks.md)
 - [GithubScm](docs/GithubScm.md)
 - [GithubScmlinks](docs/GithubScmlinks.md)
 - [Hudson](docs/Hudson.md)
 - [HudsonMasterComputer](docs/HudsonMasterComputer.md)
 - [HudsonMasterComputerexecutors](docs/HudsonMasterComputerexecutors.md)
 - [HudsonMasterComputermonitorData](docs/HudsonMasterComputermonitorData.md)
 - [HudsonassignedLabels](docs/HudsonassignedLabels.md)
 - [InputStepImpl](docs/InputStepImpl.md)
 - [InputStepImpllinks](docs/InputStepImpllinks.md)
 - [Label1](docs/Label1.md)
 - [Link](docs/Link.md)
 - [ListView](docs/ListView.md)
 - [MultibranchPipeline](docs/MultibranchPipeline.md)
 - [NullSCM](docs/NullSCM.md)
 - [Organisation](docs/Organisation.md)
 - [Organisations](docs/Organisations.md)
 - [Pipeline](docs/Pipeline.md)
 - [PipelineActivities](docs/PipelineActivities.md)
 - [PipelineActivity](docs/PipelineActivity.md)
 - [PipelineActivityartifacts](docs/PipelineActivityartifacts.md)
 - [PipelineBranches](docs/PipelineBranches.md)
 - [PipelineBranchesitem](docs/PipelineBranchesitem.md)
 - [PipelineBranchesitemlatestRun](docs/PipelineBranchesitemlatestRun.md)
 - [PipelineBranchesitempullRequest](docs/PipelineBranchesitempullRequest.md)
 - [PipelineBranchesitempullRequestlinks](docs/PipelineBranchesitempullRequestlinks.md)
 - [PipelineFolderImpl](docs/PipelineFolderImpl.md)
 - [PipelineImpl](docs/PipelineImpl.md)
 - [PipelineImpllinks](docs/PipelineImpllinks.md)
 - [PipelineQueue](docs/PipelineQueue.md)
 - [PipelineRun](docs/PipelineRun.md)
 - [PipelineRunImpl](docs/PipelineRunImpl.md)
 - [PipelineRunImpllinks](docs/PipelineRunImpllinks.md)
 - [PipelineRunNode](docs/PipelineRunNode.md)
 - [PipelineRunNodeSteps](docs/PipelineRunNodeSteps.md)
 - [PipelineRunNodeedges](docs/PipelineRunNodeedges.md)
 - [PipelineRunNodes](docs/PipelineRunNodes.md)
 - [PipelineRunSteps](docs/PipelineRunSteps.md)
 - [PipelineRunartifacts](docs/PipelineRunartifacts.md)
 - [PipelineRuns](docs/PipelineRuns.md)
 - [PipelineStepImpl](docs/PipelineStepImpl.md)
 - [PipelineStepImpllinks](docs/PipelineStepImpllinks.md)
 - [PipelinelatestRun](docs/PipelinelatestRun.md)
 - [PipelinelatestRunartifacts](docs/PipelinelatestRunartifacts.md)
 - [Pipelines](docs/Pipelines.md)
 - [Queue](docs/Queue.md)
 - [QueueBlockedItem](docs/QueueBlockedItem.md)
 - [QueueItemImpl](docs/QueueItemImpl.md)
 - [QueueLeftItem](docs/QueueLeftItem.md)
 - [ResponseTimeMonitorData](docs/ResponseTimeMonitorData.md)
 - [ScmOrganisations](docs/ScmOrganisations.md)
 - [StringParameterDefinition](docs/StringParameterDefinition.md)
 - [StringParameterValue](docs/StringParameterValue.md)
 - [SwapSpaceMonitorMemoryUsage2](docs/SwapSpaceMonitorMemoryUsage2.md)
 - [UnlabeledLoadStatistics](docs/UnlabeledLoadStatistics.md)
 - [User](docs/User.md)
 - [UserFavorites](docs/UserFavorites.md)
 - [Users](docs/Users.md)


## Documentation For Authorization


## jenkins_auth

- **Type**: HTTP basic authentication

## jwt_auth

- **Type**: API key
- **API key parameter name**: Authorization
- **Location**: HTTP header


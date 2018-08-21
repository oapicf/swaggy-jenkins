# Documentation for Swaggy Jenkins 1.0.0 Tizen Client SDK

## How do I get the doc files?
First generate source code by running `openapi-generator`
Then run `doc/generateDocumentation.sh` from the output folder. It will generate all the doc files and put them in the `doc/SDK` directory.
To successfully generate documentation it needs `Doxygen` installed in the path.
*Note* - Before generating the documentation, put the logo of the project as the file `doc/logo.png` before running `doxygen`.


## How do I use this?
This is the structure of the doc folder:

```
.
├── logo.png                  \\Logo of the project
├── Doxyfile                  \\Doxygen config files
├── generateDocumentation.sh  \\Script to run to generate documentation
├── README.md                 \\This file
├── SDK                       \\Documentation for all classes in Swaggy Jenkins Tizen Client SDK. See ./html/index.html
│   └── html

```

## *tl;dr* run this:

```
doc/generateDocumentation.sh
```

The above SDK folder will be generated. See the index.html inside the SDK folder.


## What's Doxygen?
Doxygen is the de facto standard tool for generating/extracting documentation from annotated/unannotated C++ sources, but it also supports other popular programming languages such as C, Objective-C, C#, PHP, Java, Python, IDL (Corba, Microsoft, and UNO/OpenOffice flavors), Fortran, VHDL, Tcl, and to some extent D.

Check out [Doxygen](https://www.doxygen.org/) for additional information about the Doxygen project.

## I Don't want to run Doxygen. What are the API files for accessing the REST endpoints?
All URIs are relative to http://localhosthttp://localhost

### BlueOceanManager
Method | HTTP request | Description
------------- | ------------- | -------------
*deletePipelineQueueItemSync* | *DELETE* /blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue} | .
*deletePipelineQueueItemASync* | *DELETE* /blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue} | .
*getAuthenticatedUserSync* | *GET* /blue/rest/organizations/{organization}/user/ | .
*getAuthenticatedUserASync* | *GET* /blue/rest/organizations/{organization}/user/ | .
*getClassesSync* | *GET* /blue/rest/classes/{class} | .
*getClassesASync* | *GET* /blue/rest/classes/{class} | .
*getJsonWebKeySync* | *GET* /jwt-auth/jwks/{key} | .
*getJsonWebKeyASync* | *GET* /jwt-auth/jwks/{key} | .
*getJsonWebTokenSync* | *GET* /jwt-auth/token | .
*getJsonWebTokenASync* | *GET* /jwt-auth/token | .
*getOrganisationSync* | *GET* /blue/rest/organizations/{organization} | .
*getOrganisationASync* | *GET* /blue/rest/organizations/{organization} | .
*getOrganisationsSync* | *GET* /blue/rest/organizations/ | .
*getOrganisationsASync* | *GET* /blue/rest/organizations/ | .
*getPipelineSync* | *GET* /blue/rest/organizations/{organization}/pipelines/{pipeline} | .
*getPipelineASync* | *GET* /blue/rest/organizations/{organization}/pipelines/{pipeline} | .
*getPipelineActivitiesSync* | *GET* /blue/rest/organizations/{organization}/pipelines/{pipeline}/activities | .
*getPipelineActivitiesASync* | *GET* /blue/rest/organizations/{organization}/pipelines/{pipeline}/activities | .
*getPipelineBranchSync* | *GET* /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/ | .
*getPipelineBranchASync* | *GET* /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/ | .
*getPipelineBranchRunSync* | *GET* /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run} | .
*getPipelineBranchRunASync* | *GET* /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run} | .
*getPipelineBranchesSync* | *GET* /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches | .
*getPipelineBranchesASync* | *GET* /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches | .
*getPipelineFolderSync* | *GET* /blue/rest/organizations/{organization}/pipelines/{folder}/ | .
*getPipelineFolderASync* | *GET* /blue/rest/organizations/{organization}/pipelines/{folder}/ | .
*getPipelineFolderPipelineSync* | *GET* /blue/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline} | .
*getPipelineFolderPipelineASync* | *GET* /blue/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline} | .
*getPipelineQueueSync* | *GET* /blue/rest/organizations/{organization}/pipelines/{pipeline}/queue | .
*getPipelineQueueASync* | *GET* /blue/rest/organizations/{organization}/pipelines/{pipeline}/queue | .
*getPipelineRunSync* | *GET* /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run} | .
*getPipelineRunASync* | *GET* /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run} | .
*getPipelineRunLogSync* | *GET* /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log | .
*getPipelineRunLogASync* | *GET* /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log | .
*getPipelineRunNodeSync* | *GET* /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node} | .
*getPipelineRunNodeASync* | *GET* /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node} | .
*getPipelineRunNodeStepSync* | *GET* /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step} | .
*getPipelineRunNodeStepASync* | *GET* /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step} | .
*getPipelineRunNodeStepLogSync* | *GET* /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log | .
*getPipelineRunNodeStepLogASync* | *GET* /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log | .
*getPipelineRunNodeStepsSync* | *GET* /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps | .
*getPipelineRunNodeStepsASync* | *GET* /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps | .
*getPipelineRunNodesSync* | *GET* /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes | .
*getPipelineRunNodesASync* | *GET* /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes | .
*getPipelineRunsSync* | *GET* /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs | .
*getPipelineRunsASync* | *GET* /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs | .
*getPipelinesSync* | *GET* /blue/rest/organizations/{organization}/pipelines/ | .
*getPipelinesASync* | *GET* /blue/rest/organizations/{organization}/pipelines/ | .
*getSCMSync* | *GET* /blue/rest/organizations/{organization}/scm/{scm} | .
*getSCMASync* | *GET* /blue/rest/organizations/{organization}/scm/{scm} | .
*getSCMOrganisationRepositoriesSync* | *GET* /blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories | .
*getSCMOrganisationRepositoriesASync* | *GET* /blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories | .
*getSCMOrganisationRepositorySync* | *GET* /blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository} | .
*getSCMOrganisationRepositoryASync* | *GET* /blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository} | .
*getSCMOrganisationsSync* | *GET* /blue/rest/organizations/{organization}/scm/{scm}/organizations | .
*getSCMOrganisationsASync* | *GET* /blue/rest/organizations/{organization}/scm/{scm}/organizations | .
*getUserSync* | *GET* /blue/rest/organizations/{organization}/users/{user} | .
*getUserASync* | *GET* /blue/rest/organizations/{organization}/users/{user} | .
*getUserFavoritesSync* | *GET* /blue/rest/users/{user}/favorites | .
*getUserFavoritesASync* | *GET* /blue/rest/users/{user}/favorites | .
*getUsersSync* | *GET* /blue/rest/organizations/{organization}/users/ | .
*getUsersASync* | *GET* /blue/rest/organizations/{organization}/users/ | .
*postPipelineRunSync* | *POST* /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay | .
*postPipelineRunASync* | *POST* /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay | .
*postPipelineRunsSync* | *POST* /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs | .
*postPipelineRunsASync* | *POST* /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs | .
*putPipelineFavoriteSync* | *PUT* /blue/rest/organizations/{organization}/pipelines/{pipeline}/favorite | .
*putPipelineFavoriteASync* | *PUT* /blue/rest/organizations/{organization}/pipelines/{pipeline}/favorite | .
*putPipelineRunSync* | *PUT* /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop | .
*putPipelineRunASync* | *PUT* /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop | .
*searchSync* | *GET* /blue/rest/search/ | .
*searchASync* | *GET* /blue/rest/search/ | .
*searchClassesSync* | *GET* /blue/rest/classes/ | .
*searchClassesASync* | *GET* /blue/rest/classes/ | .

### RemoteAccessManager
Method | HTTP request | Description
------------- | ------------- | -------------
*getComputerSync* | *GET* /computer/api/json | .
*getComputerASync* | *GET* /computer/api/json | .
*getCrumbSync* | *GET* /crumbIssuer/api/json | .
*getCrumbASync* | *GET* /crumbIssuer/api/json | .
*getJenkinsSync* | *GET* /api/json | .
*getJenkinsASync* | *GET* /api/json | .
*getJobSync* | *GET* /job/{name}/api/json | .
*getJobASync* | *GET* /job/{name}/api/json | .
*getJobConfigSync* | *GET* /job/{name}/config.xml | .
*getJobConfigASync* | *GET* /job/{name}/config.xml | .
*getJobLastBuildSync* | *GET* /job/{name}/lastBuild/api/json | .
*getJobLastBuildASync* | *GET* /job/{name}/lastBuild/api/json | .
*getJobProgressiveTextSync* | *GET* /job/{name}/{number}/logText/progressiveText | .
*getJobProgressiveTextASync* | *GET* /job/{name}/{number}/logText/progressiveText | .
*getQueueSync* | *GET* /queue/api/json | .
*getQueueASync* | *GET* /queue/api/json | .
*getQueueItemSync* | *GET* /queue/item/{number}/api/json | .
*getQueueItemASync* | *GET* /queue/item/{number}/api/json | .
*getViewSync* | *GET* /view/{name}/api/json | .
*getViewASync* | *GET* /view/{name}/api/json | .
*getViewConfigSync* | *GET* /view/{name}/config.xml | .
*getViewConfigASync* | *GET* /view/{name}/config.xml | .
*headJenkinsSync* | *HEAD* /api/json | .
*headJenkinsASync* | *HEAD* /api/json | .
*postCreateItemSync* | *POST* /createItem | .
*postCreateItemASync* | *POST* /createItem | .
*postCreateViewSync* | *POST* /createView | .
*postCreateViewASync* | *POST* /createView | .
*postJobBuildSync* | *POST* /job/{name}/build | .
*postJobBuildASync* | *POST* /job/{name}/build | .
*postJobConfigSync* | *POST* /job/{name}/config.xml | .
*postJobConfigASync* | *POST* /job/{name}/config.xml | .
*postJobDeleteSync* | *POST* /job/{name}/doDelete | .
*postJobDeleteASync* | *POST* /job/{name}/doDelete | .
*postJobDisableSync* | *POST* /job/{name}/disable | .
*postJobDisableASync* | *POST* /job/{name}/disable | .
*postJobEnableSync* | *POST* /job/{name}/enable | .
*postJobEnableASync* | *POST* /job/{name}/enable | .
*postJobLastBuildStopSync* | *POST* /job/{name}/lastBuild/stop | .
*postJobLastBuildStopASync* | *POST* /job/{name}/lastBuild/stop | .
*postViewConfigSync* | *POST* /view/{name}/config.xml | .
*postViewConfigASync* | *POST* /view/{name}/config.xml | .


## What are the Model files for the data structures/objects?
Class | Description
------------- | -------------
 *AllView* | 
 *Body* | 
 *BranchImpl* | 
 *BranchImpllinks* | 
 *BranchImplpermissions* | 
 *CauseAction* | 
 *CauseUserIdCause* | 
 *ClassesByClass* | 
 *ClockDifference* | 
 *ComputerSet* | 
 *DefaultCrumbIssuer* | 
 *DiskSpaceMonitorDescriptorDiskSpace* | 
 *EmptyChangeLogSet* | 
 *ExtensionClassContainerImpl1* | 
 *ExtensionClassContainerImpl1links* | 
 *ExtensionClassContainerImpl1map* | 
 *ExtensionClassImpl* | 
 *ExtensionClassImpllinks* | 
 *FavoriteImpl* | 
 *FavoriteImpllinks* | 
 *FreeStyleBuild* | 
 *FreeStyleProject* | 
 *FreeStyleProjectactions* | 
 *FreeStyleProjecthealthReport* | 
 *GenericResource* | 
 *GithubContent* | 
 *GithubFile* | 
 *GithubOrganization* | 
 *GithubOrganizationlinks* | 
 *GithubRepositories* | 
 *GithubRepositorieslinks* | 
 *GithubRepository* | 
 *GithubRepositorylinks* | 
 *GithubRepositorypermissions* | 
 *GithubRespositoryContainer* | 
 *GithubRespositoryContainerlinks* | 
 *GithubScm* | 
 *GithubScmlinks* | 
 *Hudson* | 
 *HudsonMasterComputer* | 
 *HudsonMasterComputerexecutors* | 
 *HudsonMasterComputermonitorData* | 
 *HudsonassignedLabels* | 
 *InputStepImpl* | 
 *InputStepImpllinks* | 
 *Label1* | 
 *Link* | 
 *ListView* | 
 *MultibranchPipeline* | 
 *NullSCM* | 
 *Organisation* | 
 *Organisations* | 
 *Pipeline* | 
 *PipelineActivities* | 
 *PipelineActivity* | 
 *PipelineActivityartifacts* | 
 *PipelineBranches* | 
 *PipelineBranchesitem* | 
 *PipelineBranchesitemlatestRun* | 
 *PipelineBranchesitempullRequest* | 
 *PipelineBranchesitempullRequestlinks* | 
 *PipelineFolderImpl* | 
 *PipelineImpl* | 
 *PipelineImpllinks* | 
 *PipelineQueue* | 
 *PipelineRun* | 
 *PipelineRunImpl* | 
 *PipelineRunImpllinks* | 
 *PipelineRunNode* | 
 *PipelineRunNodeSteps* | 
 *PipelineRunNodeedges* | 
 *PipelineRunNodes* | 
 *PipelineRunSteps* | 
 *PipelineRunartifacts* | 
 *PipelineRuns* | 
 *PipelineStepImpl* | 
 *PipelineStepImpllinks* | 
 *PipelinelatestRun* | 
 *PipelinelatestRunartifacts* | 
 *Pipelines* | 
 *Queue* | 
 *QueueBlockedItem* | 
 *QueueItemImpl* | 
 *QueueLeftItem* | 
 *ResponseTimeMonitorData* | 
 *ScmOrganisations* | 
 *StringParameterDefinition* | 
 *StringParameterValue* | 
 *SwapSpaceMonitorMemoryUsage2* | 
 *UnlabeledLoadStatistics* | 
 *User* | 
 *UserFavorites* | 
 *Users* | 


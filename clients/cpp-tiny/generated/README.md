# Documentation for OpenAPI Petstore
This is a client generator for microcontrollers on the Espressif32 platform and the Arduino framework
After the client have been generated, you have to change these following variables:
- root.cert | Provide your service root certificate.
- src/main.cpp | Change wifi name
- src/main.cpp | Change wifi password
- lib/service/AbstractService.h | Change to your url

# Documentation for Swaggy Jenkins 2.0.1-pre.0 Tiny client cpp (Arduino) 

The project is structured like this:
```
samples/client/petstore/tiny/cpp/
├── lib
│   ├── Models
│   ├── service
│   └── TestFiles
├── platformio.ini
├── pre_compiling_bourne.py
├── README.md
├── root.cert
├── src
│   └── main.cpp
└── test
    └── RunTests.cpp
```

All URIs are relative to http://localhosthttp://localhost

### BaseApi
|Method | HTTP request | Description|
|------------- | ------------- | -------------|
|*getCrumb* | *GET* /crumbIssuer/api/json | .|

### BlueOceanApi
|Method | HTTP request | Description|
|------------- | ------------- | -------------|
|*deletePipelineQueueItem* | *DELETE* /blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue} | .|
|*getAuthenticatedUser* | *GET* /blue/rest/organizations/{organization}/user/ | .|
|*getClasses* | *GET* /blue/rest/classes/{class} | .|
|*getJsonWebKey* | *GET* /jwt-auth/jwks/{key} | .|
|*getJsonWebToken* | *GET* /jwt-auth/token | .|
|*getOrganisation* | *GET* /blue/rest/organizations/{organization} | .|
|*getOrganisations* | *GET* /blue/rest/organizations/ | .|
|*getPipeline* | *GET* /blue/rest/organizations/{organization}/pipelines/{pipeline} | .|
|*getPipelineActivities* | *GET* /blue/rest/organizations/{organization}/pipelines/{pipeline}/activities | .|
|*getPipelineBranch* | *GET* /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/ | .|
|*getPipelineBranchRun* | *GET* /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run} | .|
|*getPipelineBranches* | *GET* /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches | .|
|*getPipelineFolder* | *GET* /blue/rest/organizations/{organization}/pipelines/{folder}/ | .|
|*getPipelineFolderPipeline* | *GET* /blue/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline} | .|
|*getPipelineQueue* | *GET* /blue/rest/organizations/{organization}/pipelines/{pipeline}/queue | .|
|*getPipelineRun* | *GET* /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run} | .|
|*getPipelineRunLog* | *GET* /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log | .|
|*getPipelineRunNode* | *GET* /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node} | .|
|*getPipelineRunNodeStep* | *GET* /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step} | .|
|*getPipelineRunNodeStepLog* | *GET* /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log | .|
|*getPipelineRunNodeSteps* | *GET* /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps | .|
|*getPipelineRunNodes* | *GET* /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes | .|
|*getPipelineRuns* | *GET* /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs | .|
|*getPipelines* | *GET* /blue/rest/organizations/{organization}/pipelines/ | .|
|*getSCM* | *GET* /blue/rest/organizations/{organization}/scm/{scm} | .|
|*getSCMOrganisationRepositories* | *GET* /blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories | .|
|*getSCMOrganisationRepository* | *GET* /blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository} | .|
|*getSCMOrganisations* | *GET* /blue/rest/organizations/{organization}/scm/{scm}/organizations | .|
|*getUser* | *GET* /blue/rest/organizations/{organization}/users/{user} | .|
|*getUserFavorites* | *GET* /blue/rest/users/{user}/favorites | .|
|*getUsers* | *GET* /blue/rest/organizations/{organization}/users/ | .|
|*postPipelineRun* | *POST* /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay | .|
|*postPipelineRuns* | *POST* /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs | .|
|*putPipelineFavorite* | *PUT* /blue/rest/organizations/{organization}/pipelines/{pipeline}/favorite | .|
|*putPipelineRun* | *PUT* /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop | .|
|*search* | *GET* /blue/rest/search/ | .|
|*searchClasses* | *GET* /blue/rest/classes/ | .|

### RemoteAccessApi
|Method | HTTP request | Description|
|------------- | ------------- | -------------|
|*getComputer* | *GET* /computer/api/json | .|
|*getJenkins* | *GET* /api/json | .|
|*getJob* | *GET* /job/{name}/api/json | .|
|*getJobConfig* | *GET* /job/{name}/config.xml | .|
|*getJobLastBuild* | *GET* /job/{name}/lastBuild/api/json | .|
|*getJobProgressiveText* | *GET* /job/{name}/{number}/logText/progressiveText | .|
|*getQueue* | *GET* /queue/api/json | .|
|*getQueueItem* | *GET* /queue/item/{number}/api/json | .|
|*getView* | *GET* /view/{name}/api/json | .|
|*getViewConfig* | *GET* /view/{name}/config.xml | .|
|*headJenkins* | *HEAD* /api/json | .|
|*postCreateItem* | *POST* /createItem | .|
|*postCreateView* | *POST* /createView | .|
|*postJobBuild* | *POST* /job/{name}/build | .|
|*postJobConfig* | *POST* /job/{name}/config.xml | .|
|*postJobDelete* | *POST* /job/{name}/doDelete | .|
|*postJobDisable* | *POST* /job/{name}/disable | .|
|*postJobEnable* | *POST* /job/{name}/enable | .|
|*postJobLastBuildStop* | *POST* /job/{name}/lastBuild/stop | .|
|*postViewConfig* | *POST* /view/{name}/config.xml | .|


## What are the Model files for the data structures/objects?
|Class | Description|
|------------- | -------------|
|*AllView* | |
|*BranchImpl* | |
|*BranchImpllinks* | |
|*BranchImplpermissions* | |
|*CauseAction* | |
|*CauseUserIdCause* | |
|*ClassesByClass* | |
|*ClockDifference* | |
|*ComputerSet* | |
|*DefaultCrumbIssuer* | |
|*DiskSpaceMonitorDescriptorDiskSpace* | |
|*EmptyChangeLogSet* | |
|*ExtensionClassContainerImpl1* | |
|*ExtensionClassContainerImpl1links* | |
|*ExtensionClassContainerImpl1map* | |
|*ExtensionClassImpl* | |
|*ExtensionClassImpllinks* | |
|*FavoriteImpl* | |
|*FavoriteImpllinks* | |
|*FreeStyleBuild* | |
|*FreeStyleProject* | |
|*FreeStyleProjectactions* | |
|*FreeStyleProjecthealthReport* | |
|*GenericResource* | |
|*GithubContent* | |
|*GithubFile* | |
|*GithubOrganization* | |
|*GithubOrganizationlinks* | |
|*GithubRepositories* | |
|*GithubRepositorieslinks* | |
|*GithubRepository* | |
|*GithubRepositorylinks* | |
|*GithubRepositorypermissions* | |
|*GithubRespositoryContainer* | |
|*GithubRespositoryContainerlinks* | |
|*GithubScm* | |
|*GithubScmlinks* | |
|*Hudson* | |
|*HudsonMasterComputer* | |
|*HudsonMasterComputerexecutors* | |
|*HudsonMasterComputermonitorData* | |
|*HudsonassignedLabels* | |
|*InputStepImpl* | |
|*InputStepImpllinks* | |
|*Label1* | |
|*Link* | |
|*ListView* | |
|*MultibranchPipeline* | |
|*NullSCM* | |
|*Organisation* | |
|*Pipeline* | |
|*PipelineActivity* | |
|*PipelineActivityartifacts* | |
|*PipelineBranchesitem* | |
|*PipelineBranchesitemlatestRun* | |
|*PipelineBranchesitempullRequest* | |
|*PipelineBranchesitempullRequestlinks* | |
|*PipelineFolderImpl* | |
|*PipelineImpl* | |
|*PipelineImpllinks* | |
|*PipelineRun* | |
|*PipelineRunImpl* | |
|*PipelineRunImpllinks* | |
|*PipelineRunNode* | |
|*PipelineRunNodeedges* | |
|*PipelineRunartifacts* | |
|*PipelineStepImpl* | |
|*PipelineStepImpllinks* | |
|*PipelinelatestRun* | |
|*PipelinelatestRunartifacts* | |
|*Queue* | |
|*QueueBlockedItem* | |
|*QueueItemImpl* | |
|*QueueLeftItem* | |
|*ResponseTimeMonitorData* | |
|*StringParameterDefinition* | |
|*StringParameterValue* | |
|*SwapSpaceMonitorMemoryUsage2* | |
|*UnlabeledLoadStatistics* | |
|*User* | |


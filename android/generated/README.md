# swagger-android-client

## Requirements

Building the API client library requires [Maven](https://maven.apache.org/) to be installed.

## Installation

To install the API client library to your local Maven repository, simply execute:

```shell
mvn install
```

To deploy it to a remote Maven repository instead, configure the settings of the repository and execute:

```shell
mvn deploy
```

Refer to the [official documentation](https://maven.apache.org/plugins/maven-deploy-plugin/usage.html) for more information.

### Maven users

Add this dependency to your project's POM:

```xml
<dependency>
    <groupId>io.swagger</groupId>
    <artifactId>swagger-android-client</artifactId>
    <version>1.0.0</version>
    <scope>compile</scope>
</dependency>
```

### Gradle users

Add this dependency to your project's build file:

```groovy
compile "io.swagger:swagger-android-client:1.0.0"
```

### Others

At first generate the JAR by executing:

    mvn package

Then manually install the following JARs:

* target/swagger-android-client-1.0.0.jar
* target/lib/*.jar

## Getting Started

Please follow the [installation](#installation) instruction and execute the following Java code:

```java

import io.swagger.client.api.BlueOceanApi;

public class BlueOceanApiExample {

    public static void main(String[] args) {
        BlueOceanApi apiInstance = new BlueOceanApi();
        String organisation = "organisation_example"; // String | Name of the organisation
        try {
            SwaggyjenkinsUser result = apiInstance.getAuthenticatedUser(organisation);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling BlueOceanApi#getAuthenticatedUser");
            e.printStackTrace();
        }
    }
}

```

## Documentation for API Endpoints

All URIs are relative to *http://localhost*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*BlueOceanApi* | [**getAuthenticatedUser**](docs/BlueOceanApi.md#getAuthenticatedUser) | **GET** /blue/rest/organizations/{organisation}/user/ | 
*BlueOceanApi* | [**getClasses**](docs/BlueOceanApi.md#getClasses) | **GET** /blue/rest/classes/{class} | 
*BlueOceanApi* | [**getOrganisation**](docs/BlueOceanApi.md#getOrganisation) | **GET** /blue/rest/organizations/{organisation} | 
*BlueOceanApi* | [**getOrganisations**](docs/BlueOceanApi.md#getOrganisations) | **GET** /blue/rest/organizations/ | 
*BlueOceanApi* | [**getPipelineBranchByOrg**](docs/BlueOceanApi.md#getPipelineBranchByOrg) | **GET** /blue/rest/organizations/{organisation}/pipelines/{pipeline}/branches/{branch}/ | 
*BlueOceanApi* | [**getPipelineBranchesByOrg**](docs/BlueOceanApi.md#getPipelineBranchesByOrg) | **GET** /blue/rest/organizations/{organisation}/pipelines/{pipeline}/branches | 
*BlueOceanApi* | [**getPipelineByOrg**](docs/BlueOceanApi.md#getPipelineByOrg) | **GET** /blue/rest/organizations/{organisation}/pipelines/{pipeline} | 
*BlueOceanApi* | [**getPipelineFolderByOrg**](docs/BlueOceanApi.md#getPipelineFolderByOrg) | **GET** /blue/rest/organizations/{organisation}/pipelines/{folder}/ | 
*BlueOceanApi* | [**getPipelineFolderByOrg_0**](docs/BlueOceanApi.md#getPipelineFolderByOrg_0) | **GET** /blue/rest/organizations/{organisation}/pipelines/{folder}/pipelines/{pipeline} | 
*BlueOceanApi* | [**getPipelinesByOrg**](docs/BlueOceanApi.md#getPipelinesByOrg) | **GET** /blue/rest/organizations/{organisation}/pipelines/ | 
*BlueOceanApi* | [**getUser**](docs/BlueOceanApi.md#getUser) | **GET** /blue/rest/organizations/{organisation}/users/{user} | 
*BlueOceanApi* | [**getUsers**](docs/BlueOceanApi.md#getUsers) | **GET** /blue/rest/organizations/{organisation}/users/ | 
*BlueOceanApi* | [**search**](docs/BlueOceanApi.md#search) | **GET** /blue/rest/classes/ | 
*BlueOceanApi* | [**search_0**](docs/BlueOceanApi.md#search_0) | **GET** /blue/rest/search/ | 
*RemoteAccessApi* | [**getComputer**](docs/RemoteAccessApi.md#getComputer) | **GET** /computer/api/json?depth&#x3D;1 | 
*RemoteAccessApi* | [**getCrumb**](docs/RemoteAccessApi.md#getCrumb) | **GET** /crumbIssuer/api/json | 
*RemoteAccessApi* | [**getJenkins**](docs/RemoteAccessApi.md#getJenkins) | **GET** /api/json | 
*RemoteAccessApi* | [**getJob**](docs/RemoteAccessApi.md#getJob) | **GET** /job/{name}/api/json | 
*RemoteAccessApi* | [**getJobConfig**](docs/RemoteAccessApi.md#getJobConfig) | **GET** /job/{name}/config.xml | 
*RemoteAccessApi* | [**getJobLastBuild**](docs/RemoteAccessApi.md#getJobLastBuild) | **GET** /job/{name}/lastBuild/api/json | 
*RemoteAccessApi* | [**getJobProgressiveText**](docs/RemoteAccessApi.md#getJobProgressiveText) | **GET** /job/{name}/{number}/logText/progressiveText | 
*RemoteAccessApi* | [**getQueue**](docs/RemoteAccessApi.md#getQueue) | **GET** /queue/api/json | 
*RemoteAccessApi* | [**getQueueItem**](docs/RemoteAccessApi.md#getQueueItem) | **GET** /queue/item/{number}/api/json | 
*RemoteAccessApi* | [**getView**](docs/RemoteAccessApi.md#getView) | **GET** /view/{name}/api/json | 
*RemoteAccessApi* | [**getViewConfig**](docs/RemoteAccessApi.md#getViewConfig) | **GET** /view/{name}/config.xml | 
*RemoteAccessApi* | [**headJenkins**](docs/RemoteAccessApi.md#headJenkins) | **HEAD** /api/json | 
*RemoteAccessApi* | [**postCreateItem**](docs/RemoteAccessApi.md#postCreateItem) | **POST** /createItem | 
*RemoteAccessApi* | [**postCreateView**](docs/RemoteAccessApi.md#postCreateView) | **POST** /createView | 
*RemoteAccessApi* | [**postJobBuild**](docs/RemoteAccessApi.md#postJobBuild) | **POST** /job/{name}/build | 
*RemoteAccessApi* | [**postJobConfig**](docs/RemoteAccessApi.md#postJobConfig) | **POST** /job/{name}/config.xml | 
*RemoteAccessApi* | [**postJobDelete**](docs/RemoteAccessApi.md#postJobDelete) | **POST** /job/{name}/doDelete | 
*RemoteAccessApi* | [**postJobDisable**](docs/RemoteAccessApi.md#postJobDisable) | **POST** /job/{name}/disable | 
*RemoteAccessApi* | [**postJobEnable**](docs/RemoteAccessApi.md#postJobEnable) | **POST** /job/{name}/enable | 
*RemoteAccessApi* | [**postJobLastBuildStop**](docs/RemoteAccessApi.md#postJobLastBuildStop) | **POST** /job/{name}/lastBuild/stop | 
*RemoteAccessApi* | [**postViewConfig**](docs/RemoteAccessApi.md#postViewConfig) | **POST** /view/{name}/config.xml | 


## Documentation for Models

 - [GetClassesByClass](docs/GetClassesByClass.md)
 - [GetMultibranchPipeline](docs/GetMultibranchPipeline.md)
 - [GetOrganisations](docs/GetOrganisations.md)
 - [GetPipelineBranches](docs/GetPipelineBranches.md)
 - [GetPipelineBranchesitem](docs/GetPipelineBranchesitem.md)
 - [GetPipelineBranchesitemLatestRun](docs/GetPipelineBranchesitemLatestRun.md)
 - [GetPipelineBranchesitemPullRequest](docs/GetPipelineBranchesitemPullRequest.md)
 - [GetPipelineBranchesitemPullRequestLinks](docs/GetPipelineBranchesitemPullRequestLinks.md)
 - [GetPipelines](docs/GetPipelines.md)
 - [GetUsers](docs/GetUsers.md)
 - [HudsonmodelAllView](docs/HudsonmodelAllView.md)
 - [HudsonmodelCauseAction](docs/HudsonmodelCauseAction.md)
 - [HudsonmodelCauseUserIdCause](docs/HudsonmodelCauseUserIdCause.md)
 - [HudsonmodelComputerSet](docs/HudsonmodelComputerSet.md)
 - [HudsonmodelFreeStyleBuild](docs/HudsonmodelFreeStyleBuild.md)
 - [HudsonmodelFreeStyleProject](docs/HudsonmodelFreeStyleProject.md)
 - [HudsonmodelFreeStyleProjectactions](docs/HudsonmodelFreeStyleProjectactions.md)
 - [HudsonmodelFreeStyleProjecthealthReport](docs/HudsonmodelFreeStyleProjecthealthReport.md)
 - [HudsonmodelHudson](docs/HudsonmodelHudson.md)
 - [HudsonmodelHudsonMasterComputer](docs/HudsonmodelHudsonMasterComputer.md)
 - [HudsonmodelHudsonMasterComputerMonitorData](docs/HudsonmodelHudsonMasterComputerMonitorData.md)
 - [HudsonmodelHudsonMasterComputerexecutors](docs/HudsonmodelHudsonMasterComputerexecutors.md)
 - [HudsonmodelHudsonassignedLabels](docs/HudsonmodelHudsonassignedLabels.md)
 - [HudsonmodelLabel1](docs/HudsonmodelLabel1.md)
 - [HudsonmodelListView](docs/HudsonmodelListView.md)
 - [HudsonmodelQueue](docs/HudsonmodelQueue.md)
 - [HudsonmodelQueueBlockedItem](docs/HudsonmodelQueueBlockedItem.md)
 - [HudsonmodelQueueLeftItem](docs/HudsonmodelQueueLeftItem.md)
 - [HudsonmodelStringParameterDefinition](docs/HudsonmodelStringParameterDefinition.md)
 - [HudsonmodelStringParameterValue](docs/HudsonmodelStringParameterValue.md)
 - [HudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace](docs/HudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace.md)
 - [HudsonnodeMonitorsResponseTimeMonitorData](docs/HudsonnodeMonitorsResponseTimeMonitorData.md)
 - [HudsonnodeMonitorsSwapSpaceMonitorMemoryUsage2](docs/HudsonnodeMonitorsSwapSpaceMonitorMemoryUsage2.md)
 - [HudsonscmEmptyChangeLogSet](docs/HudsonscmEmptyChangeLogSet.md)
 - [HudsonscmNullSCM](docs/HudsonscmNullSCM.md)
 - [HudsonsecuritycsrfDefaultCrumbIssuer](docs/HudsonsecuritycsrfDefaultCrumbIssuer.md)
 - [HudsonutilClockDifference](docs/HudsonutilClockDifference.md)
 - [IojenkinsblueoceanresthalLink](docs/IojenkinsblueoceanresthalLink.md)
 - [IojenkinsblueoceanrestimplpipelineBranchImpl](docs/IojenkinsblueoceanrestimplpipelineBranchImpl.md)
 - [IojenkinsblueoceanrestimplpipelineBranchImplPermissions](docs/IojenkinsblueoceanrestimplpipelineBranchImplPermissions.md)
 - [IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1](docs/IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1.md)
 - [IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Links](docs/IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Links.md)
 - [IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Map](docs/IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Map.md)
 - [IojenkinsblueoceanserviceembeddedrestExtensionClassImpl](docs/IojenkinsblueoceanserviceembeddedrestExtensionClassImpl.md)
 - [IojenkinsblueoceanserviceembeddedrestExtensionClassImplLinks](docs/IojenkinsblueoceanserviceembeddedrestExtensionClassImplLinks.md)
 - [IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl](docs/IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl.md)
 - [IojenkinsblueoceanserviceembeddedrestPipelineImpl](docs/IojenkinsblueoceanserviceembeddedrestPipelineImpl.md)
 - [JenkinsmodelUnlabeledLoadStatistics](docs/JenkinsmodelUnlabeledLoadStatistics.md)
 - [SwaggyjenkinsOrganisation](docs/SwaggyjenkinsOrganisation.md)
 - [SwaggyjenkinsPipeline](docs/SwaggyjenkinsPipeline.md)
 - [SwaggyjenkinsPipelineLatestRun](docs/SwaggyjenkinsPipelineLatestRun.md)
 - [SwaggyjenkinsPipelineLatestRunartifacts](docs/SwaggyjenkinsPipelineLatestRunartifacts.md)
 - [SwaggyjenkinsUser](docs/SwaggyjenkinsUser.md)


## Documentation for Authorization

Authentication schemes defined for the API:
### jenkins_auth

- **Type**: HTTP basic authentication


## Recommendation

It's recommended to create an instance of `ApiClient` per thread in a multithreaded environment to avoid any potential issues.

## Author

blah@cliffano.com


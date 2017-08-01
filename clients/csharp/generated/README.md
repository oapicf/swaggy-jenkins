# IO.Swagger - the C# library for the Swaggy Jenkins

Jenkins API clients generated from Swagger / Open API specification

This C# SDK is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: 0.1.0
- SDK version: 1.0.0
- Build package: io.swagger.codegen.languages.CSharpClientCodegen
    For more information, please visit [http://github.com/cliffano/swaggy-jenkins](http://github.com/cliffano/swaggy-jenkins)

<a name="frameworks-supported"></a>
## Frameworks supported
- .NET 4.0 or later
- Windows Phone 7.1 (Mango)

<a name="dependencies"></a>
## Dependencies
- [RestSharp](https://www.nuget.org/packages/RestSharp) - 105.1.0 or later
- [Json.NET](https://www.nuget.org/packages/Newtonsoft.Json/) - 7.0.0 or later

The DLLs included in the package may not be the latest version. We recommend using [NuGet] (https://docs.nuget.org/consume/installing-nuget) to obtain the latest version of the packages:
```
Install-Package RestSharp
Install-Package Newtonsoft.Json
```

NOTE: RestSharp versions greater than 105.1.0 have a bug which causes file uploads to fail. See [RestSharp#742](https://github.com/restsharp/RestSharp/issues/742)

<a name="installation"></a>
## Installation
Run the following command to generate the DLL
- [Mac/Linux] `/bin/sh build.sh`
- [Windows] `build.bat`

Then include the DLL (under the `bin` folder) in the C# project, and use the namespaces:
```csharp
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;
```
<a name="packaging"></a>
## Packaging

A `.nuspec` is included with the project. You can follow the Nuget quickstart to [create](https://docs.microsoft.com/en-us/nuget/quickstart/create-and-publish-a-package#create-the-package) and [publish](https://docs.microsoft.com/en-us/nuget/quickstart/create-and-publish-a-package#publish-the-package) packages.

This `.nuspec` uses placeholders from the `.csproj`, so build the `.csproj` directly:

```
nuget pack -Build -OutputDirectory out IO.Swagger.csproj
```

Then, publish to a [local feed](https://docs.microsoft.com/en-us/nuget/hosting-packages/local-feeds) or [other host](https://docs.microsoft.com/en-us/nuget/hosting-packages/overview) and consume the new package via Nuget as usual.

<a name="getting-started"></a>
## Getting Started

```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class Example
    {
        public void main()
        {

            var apiInstance = new BlueOceanApi();
            var organisation = organisation_example;  // string | Name of the organisation

            try
            {
                SwaggyjenkinsUser result = apiInstance.GetAuthenticatedUser(organisation);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling BlueOceanApi.GetAuthenticatedUser: " + e.Message );
            }

        }
    }
}
```

<a name="documentation-for-api-endpoints"></a>
## Documentation for API Endpoints

All URIs are relative to *http://localhost*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*BlueOceanApi* | [**GetAuthenticatedUser**](docs/BlueOceanApi.md#getauthenticateduser) | **GET** /blue/rest/organizations/{organisation}/user/ | 
*BlueOceanApi* | [**GetClasses**](docs/BlueOceanApi.md#getclasses) | **GET** /blue/rest/classes/{class} | 
*BlueOceanApi* | [**GetOrganisation**](docs/BlueOceanApi.md#getorganisation) | **GET** /blue/rest/organizations/{organisation} | 
*BlueOceanApi* | [**GetOrganisations**](docs/BlueOceanApi.md#getorganisations) | **GET** /blue/rest/organizations/ | 
*BlueOceanApi* | [**GetPipelineBranchByOrg**](docs/BlueOceanApi.md#getpipelinebranchbyorg) | **GET** /blue/rest/organizations/{organisation}/pipelines/{pipeline}/branches/{branch}/ | 
*BlueOceanApi* | [**GetPipelineBranchesByOrg**](docs/BlueOceanApi.md#getpipelinebranchesbyorg) | **GET** /blue/rest/organizations/{organisation}/pipelines/{pipeline}/branches | 
*BlueOceanApi* | [**GetPipelineByOrg**](docs/BlueOceanApi.md#getpipelinebyorg) | **GET** /blue/rest/organizations/{organisation}/pipelines/{pipeline} | 
*BlueOceanApi* | [**GetPipelineFolderByOrg**](docs/BlueOceanApi.md#getpipelinefolderbyorg) | **GET** /blue/rest/organizations/{organisation}/pipelines/{folder}/ | 
*BlueOceanApi* | [**GetPipelineFolderByOrg_0**](docs/BlueOceanApi.md#getpipelinefolderbyorg_0) | **GET** /blue/rest/organizations/{organisation}/pipelines/{folder}/pipelines/{pipeline} | 
*BlueOceanApi* | [**GetPipelinesByOrg**](docs/BlueOceanApi.md#getpipelinesbyorg) | **GET** /blue/rest/organizations/{organisation}/pipelines/ | 
*BlueOceanApi* | [**GetUser**](docs/BlueOceanApi.md#getuser) | **GET** /blue/rest/organizations/{organisation}/users/{user} | 
*BlueOceanApi* | [**GetUsers**](docs/BlueOceanApi.md#getusers) | **GET** /blue/rest/organizations/{organisation}/users/ | 
*BlueOceanApi* | [**Search**](docs/BlueOceanApi.md#search) | **GET** /blue/rest/classes/ | 
*BlueOceanApi* | [**Search_0**](docs/BlueOceanApi.md#search_0) | **GET** /blue/rest/search/ | 
*RemoteAccessApi* | [**GetComputer**](docs/RemoteAccessApi.md#getcomputer) | **GET** /computer/api/json?depth&#x3D;1 | 
*RemoteAccessApi* | [**GetCrumb**](docs/RemoteAccessApi.md#getcrumb) | **GET** /crumbIssuer/api/json | 
*RemoteAccessApi* | [**GetJenkins**](docs/RemoteAccessApi.md#getjenkins) | **GET** /api/json | 
*RemoteAccessApi* | [**GetJob**](docs/RemoteAccessApi.md#getjob) | **GET** /job/{name}/api/json | 
*RemoteAccessApi* | [**GetJobConfig**](docs/RemoteAccessApi.md#getjobconfig) | **GET** /job/{name}/config.xml | 
*RemoteAccessApi* | [**GetJobLastBuild**](docs/RemoteAccessApi.md#getjoblastbuild) | **GET** /job/{name}/lastBuild/api/json | 
*RemoteAccessApi* | [**GetJobProgressiveText**](docs/RemoteAccessApi.md#getjobprogressivetext) | **GET** /job/{name}/{number}/logText/progressiveText | 
*RemoteAccessApi* | [**GetQueue**](docs/RemoteAccessApi.md#getqueue) | **GET** /queue/api/json | 
*RemoteAccessApi* | [**GetQueueItem**](docs/RemoteAccessApi.md#getqueueitem) | **GET** /queue/item/{number}/api/json | 
*RemoteAccessApi* | [**GetView**](docs/RemoteAccessApi.md#getview) | **GET** /view/{name}/api/json | 
*RemoteAccessApi* | [**GetViewConfig**](docs/RemoteAccessApi.md#getviewconfig) | **GET** /view/{name}/config.xml | 
*RemoteAccessApi* | [**HeadJenkins**](docs/RemoteAccessApi.md#headjenkins) | **HEAD** /api/json | 
*RemoteAccessApi* | [**PostCreateItem**](docs/RemoteAccessApi.md#postcreateitem) | **POST** /createItem | 
*RemoteAccessApi* | [**PostCreateView**](docs/RemoteAccessApi.md#postcreateview) | **POST** /createView | 
*RemoteAccessApi* | [**PostJobBuild**](docs/RemoteAccessApi.md#postjobbuild) | **POST** /job/{name}/build | 
*RemoteAccessApi* | [**PostJobConfig**](docs/RemoteAccessApi.md#postjobconfig) | **POST** /job/{name}/config.xml | 
*RemoteAccessApi* | [**PostJobDelete**](docs/RemoteAccessApi.md#postjobdelete) | **POST** /job/{name}/doDelete | 
*RemoteAccessApi* | [**PostJobDisable**](docs/RemoteAccessApi.md#postjobdisable) | **POST** /job/{name}/disable | 
*RemoteAccessApi* | [**PostJobEnable**](docs/RemoteAccessApi.md#postjobenable) | **POST** /job/{name}/enable | 
*RemoteAccessApi* | [**PostJobLastBuildStop**](docs/RemoteAccessApi.md#postjoblastbuildstop) | **POST** /job/{name}/lastBuild/stop | 
*RemoteAccessApi* | [**PostViewConfig**](docs/RemoteAccessApi.md#postviewconfig) | **POST** /view/{name}/config.xml | 


<a name="documentation-for-models"></a>
## Documentation for Models

 - [Model.GetClassesByClass](docs/GetClassesByClass.md)
 - [Model.GetMultibranchPipeline](docs/GetMultibranchPipeline.md)
 - [Model.GetOrganisations](docs/GetOrganisations.md)
 - [Model.GetPipelineBranches](docs/GetPipelineBranches.md)
 - [Model.GetPipelineBranchesitem](docs/GetPipelineBranchesitem.md)
 - [Model.GetPipelineBranchesitemLatestRun](docs/GetPipelineBranchesitemLatestRun.md)
 - [Model.GetPipelineBranchesitemPullRequest](docs/GetPipelineBranchesitemPullRequest.md)
 - [Model.GetPipelineBranchesitemPullRequestLinks](docs/GetPipelineBranchesitemPullRequestLinks.md)
 - [Model.GetPipelines](docs/GetPipelines.md)
 - [Model.GetUsers](docs/GetUsers.md)
 - [Model.HudsonmodelAllView](docs/HudsonmodelAllView.md)
 - [Model.HudsonmodelCauseAction](docs/HudsonmodelCauseAction.md)
 - [Model.HudsonmodelCauseUserIdCause](docs/HudsonmodelCauseUserIdCause.md)
 - [Model.HudsonmodelComputerSet](docs/HudsonmodelComputerSet.md)
 - [Model.HudsonmodelFreeStyleBuild](docs/HudsonmodelFreeStyleBuild.md)
 - [Model.HudsonmodelFreeStyleProject](docs/HudsonmodelFreeStyleProject.md)
 - [Model.HudsonmodelFreeStyleProjectactions](docs/HudsonmodelFreeStyleProjectactions.md)
 - [Model.HudsonmodelFreeStyleProjecthealthReport](docs/HudsonmodelFreeStyleProjecthealthReport.md)
 - [Model.HudsonmodelHudson](docs/HudsonmodelHudson.md)
 - [Model.HudsonmodelHudsonMasterComputer](docs/HudsonmodelHudsonMasterComputer.md)
 - [Model.HudsonmodelHudsonMasterComputerMonitorData](docs/HudsonmodelHudsonMasterComputerMonitorData.md)
 - [Model.HudsonmodelHudsonMasterComputerexecutors](docs/HudsonmodelHudsonMasterComputerexecutors.md)
 - [Model.HudsonmodelHudsonassignedLabels](docs/HudsonmodelHudsonassignedLabels.md)
 - [Model.HudsonmodelLabel1](docs/HudsonmodelLabel1.md)
 - [Model.HudsonmodelListView](docs/HudsonmodelListView.md)
 - [Model.HudsonmodelQueue](docs/HudsonmodelQueue.md)
 - [Model.HudsonmodelQueueBlockedItem](docs/HudsonmodelQueueBlockedItem.md)
 - [Model.HudsonmodelQueueLeftItem](docs/HudsonmodelQueueLeftItem.md)
 - [Model.HudsonmodelStringParameterDefinition](docs/HudsonmodelStringParameterDefinition.md)
 - [Model.HudsonmodelStringParameterValue](docs/HudsonmodelStringParameterValue.md)
 - [Model.HudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace](docs/HudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace.md)
 - [Model.HudsonnodeMonitorsResponseTimeMonitorData](docs/HudsonnodeMonitorsResponseTimeMonitorData.md)
 - [Model.HudsonnodeMonitorsSwapSpaceMonitorMemoryUsage2](docs/HudsonnodeMonitorsSwapSpaceMonitorMemoryUsage2.md)
 - [Model.HudsonscmEmptyChangeLogSet](docs/HudsonscmEmptyChangeLogSet.md)
 - [Model.HudsonscmNullSCM](docs/HudsonscmNullSCM.md)
 - [Model.HudsonsecuritycsrfDefaultCrumbIssuer](docs/HudsonsecuritycsrfDefaultCrumbIssuer.md)
 - [Model.HudsonutilClockDifference](docs/HudsonutilClockDifference.md)
 - [Model.IojenkinsblueoceanresthalLink](docs/IojenkinsblueoceanresthalLink.md)
 - [Model.IojenkinsblueoceanrestimplpipelineBranchImpl](docs/IojenkinsblueoceanrestimplpipelineBranchImpl.md)
 - [Model.IojenkinsblueoceanrestimplpipelineBranchImplPermissions](docs/IojenkinsblueoceanrestimplpipelineBranchImplPermissions.md)
 - [Model.IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1](docs/IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1.md)
 - [Model.IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Links](docs/IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Links.md)
 - [Model.IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Map](docs/IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Map.md)
 - [Model.IojenkinsblueoceanserviceembeddedrestExtensionClassImpl](docs/IojenkinsblueoceanserviceembeddedrestExtensionClassImpl.md)
 - [Model.IojenkinsblueoceanserviceembeddedrestExtensionClassImplLinks](docs/IojenkinsblueoceanserviceembeddedrestExtensionClassImplLinks.md)
 - [Model.IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl](docs/IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl.md)
 - [Model.IojenkinsblueoceanserviceembeddedrestPipelineImpl](docs/IojenkinsblueoceanserviceembeddedrestPipelineImpl.md)
 - [Model.JenkinsmodelUnlabeledLoadStatistics](docs/JenkinsmodelUnlabeledLoadStatistics.md)
 - [Model.SwaggyjenkinsOrganisation](docs/SwaggyjenkinsOrganisation.md)
 - [Model.SwaggyjenkinsPipeline](docs/SwaggyjenkinsPipeline.md)
 - [Model.SwaggyjenkinsPipelineLatestRun](docs/SwaggyjenkinsPipelineLatestRun.md)
 - [Model.SwaggyjenkinsPipelineLatestRunartifacts](docs/SwaggyjenkinsPipelineLatestRunartifacts.md)
 - [Model.SwaggyjenkinsUser](docs/SwaggyjenkinsUser.md)


<a name="documentation-for-authorization"></a>
## Documentation for Authorization

<a name="jenkins_auth"></a>
### jenkins_auth

- **Type**: HTTP basic authentication

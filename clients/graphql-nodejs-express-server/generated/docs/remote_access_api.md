# remote_access_api

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetComputer**](remote_access_api.md#GetComputer) | **GET** /computer/api/json | 
[**GetJenkins**](remote_access_api.md#GetJenkins) | **GET** /api/json | 
[**GetJob**](remote_access_api.md#GetJob) | **GET** /job/{name}/api/json | 
[**GetJobConfig**](remote_access_api.md#GetJobConfig) | **GET** /job/{name}/config.xml | 
[**GetJobLastBuild**](remote_access_api.md#GetJobLastBuild) | **GET** /job/{name}/lastBuild/api/json | 
[**GetJobProgressiveText**](remote_access_api.md#GetJobProgressiveText) | **GET** /job/{name}/{number}/logText/progressiveText | 
[**GetQueue**](remote_access_api.md#GetQueue) | **GET** /queue/api/json | 
[**GetQueueItem**](remote_access_api.md#GetQueueItem) | **GET** /queue/item/{number}/api/json | 
[**GetView**](remote_access_api.md#GetView) | **GET** /view/{name}/api/json | 
[**GetViewConfig**](remote_access_api.md#GetViewConfig) | **GET** /view/{name}/config.xml | 
[**HeadJenkins**](remote_access_api.md#HeadJenkins) | **HEAD** /api/json | 
[**PostCreateItem**](remote_access_api.md#PostCreateItem) | **POST** /createItem | 
[**PostCreateView**](remote_access_api.md#PostCreateView) | **POST** /createView | 
[**PostJobBuild**](remote_access_api.md#PostJobBuild) | **POST** /job/{name}/build | 
[**PostJobConfig**](remote_access_api.md#PostJobConfig) | **POST** /job/{name}/config.xml | 
[**PostJobDelete**](remote_access_api.md#PostJobDelete) | **POST** /job/{name}/doDelete | 
[**PostJobDisable**](remote_access_api.md#PostJobDisable) | **POST** /job/{name}/disable | 
[**PostJobEnable**](remote_access_api.md#PostJobEnable) | **POST** /job/{name}/enable | 
[**PostJobLastBuildStop**](remote_access_api.md#PostJobLastBuildStop) | **POST** /job/{name}/lastBuild/stop | 
[**PostViewConfig**](remote_access_api.md#PostViewConfig) | **POST** /view/{name}/config.xml | 


<a name="GetComputer"></a>
# **GetComputer**
> ComputerSet GetComputer(depth)



Retrieve computer details
<a name="GetJenkins"></a>
# **GetJenkins**
> Hudson GetJenkins()



Retrieve Jenkins details
<a name="GetJob"></a>
# **GetJob**
> FreeStyleProject GetJob(name)



Retrieve job details
<a name="GetJobConfig"></a>
# **GetJobConfig**
> String! GetJobConfig(name)



Retrieve job configuration
<a name="GetJobLastBuild"></a>
# **GetJobLastBuild**
> FreeStyleBuild GetJobLastBuild(name)



Retrieve job&#39;s last build details
<a name="GetJobProgressiveText"></a>
# **GetJobProgressiveText**
> GetJobProgressiveText(name, number, start)



Retrieve job&#39;s build progressive text output
<a name="GetQueue"></a>
# **GetQueue**
> Queue GetQueue()



Retrieve queue details
<a name="GetQueueItem"></a>
# **GetQueueItem**
> Queue GetQueueItem(number)



Retrieve queued item details
<a name="GetView"></a>
# **GetView**
> ListView GetView(name)



Retrieve view details
<a name="GetViewConfig"></a>
# **GetViewConfig**
> String! GetViewConfig(name)



Retrieve view configuration
<a name="HeadJenkins"></a>
# **HeadJenkins**
> HeadJenkins()



Retrieve Jenkins headers
<a name="PostCreateItem"></a>
# **PostCreateItem**
> PostCreateItem(name, from, mode, jenkinsCrumb, contentType, body)



Create a new job using job configuration, or copied from an existing job
<a name="PostCreateView"></a>
# **PostCreateView**
> PostCreateView(name, jenkinsCrumb, contentType, body)



Create a new view using view configuration
<a name="PostJobBuild"></a>
# **PostJobBuild**
> PostJobBuild(name, json, token, jenkinsCrumb)



Build a job
<a name="PostJobConfig"></a>
# **PostJobConfig**
> PostJobConfig(name, body, jenkinsCrumb)



Update job configuration
<a name="PostJobDelete"></a>
# **PostJobDelete**
> PostJobDelete(name, jenkinsCrumb)



Delete a job
<a name="PostJobDisable"></a>
# **PostJobDisable**
> PostJobDisable(name, jenkinsCrumb)



Disable a job
<a name="PostJobEnable"></a>
# **PostJobEnable**
> PostJobEnable(name, jenkinsCrumb)



Enable a job
<a name="PostJobLastBuildStop"></a>
# **PostJobLastBuildStop**
> PostJobLastBuildStop(name, jenkinsCrumb)



Stop a job
<a name="PostViewConfig"></a>
# **PostViewConfig**
> PostViewConfig(name, body, jenkinsCrumb)



Update view configuration

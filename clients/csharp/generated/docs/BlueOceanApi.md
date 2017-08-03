# IO.Swagger.Api.BlueOceanApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**DeletePipelineQueueItem**](BlueOceanApi.md#deletepipelinequeueitem) | **DELETE** /blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue} | 
[**GetAuthenticatedUser**](BlueOceanApi.md#getauthenticateduser) | **GET** /blue/rest/organizations/{organization}/user/ | 
[**GetClasses**](BlueOceanApi.md#getclasses) | **GET** /blue/rest/classes/{class} | 
[**GetOrganisation**](BlueOceanApi.md#getorganisation) | **GET** /blue/rest/organizations/{organization} | 
[**GetOrganisations**](BlueOceanApi.md#getorganisations) | **GET** /blue/rest/organizations/ | 
[**GetPipeline**](BlueOceanApi.md#getpipeline) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline} | 
[**GetPipelineActivities**](BlueOceanApi.md#getpipelineactivities) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/activities | 
[**GetPipelineBranch**](BlueOceanApi.md#getpipelinebranch) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/ | 
[**GetPipelineBranchRun**](BlueOceanApi.md#getpipelinebranchrun) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run} | 
[**GetPipelineBranches**](BlueOceanApi.md#getpipelinebranches) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches | 
[**GetPipelineFolder**](BlueOceanApi.md#getpipelinefolder) | **GET** /blue/rest/organizations/{organization}/pipelines/{folder}/ | 
[**GetPipelineFolderPipeline**](BlueOceanApi.md#getpipelinefolderpipeline) | **GET** /blue/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline} | 
[**GetPipelineQueue**](BlueOceanApi.md#getpipelinequeue) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/queue | 
[**GetPipelineRun**](BlueOceanApi.md#getpipelinerun) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run} | 
[**GetPipelineRunLog**](BlueOceanApi.md#getpipelinerunlog) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log | 
[**GetPipelineRunNode**](BlueOceanApi.md#getpipelinerunnode) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node} | 
[**GetPipelineRunNodeStep**](BlueOceanApi.md#getpipelinerunnodestep) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step} | 
[**GetPipelineRunNodeStepLog**](BlueOceanApi.md#getpipelinerunnodesteplog) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log | 
[**GetPipelineRunNodeSteps**](BlueOceanApi.md#getpipelinerunnodesteps) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps | 
[**GetPipelineRunNodes**](BlueOceanApi.md#getpipelinerunnodes) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes | 
[**GetPipelineRuns**](BlueOceanApi.md#getpipelineruns) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs | 
[**GetPipelines**](BlueOceanApi.md#getpipelines) | **GET** /blue/rest/organizations/{organization}/pipelines/ | 
[**GetSCM**](BlueOceanApi.md#getscm) | **GET** /blue/rest/organizations/{organization}/scm/{scm} | 
[**GetSCMOrganisationRepositories**](BlueOceanApi.md#getscmorganisationrepositories) | **GET** /blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories | 
[**GetSCMOrganisationRepository**](BlueOceanApi.md#getscmorganisationrepository) | **GET** /blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository} | 
[**GetSCMOrganisations**](BlueOceanApi.md#getscmorganisations) | **GET** /blue/rest/organizations/{organization}/scm/{scm}/organizations | 
[**GetUser**](BlueOceanApi.md#getuser) | **GET** /blue/rest/organizations/{organization}/users/{user} | 
[**GetUserFavorites**](BlueOceanApi.md#getuserfavorites) | **GET** /blue/rest/users/{user}/favorites | 
[**GetUsers**](BlueOceanApi.md#getusers) | **GET** /blue/rest/organizations/{organization}/users/ | 
[**PostPipelineRun**](BlueOceanApi.md#postpipelinerun) | **POST** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay | 
[**PostPipelineRuns**](BlueOceanApi.md#postpipelineruns) | **POST** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs | 
[**PutPipelineFavorite**](BlueOceanApi.md#putpipelinefavorite) | **PUT** /blue/rest/organizations/{organization}/pipelines/{pipeline}/favorite | 
[**PutPipelineRun**](BlueOceanApi.md#putpipelinerun) | **PUT** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop | 
[**Search**](BlueOceanApi.md#search) | **GET** /blue/rest/search/ | 
[**SearchClasses**](BlueOceanApi.md#searchclasses) | **GET** /blue/rest/classes/ | 


<a name="deletepipelinequeueitem"></a>
# **DeletePipelineQueueItem**
> void DeletePipelineQueueItem (string organization, string pipeline, string queue)



Delete queue item from an organization pipeline queue

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class DeletePipelineQueueItemExample
    {
        public void main()
        {
            // Configure HTTP basic authorization: jenkins_auth
            Configuration.Default.Username = "YOUR_USERNAME";
            Configuration.Default.Password = "YOUR_PASSWORD";

            var apiInstance = new BlueOceanApi();
            var organization = organization_example;  // string | Name of the organization
            var pipeline = pipeline_example;  // string | Name of the pipeline
            var queue = queue_example;  // string | Name of the queue item

            try
            {
                apiInstance.DeletePipelineQueueItem(organization, pipeline, queue);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling BlueOceanApi.DeletePipelineQueueItem: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization | 
 **pipeline** | **string**| Name of the pipeline | 
 **queue** | **string**| Name of the queue item | 

### Return type

void (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getauthenticateduser"></a>
# **GetAuthenticatedUser**
> User GetAuthenticatedUser (string organization)



Retrieve authenticated user details for an organization

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetAuthenticatedUserExample
    {
        public void main()
        {
            // Configure HTTP basic authorization: jenkins_auth
            Configuration.Default.Username = "YOUR_USERNAME";
            Configuration.Default.Password = "YOUR_PASSWORD";

            var apiInstance = new BlueOceanApi();
            var organization = organization_example;  // string | Name of the organization

            try
            {
                User result = apiInstance.GetAuthenticatedUser(organization);
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

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization | 

### Return type

[**User**](User.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getclasses"></a>
# **GetClasses**
> string GetClasses (string _class)



Get a list of class names supported by a given class

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetClassesExample
    {
        public void main()
        {
            // Configure HTTP basic authorization: jenkins_auth
            Configuration.Default.Username = "YOUR_USERNAME";
            Configuration.Default.Password = "YOUR_PASSWORD";

            var apiInstance = new BlueOceanApi();
            var _class = _class_example;  // string | Name of the class

            try
            {
                string result = apiInstance.GetClasses(_class);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling BlueOceanApi.GetClasses: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_class** | **string**| Name of the class | 

### Return type

**string**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getorganisation"></a>
# **GetOrganisation**
> Organisation GetOrganisation (string organization)



Retrieve organization details

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetOrganisationExample
    {
        public void main()
        {
            // Configure HTTP basic authorization: jenkins_auth
            Configuration.Default.Username = "YOUR_USERNAME";
            Configuration.Default.Password = "YOUR_PASSWORD";

            var apiInstance = new BlueOceanApi();
            var organization = organization_example;  // string | Name of the organization

            try
            {
                Organisation result = apiInstance.GetOrganisation(organization);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling BlueOceanApi.GetOrganisation: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization | 

### Return type

[**Organisation**](Organisation.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getorganisations"></a>
# **GetOrganisations**
> Organisations GetOrganisations ()



Retrieve all organizations details

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetOrganisationsExample
    {
        public void main()
        {
            // Configure HTTP basic authorization: jenkins_auth
            Configuration.Default.Username = "YOUR_USERNAME";
            Configuration.Default.Password = "YOUR_PASSWORD";

            var apiInstance = new BlueOceanApi();

            try
            {
                Organisations result = apiInstance.GetOrganisations();
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling BlueOceanApi.GetOrganisations: " + e.Message );
            }
        }
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Organisations**](Organisations.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getpipeline"></a>
# **GetPipeline**
> Pipeline GetPipeline (string organization, string pipeline)



Retrieve pipeline details for an organization

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetPipelineExample
    {
        public void main()
        {
            // Configure HTTP basic authorization: jenkins_auth
            Configuration.Default.Username = "YOUR_USERNAME";
            Configuration.Default.Password = "YOUR_PASSWORD";

            var apiInstance = new BlueOceanApi();
            var organization = organization_example;  // string | Name of the organization
            var pipeline = pipeline_example;  // string | Name of the pipeline

            try
            {
                Pipeline result = apiInstance.GetPipeline(organization, pipeline);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling BlueOceanApi.GetPipeline: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization | 
 **pipeline** | **string**| Name of the pipeline | 

### Return type

[**Pipeline**](Pipeline.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getpipelineactivities"></a>
# **GetPipelineActivities**
> PipelineActivities GetPipelineActivities (string organization, string pipeline)



Retrieve all activities details for an organization pipeline

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetPipelineActivitiesExample
    {
        public void main()
        {
            // Configure HTTP basic authorization: jenkins_auth
            Configuration.Default.Username = "YOUR_USERNAME";
            Configuration.Default.Password = "YOUR_PASSWORD";

            var apiInstance = new BlueOceanApi();
            var organization = organization_example;  // string | Name of the organization
            var pipeline = pipeline_example;  // string | Name of the pipeline

            try
            {
                PipelineActivities result = apiInstance.GetPipelineActivities(organization, pipeline);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling BlueOceanApi.GetPipelineActivities: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization | 
 **pipeline** | **string**| Name of the pipeline | 

### Return type

[**PipelineActivities**](PipelineActivities.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getpipelinebranch"></a>
# **GetPipelineBranch**
> BranchImpl GetPipelineBranch (string organization, string pipeline, string branch)



Retrieve branch details for an organization pipeline

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetPipelineBranchExample
    {
        public void main()
        {
            // Configure HTTP basic authorization: jenkins_auth
            Configuration.Default.Username = "YOUR_USERNAME";
            Configuration.Default.Password = "YOUR_PASSWORD";

            var apiInstance = new BlueOceanApi();
            var organization = organization_example;  // string | Name of the organization
            var pipeline = pipeline_example;  // string | Name of the pipeline
            var branch = branch_example;  // string | Name of the branch

            try
            {
                BranchImpl result = apiInstance.GetPipelineBranch(organization, pipeline, branch);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling BlueOceanApi.GetPipelineBranch: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization | 
 **pipeline** | **string**| Name of the pipeline | 
 **branch** | **string**| Name of the branch | 

### Return type

[**BranchImpl**](BranchImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getpipelinebranchrun"></a>
# **GetPipelineBranchRun**
> PipelineRun GetPipelineBranchRun (string organization, string pipeline, string branch, string run)



Retrieve branch run details for an organization pipeline

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetPipelineBranchRunExample
    {
        public void main()
        {
            // Configure HTTP basic authorization: jenkins_auth
            Configuration.Default.Username = "YOUR_USERNAME";
            Configuration.Default.Password = "YOUR_PASSWORD";

            var apiInstance = new BlueOceanApi();
            var organization = organization_example;  // string | Name of the organization
            var pipeline = pipeline_example;  // string | Name of the pipeline
            var branch = branch_example;  // string | Name of the branch
            var run = run_example;  // string | Name of the run

            try
            {
                PipelineRun result = apiInstance.GetPipelineBranchRun(organization, pipeline, branch, run);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling BlueOceanApi.GetPipelineBranchRun: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization | 
 **pipeline** | **string**| Name of the pipeline | 
 **branch** | **string**| Name of the branch | 
 **run** | **string**| Name of the run | 

### Return type

[**PipelineRun**](PipelineRun.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getpipelinebranches"></a>
# **GetPipelineBranches**
> MultibranchPipeline GetPipelineBranches (string organization, string pipeline)



Retrieve all branches details for an organization pipeline

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetPipelineBranchesExample
    {
        public void main()
        {
            // Configure HTTP basic authorization: jenkins_auth
            Configuration.Default.Username = "YOUR_USERNAME";
            Configuration.Default.Password = "YOUR_PASSWORD";

            var apiInstance = new BlueOceanApi();
            var organization = organization_example;  // string | Name of the organization
            var pipeline = pipeline_example;  // string | Name of the pipeline

            try
            {
                MultibranchPipeline result = apiInstance.GetPipelineBranches(organization, pipeline);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling BlueOceanApi.GetPipelineBranches: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization | 
 **pipeline** | **string**| Name of the pipeline | 

### Return type

[**MultibranchPipeline**](MultibranchPipeline.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getpipelinefolder"></a>
# **GetPipelineFolder**
> PipelineFolderImpl GetPipelineFolder (string organization, string folder)



Retrieve pipeline folder for an organization

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetPipelineFolderExample
    {
        public void main()
        {
            // Configure HTTP basic authorization: jenkins_auth
            Configuration.Default.Username = "YOUR_USERNAME";
            Configuration.Default.Password = "YOUR_PASSWORD";

            var apiInstance = new BlueOceanApi();
            var organization = organization_example;  // string | Name of the organization
            var folder = folder_example;  // string | Name of the folder

            try
            {
                PipelineFolderImpl result = apiInstance.GetPipelineFolder(organization, folder);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling BlueOceanApi.GetPipelineFolder: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization | 
 **folder** | **string**| Name of the folder | 

### Return type

[**PipelineFolderImpl**](PipelineFolderImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getpipelinefolderpipeline"></a>
# **GetPipelineFolderPipeline**
> PipelineImpl GetPipelineFolderPipeline (string organization, string pipeline, string folder)



Retrieve pipeline details for an organization folder

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetPipelineFolderPipelineExample
    {
        public void main()
        {
            // Configure HTTP basic authorization: jenkins_auth
            Configuration.Default.Username = "YOUR_USERNAME";
            Configuration.Default.Password = "YOUR_PASSWORD";

            var apiInstance = new BlueOceanApi();
            var organization = organization_example;  // string | Name of the organization
            var pipeline = pipeline_example;  // string | Name of the pipeline
            var folder = folder_example;  // string | Name of the folder

            try
            {
                PipelineImpl result = apiInstance.GetPipelineFolderPipeline(organization, pipeline, folder);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling BlueOceanApi.GetPipelineFolderPipeline: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization | 
 **pipeline** | **string**| Name of the pipeline | 
 **folder** | **string**| Name of the folder | 

### Return type

[**PipelineImpl**](PipelineImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getpipelinequeue"></a>
# **GetPipelineQueue**
> PipelineQueue GetPipelineQueue (string organization, string pipeline)



Retrieve queue details for an organization pipeline

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetPipelineQueueExample
    {
        public void main()
        {
            // Configure HTTP basic authorization: jenkins_auth
            Configuration.Default.Username = "YOUR_USERNAME";
            Configuration.Default.Password = "YOUR_PASSWORD";

            var apiInstance = new BlueOceanApi();
            var organization = organization_example;  // string | Name of the organization
            var pipeline = pipeline_example;  // string | Name of the pipeline

            try
            {
                PipelineQueue result = apiInstance.GetPipelineQueue(organization, pipeline);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling BlueOceanApi.GetPipelineQueue: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization | 
 **pipeline** | **string**| Name of the pipeline | 

### Return type

[**PipelineQueue**](PipelineQueue.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getpipelinerun"></a>
# **GetPipelineRun**
> PipelineRun GetPipelineRun (string organization, string pipeline, string run)



Retrieve run details for an organization pipeline

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetPipelineRunExample
    {
        public void main()
        {
            // Configure HTTP basic authorization: jenkins_auth
            Configuration.Default.Username = "YOUR_USERNAME";
            Configuration.Default.Password = "YOUR_PASSWORD";

            var apiInstance = new BlueOceanApi();
            var organization = organization_example;  // string | Name of the organization
            var pipeline = pipeline_example;  // string | Name of the pipeline
            var run = run_example;  // string | Name of the run

            try
            {
                PipelineRun result = apiInstance.GetPipelineRun(organization, pipeline, run);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling BlueOceanApi.GetPipelineRun: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization | 
 **pipeline** | **string**| Name of the pipeline | 
 **run** | **string**| Name of the run | 

### Return type

[**PipelineRun**](PipelineRun.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getpipelinerunlog"></a>
# **GetPipelineRunLog**
> string GetPipelineRunLog (string organization, string pipeline, string run, int? start = null, bool? download = null)



Get log for a pipeline run

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetPipelineRunLogExample
    {
        public void main()
        {
            // Configure HTTP basic authorization: jenkins_auth
            Configuration.Default.Username = "YOUR_USERNAME";
            Configuration.Default.Password = "YOUR_PASSWORD";

            var apiInstance = new BlueOceanApi();
            var organization = organization_example;  // string | Name of the organization
            var pipeline = pipeline_example;  // string | Name of the pipeline
            var run = run_example;  // string | Name of the run
            var start = 56;  // int? | Start position of the log (optional) 
            var download = true;  // bool? | Set to true in order to download the file, otherwise it's passed as a response body (optional) 

            try
            {
                string result = apiInstance.GetPipelineRunLog(organization, pipeline, run, start, download);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling BlueOceanApi.GetPipelineRunLog: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization | 
 **pipeline** | **string**| Name of the pipeline | 
 **run** | **string**| Name of the run | 
 **start** | **int?**| Start position of the log | [optional] 
 **download** | **bool?**| Set to true in order to download the file, otherwise it&#39;s passed as a response body | [optional] 

### Return type

**string**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getpipelinerunnode"></a>
# **GetPipelineRunNode**
> PipelineRunNode GetPipelineRunNode (string organization, string pipeline, string run, string node)



Retrieve run node details for an organization pipeline

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetPipelineRunNodeExample
    {
        public void main()
        {
            // Configure HTTP basic authorization: jenkins_auth
            Configuration.Default.Username = "YOUR_USERNAME";
            Configuration.Default.Password = "YOUR_PASSWORD";

            var apiInstance = new BlueOceanApi();
            var organization = organization_example;  // string | Name of the organization
            var pipeline = pipeline_example;  // string | Name of the pipeline
            var run = run_example;  // string | Name of the run
            var node = node_example;  // string | Name of the node

            try
            {
                PipelineRunNode result = apiInstance.GetPipelineRunNode(organization, pipeline, run, node);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling BlueOceanApi.GetPipelineRunNode: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization | 
 **pipeline** | **string**| Name of the pipeline | 
 **run** | **string**| Name of the run | 
 **node** | **string**| Name of the node | 

### Return type

[**PipelineRunNode**](PipelineRunNode.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getpipelinerunnodestep"></a>
# **GetPipelineRunNodeStep**
> PipelineStepImpl GetPipelineRunNodeStep (string organization, string pipeline, string run, string node, string step)



Retrieve run node details for an organization pipeline

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetPipelineRunNodeStepExample
    {
        public void main()
        {
            // Configure HTTP basic authorization: jenkins_auth
            Configuration.Default.Username = "YOUR_USERNAME";
            Configuration.Default.Password = "YOUR_PASSWORD";

            var apiInstance = new BlueOceanApi();
            var organization = organization_example;  // string | Name of the organization
            var pipeline = pipeline_example;  // string | Name of the pipeline
            var run = run_example;  // string | Name of the run
            var node = node_example;  // string | Name of the node
            var step = step_example;  // string | Name of the step

            try
            {
                PipelineStepImpl result = apiInstance.GetPipelineRunNodeStep(organization, pipeline, run, node, step);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling BlueOceanApi.GetPipelineRunNodeStep: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization | 
 **pipeline** | **string**| Name of the pipeline | 
 **run** | **string**| Name of the run | 
 **node** | **string**| Name of the node | 
 **step** | **string**| Name of the step | 

### Return type

[**PipelineStepImpl**](PipelineStepImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getpipelinerunnodesteplog"></a>
# **GetPipelineRunNodeStepLog**
> string GetPipelineRunNodeStepLog (string organization, string pipeline, string run, string node, string step)



Get log for a pipeline run node step

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetPipelineRunNodeStepLogExample
    {
        public void main()
        {
            // Configure HTTP basic authorization: jenkins_auth
            Configuration.Default.Username = "YOUR_USERNAME";
            Configuration.Default.Password = "YOUR_PASSWORD";

            var apiInstance = new BlueOceanApi();
            var organization = organization_example;  // string | Name of the organization
            var pipeline = pipeline_example;  // string | Name of the pipeline
            var run = run_example;  // string | Name of the run
            var node = node_example;  // string | Name of the node
            var step = step_example;  // string | Name of the step

            try
            {
                string result = apiInstance.GetPipelineRunNodeStepLog(organization, pipeline, run, node, step);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling BlueOceanApi.GetPipelineRunNodeStepLog: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization | 
 **pipeline** | **string**| Name of the pipeline | 
 **run** | **string**| Name of the run | 
 **node** | **string**| Name of the node | 
 **step** | **string**| Name of the step | 

### Return type

**string**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getpipelinerunnodesteps"></a>
# **GetPipelineRunNodeSteps**
> PipelineRunNodeSteps GetPipelineRunNodeSteps (string organization, string pipeline, string run, string node)



Retrieve run node steps details for an organization pipeline

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetPipelineRunNodeStepsExample
    {
        public void main()
        {
            // Configure HTTP basic authorization: jenkins_auth
            Configuration.Default.Username = "YOUR_USERNAME";
            Configuration.Default.Password = "YOUR_PASSWORD";

            var apiInstance = new BlueOceanApi();
            var organization = organization_example;  // string | Name of the organization
            var pipeline = pipeline_example;  // string | Name of the pipeline
            var run = run_example;  // string | Name of the run
            var node = node_example;  // string | Name of the node

            try
            {
                PipelineRunNodeSteps result = apiInstance.GetPipelineRunNodeSteps(organization, pipeline, run, node);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling BlueOceanApi.GetPipelineRunNodeSteps: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization | 
 **pipeline** | **string**| Name of the pipeline | 
 **run** | **string**| Name of the run | 
 **node** | **string**| Name of the node | 

### Return type

[**PipelineRunNodeSteps**](PipelineRunNodeSteps.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getpipelinerunnodes"></a>
# **GetPipelineRunNodes**
> PipelineRunNodes GetPipelineRunNodes (string organization, string pipeline, string run)



Retrieve run nodes details for an organization pipeline

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetPipelineRunNodesExample
    {
        public void main()
        {
            // Configure HTTP basic authorization: jenkins_auth
            Configuration.Default.Username = "YOUR_USERNAME";
            Configuration.Default.Password = "YOUR_PASSWORD";

            var apiInstance = new BlueOceanApi();
            var organization = organization_example;  // string | Name of the organization
            var pipeline = pipeline_example;  // string | Name of the pipeline
            var run = run_example;  // string | Name of the run

            try
            {
                PipelineRunNodes result = apiInstance.GetPipelineRunNodes(organization, pipeline, run);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling BlueOceanApi.GetPipelineRunNodes: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization | 
 **pipeline** | **string**| Name of the pipeline | 
 **run** | **string**| Name of the run | 

### Return type

[**PipelineRunNodes**](PipelineRunNodes.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getpipelineruns"></a>
# **GetPipelineRuns**
> PipelineRuns GetPipelineRuns (string organization, string pipeline)



Retrieve all runs details for an organization pipeline

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetPipelineRunsExample
    {
        public void main()
        {
            // Configure HTTP basic authorization: jenkins_auth
            Configuration.Default.Username = "YOUR_USERNAME";
            Configuration.Default.Password = "YOUR_PASSWORD";

            var apiInstance = new BlueOceanApi();
            var organization = organization_example;  // string | Name of the organization
            var pipeline = pipeline_example;  // string | Name of the pipeline

            try
            {
                PipelineRuns result = apiInstance.GetPipelineRuns(organization, pipeline);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling BlueOceanApi.GetPipelineRuns: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization | 
 **pipeline** | **string**| Name of the pipeline | 

### Return type

[**PipelineRuns**](PipelineRuns.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getpipelines"></a>
# **GetPipelines**
> Pipelines GetPipelines (string organization)



Retrieve all pipelines details for an organization

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetPipelinesExample
    {
        public void main()
        {
            // Configure HTTP basic authorization: jenkins_auth
            Configuration.Default.Username = "YOUR_USERNAME";
            Configuration.Default.Password = "YOUR_PASSWORD";

            var apiInstance = new BlueOceanApi();
            var organization = organization_example;  // string | Name of the organization

            try
            {
                Pipelines result = apiInstance.GetPipelines(organization);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling BlueOceanApi.GetPipelines: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization | 

### Return type

[**Pipelines**](Pipelines.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getscm"></a>
# **GetSCM**
> GithubScm GetSCM (string organization, string scm)



Retrieve SCM details for an organization

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetSCMExample
    {
        public void main()
        {
            // Configure HTTP basic authorization: jenkins_auth
            Configuration.Default.Username = "YOUR_USERNAME";
            Configuration.Default.Password = "YOUR_PASSWORD";

            var apiInstance = new BlueOceanApi();
            var organization = organization_example;  // string | Name of the organization
            var scm = scm_example;  // string | Name of SCM

            try
            {
                GithubScm result = apiInstance.GetSCM(organization, scm);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling BlueOceanApi.GetSCM: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization | 
 **scm** | **string**| Name of SCM | 

### Return type

[**GithubScm**](GithubScm.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getscmorganisationrepositories"></a>
# **GetSCMOrganisationRepositories**
> ScmOrganisations GetSCMOrganisationRepositories (string organization, string scm, string scmOrganisation, string credentialId = null, int? pageSize = null, int? pageNumber = null)



Retrieve SCM organization repositories details for an organization

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetSCMOrganisationRepositoriesExample
    {
        public void main()
        {
            // Configure HTTP basic authorization: jenkins_auth
            Configuration.Default.Username = "YOUR_USERNAME";
            Configuration.Default.Password = "YOUR_PASSWORD";

            var apiInstance = new BlueOceanApi();
            var organization = organization_example;  // string | Name of the organization
            var scm = scm_example;  // string | Name of SCM
            var scmOrganisation = scmOrganisation_example;  // string | Name of the SCM organization
            var credentialId = credentialId_example;  // string | Credential ID (optional) 
            var pageSize = 56;  // int? | Number of items in a page (optional) 
            var pageNumber = 56;  // int? | Page number (optional) 

            try
            {
                ScmOrganisations result = apiInstance.GetSCMOrganisationRepositories(organization, scm, scmOrganisation, credentialId, pageSize, pageNumber);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling BlueOceanApi.GetSCMOrganisationRepositories: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization | 
 **scm** | **string**| Name of SCM | 
 **scmOrganisation** | **string**| Name of the SCM organization | 
 **credentialId** | **string**| Credential ID | [optional] 
 **pageSize** | **int?**| Number of items in a page | [optional] 
 **pageNumber** | **int?**| Page number | [optional] 

### Return type

[**ScmOrganisations**](ScmOrganisations.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getscmorganisationrepository"></a>
# **GetSCMOrganisationRepository**
> ScmOrganisations GetSCMOrganisationRepository (string organization, string scm, string scmOrganisation, string repository, string credentialId = null)



Retrieve SCM organization repository details for an organization

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetSCMOrganisationRepositoryExample
    {
        public void main()
        {
            // Configure HTTP basic authorization: jenkins_auth
            Configuration.Default.Username = "YOUR_USERNAME";
            Configuration.Default.Password = "YOUR_PASSWORD";

            var apiInstance = new BlueOceanApi();
            var organization = organization_example;  // string | Name of the organization
            var scm = scm_example;  // string | Name of SCM
            var scmOrganisation = scmOrganisation_example;  // string | Name of the SCM organization
            var repository = repository_example;  // string | Name of the SCM repository
            var credentialId = credentialId_example;  // string | Credential ID (optional) 

            try
            {
                ScmOrganisations result = apiInstance.GetSCMOrganisationRepository(organization, scm, scmOrganisation, repository, credentialId);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling BlueOceanApi.GetSCMOrganisationRepository: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization | 
 **scm** | **string**| Name of SCM | 
 **scmOrganisation** | **string**| Name of the SCM organization | 
 **repository** | **string**| Name of the SCM repository | 
 **credentialId** | **string**| Credential ID | [optional] 

### Return type

[**ScmOrganisations**](ScmOrganisations.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getscmorganisations"></a>
# **GetSCMOrganisations**
> ScmOrganisations GetSCMOrganisations (string organization, string scm, string credentialId = null)



Retrieve SCM organizations details for an organization

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetSCMOrganisationsExample
    {
        public void main()
        {
            // Configure HTTP basic authorization: jenkins_auth
            Configuration.Default.Username = "YOUR_USERNAME";
            Configuration.Default.Password = "YOUR_PASSWORD";

            var apiInstance = new BlueOceanApi();
            var organization = organization_example;  // string | Name of the organization
            var scm = scm_example;  // string | Name of SCM
            var credentialId = credentialId_example;  // string | Credential ID (optional) 

            try
            {
                ScmOrganisations result = apiInstance.GetSCMOrganisations(organization, scm, credentialId);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling BlueOceanApi.GetSCMOrganisations: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization | 
 **scm** | **string**| Name of SCM | 
 **credentialId** | **string**| Credential ID | [optional] 

### Return type

[**ScmOrganisations**](ScmOrganisations.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getuser"></a>
# **GetUser**
> User GetUser (string organization, string user)



Retrieve user details for an organization

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetUserExample
    {
        public void main()
        {
            // Configure HTTP basic authorization: jenkins_auth
            Configuration.Default.Username = "YOUR_USERNAME";
            Configuration.Default.Password = "YOUR_PASSWORD";

            var apiInstance = new BlueOceanApi();
            var organization = organization_example;  // string | Name of the organization
            var user = user_example;  // string | Name of the user

            try
            {
                User result = apiInstance.GetUser(organization, user);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling BlueOceanApi.GetUser: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization | 
 **user** | **string**| Name of the user | 

### Return type

[**User**](User.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getuserfavorites"></a>
# **GetUserFavorites**
> UserFavorites GetUserFavorites (string user)



Retrieve user favorites details for an organization

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetUserFavoritesExample
    {
        public void main()
        {
            // Configure HTTP basic authorization: jenkins_auth
            Configuration.Default.Username = "YOUR_USERNAME";
            Configuration.Default.Password = "YOUR_PASSWORD";

            var apiInstance = new BlueOceanApi();
            var user = user_example;  // string | Name of the user

            try
            {
                UserFavorites result = apiInstance.GetUserFavorites(user);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling BlueOceanApi.GetUserFavorites: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user** | **string**| Name of the user | 

### Return type

[**UserFavorites**](UserFavorites.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getusers"></a>
# **GetUsers**
> User GetUsers (string organization)



Retrieve users details for an organization

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetUsersExample
    {
        public void main()
        {
            // Configure HTTP basic authorization: jenkins_auth
            Configuration.Default.Username = "YOUR_USERNAME";
            Configuration.Default.Password = "YOUR_PASSWORD";

            var apiInstance = new BlueOceanApi();
            var organization = organization_example;  // string | Name of the organization

            try
            {
                User result = apiInstance.GetUsers(organization);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling BlueOceanApi.GetUsers: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization | 

### Return type

[**User**](User.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="postpipelinerun"></a>
# **PostPipelineRun**
> QueueItemImpl PostPipelineRun (string organization, string pipeline, string run)



Replay an organization pipeline run

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class PostPipelineRunExample
    {
        public void main()
        {
            // Configure HTTP basic authorization: jenkins_auth
            Configuration.Default.Username = "YOUR_USERNAME";
            Configuration.Default.Password = "YOUR_PASSWORD";

            var apiInstance = new BlueOceanApi();
            var organization = organization_example;  // string | Name of the organization
            var pipeline = pipeline_example;  // string | Name of the pipeline
            var run = run_example;  // string | Name of the run

            try
            {
                QueueItemImpl result = apiInstance.PostPipelineRun(organization, pipeline, run);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling BlueOceanApi.PostPipelineRun: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization | 
 **pipeline** | **string**| Name of the pipeline | 
 **run** | **string**| Name of the run | 

### Return type

[**QueueItemImpl**](QueueItemImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="postpipelineruns"></a>
# **PostPipelineRuns**
> QueueItemImpl PostPipelineRuns (string organization, string pipeline)



Start a build for an organization pipeline

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class PostPipelineRunsExample
    {
        public void main()
        {
            // Configure HTTP basic authorization: jenkins_auth
            Configuration.Default.Username = "YOUR_USERNAME";
            Configuration.Default.Password = "YOUR_PASSWORD";

            var apiInstance = new BlueOceanApi();
            var organization = organization_example;  // string | Name of the organization
            var pipeline = pipeline_example;  // string | Name of the pipeline

            try
            {
                QueueItemImpl result = apiInstance.PostPipelineRuns(organization, pipeline);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling BlueOceanApi.PostPipelineRuns: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization | 
 **pipeline** | **string**| Name of the pipeline | 

### Return type

[**QueueItemImpl**](QueueItemImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="putpipelinefavorite"></a>
# **PutPipelineFavorite**
> FavoriteImpl PutPipelineFavorite (string organization, string pipeline, Body body)



Favorite/unfavorite a pipeline

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class PutPipelineFavoriteExample
    {
        public void main()
        {
            // Configure HTTP basic authorization: jenkins_auth
            Configuration.Default.Username = "YOUR_USERNAME";
            Configuration.Default.Password = "YOUR_PASSWORD";

            var apiInstance = new BlueOceanApi();
            var organization = organization_example;  // string | Name of the organization
            var pipeline = pipeline_example;  // string | Name of the pipeline
            var body = new Body(); // Body | Set JSON string body to {\"favorite\": true} to favorite, set value to false to unfavorite

            try
            {
                FavoriteImpl result = apiInstance.PutPipelineFavorite(organization, pipeline, body);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling BlueOceanApi.PutPipelineFavorite: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization | 
 **pipeline** | **string**| Name of the pipeline | 
 **body** | [**Body**](Body.md)| Set JSON string body to {\&quot;favorite\&quot;: true} to favorite, set value to false to unfavorite | 

### Return type

[**FavoriteImpl**](FavoriteImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="putpipelinerun"></a>
# **PutPipelineRun**
> PipelineRun PutPipelineRun (string organization, string pipeline, string run, string blocking = null, int? timeOutInSecs = null)



Stop a build of an organization pipeline

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class PutPipelineRunExample
    {
        public void main()
        {
            // Configure HTTP basic authorization: jenkins_auth
            Configuration.Default.Username = "YOUR_USERNAME";
            Configuration.Default.Password = "YOUR_PASSWORD";

            var apiInstance = new BlueOceanApi();
            var organization = organization_example;  // string | Name of the organization
            var pipeline = pipeline_example;  // string | Name of the pipeline
            var run = run_example;  // string | Name of the run
            var blocking = blocking_example;  // string | Set to true to make blocking stop, default: false (optional) 
            var timeOutInSecs = 56;  // int? | Timeout in seconds, default: 10 seconds (optional) 

            try
            {
                PipelineRun result = apiInstance.PutPipelineRun(organization, pipeline, run, blocking, timeOutInSecs);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling BlueOceanApi.PutPipelineRun: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization | 
 **pipeline** | **string**| Name of the pipeline | 
 **run** | **string**| Name of the run | 
 **blocking** | **string**| Set to true to make blocking stop, default: false | [optional] 
 **timeOutInSecs** | **int?**| Timeout in seconds, default: 10 seconds | [optional] 

### Return type

[**PipelineRun**](PipelineRun.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="search"></a>
# **Search**
> string Search (string q)



Search for any resource details

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class SearchExample
    {
        public void main()
        {
            // Configure HTTP basic authorization: jenkins_auth
            Configuration.Default.Username = "YOUR_USERNAME";
            Configuration.Default.Password = "YOUR_PASSWORD";

            var apiInstance = new BlueOceanApi();
            var q = q_example;  // string | Query string

            try
            {
                string result = apiInstance.Search(q);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling BlueOceanApi.Search: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **string**| Query string | 

### Return type

**string**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="searchclasses"></a>
# **SearchClasses**
> string SearchClasses (string q)



Get classes details

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class SearchClassesExample
    {
        public void main()
        {
            // Configure HTTP basic authorization: jenkins_auth
            Configuration.Default.Username = "YOUR_USERNAME";
            Configuration.Default.Password = "YOUR_PASSWORD";

            var apiInstance = new BlueOceanApi();
            var q = q_example;  // string | Query string containing an array of class names

            try
            {
                string result = apiInstance.SearchClasses(q);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling BlueOceanApi.SearchClasses: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **string**| Query string containing an array of class names | 

### Return type

**string**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


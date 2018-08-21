# Org.OpenAPITools.Api.RemoteAccessApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetComputer**](RemoteAccessApi.md#getcomputer) | **GET** /computer/api/json | 
[**GetCrumb**](RemoteAccessApi.md#getcrumb) | **GET** /crumbIssuer/api/json | 
[**GetJenkins**](RemoteAccessApi.md#getjenkins) | **GET** /api/json | 
[**GetJob**](RemoteAccessApi.md#getjob) | **GET** /job/{name}/api/json | 
[**GetJobConfig**](RemoteAccessApi.md#getjobconfig) | **GET** /job/{name}/config.xml | 
[**GetJobLastBuild**](RemoteAccessApi.md#getjoblastbuild) | **GET** /job/{name}/lastBuild/api/json | 
[**GetJobProgressiveText**](RemoteAccessApi.md#getjobprogressivetext) | **GET** /job/{name}/{number}/logText/progressiveText | 
[**GetQueue**](RemoteAccessApi.md#getqueue) | **GET** /queue/api/json | 
[**GetQueueItem**](RemoteAccessApi.md#getqueueitem) | **GET** /queue/item/{number}/api/json | 
[**GetView**](RemoteAccessApi.md#getview) | **GET** /view/{name}/api/json | 
[**GetViewConfig**](RemoteAccessApi.md#getviewconfig) | **GET** /view/{name}/config.xml | 
[**HeadJenkins**](RemoteAccessApi.md#headjenkins) | **HEAD** /api/json | 
[**PostCreateItem**](RemoteAccessApi.md#postcreateitem) | **POST** /createItem | 
[**PostCreateView**](RemoteAccessApi.md#postcreateview) | **POST** /createView | 
[**PostJobBuild**](RemoteAccessApi.md#postjobbuild) | **POST** /job/{name}/build | 
[**PostJobConfig**](RemoteAccessApi.md#postjobconfig) | **POST** /job/{name}/config.xml | 
[**PostJobDelete**](RemoteAccessApi.md#postjobdelete) | **POST** /job/{name}/doDelete | 
[**PostJobDisable**](RemoteAccessApi.md#postjobdisable) | **POST** /job/{name}/disable | 
[**PostJobEnable**](RemoteAccessApi.md#postjobenable) | **POST** /job/{name}/enable | 
[**PostJobLastBuildStop**](RemoteAccessApi.md#postjoblastbuildstop) | **POST** /job/{name}/lastBuild/stop | 
[**PostViewConfig**](RemoteAccessApi.md#postviewconfig) | **POST** /view/{name}/config.xml | 


<a name="getcomputer"></a>
# **GetComputer**
> ComputerSet GetComputer (int? depth)



Retrieve computer details

### Example
```csharp
using System;
using System.Diagnostics;
using Org.OpenAPITools.Api;
using Org.OpenAPITools.Client;
using Org.OpenAPITools.Model;

namespace Example
{
    public class GetComputerExample
    {
        public void main()
        {
            
            // Configure HTTP basic authorization: jenkins_auth
            Configuration.Default.Username = "YOUR_USERNAME";
            Configuration.Default.Password = "YOUR_PASSWORD";

            var apiInstance = new RemoteAccessApi();
            var depth = 56;  // int? | Recursion depth in response model

            try
            {
                ComputerSet result = apiInstance.GetComputer(depth);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling RemoteAccessApi.GetComputer: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **depth** | **int?**| Recursion depth in response model | 

### Return type

[**ComputerSet**](ComputerSet.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getcrumb"></a>
# **GetCrumb**
> DefaultCrumbIssuer GetCrumb ()



Retrieve CSRF protection token

### Example
```csharp
using System;
using System.Diagnostics;
using Org.OpenAPITools.Api;
using Org.OpenAPITools.Client;
using Org.OpenAPITools.Model;

namespace Example
{
    public class GetCrumbExample
    {
        public void main()
        {
            
            // Configure HTTP basic authorization: jenkins_auth
            Configuration.Default.Username = "YOUR_USERNAME";
            Configuration.Default.Password = "YOUR_PASSWORD";

            var apiInstance = new RemoteAccessApi();

            try
            {
                DefaultCrumbIssuer result = apiInstance.GetCrumb();
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling RemoteAccessApi.GetCrumb: " + e.Message );
            }
        }
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**DefaultCrumbIssuer**](DefaultCrumbIssuer.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getjenkins"></a>
# **GetJenkins**
> Hudson GetJenkins ()



Retrieve Jenkins details

### Example
```csharp
using System;
using System.Diagnostics;
using Org.OpenAPITools.Api;
using Org.OpenAPITools.Client;
using Org.OpenAPITools.Model;

namespace Example
{
    public class GetJenkinsExample
    {
        public void main()
        {
            
            // Configure HTTP basic authorization: jenkins_auth
            Configuration.Default.Username = "YOUR_USERNAME";
            Configuration.Default.Password = "YOUR_PASSWORD";

            var apiInstance = new RemoteAccessApi();

            try
            {
                Hudson result = apiInstance.GetJenkins();
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling RemoteAccessApi.GetJenkins: " + e.Message );
            }
        }
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Hudson**](Hudson.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getjob"></a>
# **GetJob**
> FreeStyleProject GetJob (string name)



Retrieve job details

### Example
```csharp
using System;
using System.Diagnostics;
using Org.OpenAPITools.Api;
using Org.OpenAPITools.Client;
using Org.OpenAPITools.Model;

namespace Example
{
    public class GetJobExample
    {
        public void main()
        {
            
            // Configure HTTP basic authorization: jenkins_auth
            Configuration.Default.Username = "YOUR_USERNAME";
            Configuration.Default.Password = "YOUR_PASSWORD";

            var apiInstance = new RemoteAccessApi();
            var name = name_example;  // string | Name of the job

            try
            {
                FreeStyleProject result = apiInstance.GetJob(name);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling RemoteAccessApi.GetJob: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Name of the job | 

### Return type

[**FreeStyleProject**](FreeStyleProject.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getjobconfig"></a>
# **GetJobConfig**
> string GetJobConfig (string name)



Retrieve job configuration

### Example
```csharp
using System;
using System.Diagnostics;
using Org.OpenAPITools.Api;
using Org.OpenAPITools.Client;
using Org.OpenAPITools.Model;

namespace Example
{
    public class GetJobConfigExample
    {
        public void main()
        {
            
            // Configure HTTP basic authorization: jenkins_auth
            Configuration.Default.Username = "YOUR_USERNAME";
            Configuration.Default.Password = "YOUR_PASSWORD";

            var apiInstance = new RemoteAccessApi();
            var name = name_example;  // string | Name of the job

            try
            {
                string result = apiInstance.GetJobConfig(name);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling RemoteAccessApi.GetJobConfig: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Name of the job | 

### Return type

**string**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getjoblastbuild"></a>
# **GetJobLastBuild**
> FreeStyleBuild GetJobLastBuild (string name)



Retrieve job's last build details

### Example
```csharp
using System;
using System.Diagnostics;
using Org.OpenAPITools.Api;
using Org.OpenAPITools.Client;
using Org.OpenAPITools.Model;

namespace Example
{
    public class GetJobLastBuildExample
    {
        public void main()
        {
            
            // Configure HTTP basic authorization: jenkins_auth
            Configuration.Default.Username = "YOUR_USERNAME";
            Configuration.Default.Password = "YOUR_PASSWORD";

            var apiInstance = new RemoteAccessApi();
            var name = name_example;  // string | Name of the job

            try
            {
                FreeStyleBuild result = apiInstance.GetJobLastBuild(name);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling RemoteAccessApi.GetJobLastBuild: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Name of the job | 

### Return type

[**FreeStyleBuild**](FreeStyleBuild.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getjobprogressivetext"></a>
# **GetJobProgressiveText**
> void GetJobProgressiveText (string name, string number, string start)



Retrieve job's build progressive text output

### Example
```csharp
using System;
using System.Diagnostics;
using Org.OpenAPITools.Api;
using Org.OpenAPITools.Client;
using Org.OpenAPITools.Model;

namespace Example
{
    public class GetJobProgressiveTextExample
    {
        public void main()
        {
            
            // Configure HTTP basic authorization: jenkins_auth
            Configuration.Default.Username = "YOUR_USERNAME";
            Configuration.Default.Password = "YOUR_PASSWORD";

            var apiInstance = new RemoteAccessApi();
            var name = name_example;  // string | Name of the job
            var number = number_example;  // string | Build number
            var start = start_example;  // string | Starting point of progressive text output

            try
            {
                apiInstance.GetJobProgressiveText(name, number, start);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling RemoteAccessApi.GetJobProgressiveText: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Name of the job | 
 **number** | **string**| Build number | 
 **start** | **string**| Starting point of progressive text output | 

### Return type

void (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getqueue"></a>
# **GetQueue**
> Queue GetQueue ()



Retrieve queue details

### Example
```csharp
using System;
using System.Diagnostics;
using Org.OpenAPITools.Api;
using Org.OpenAPITools.Client;
using Org.OpenAPITools.Model;

namespace Example
{
    public class GetQueueExample
    {
        public void main()
        {
            
            // Configure HTTP basic authorization: jenkins_auth
            Configuration.Default.Username = "YOUR_USERNAME";
            Configuration.Default.Password = "YOUR_PASSWORD";

            var apiInstance = new RemoteAccessApi();

            try
            {
                Queue result = apiInstance.GetQueue();
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling RemoteAccessApi.GetQueue: " + e.Message );
            }
        }
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Queue**](Queue.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getqueueitem"></a>
# **GetQueueItem**
> Queue GetQueueItem (string number)



Retrieve queued item details

### Example
```csharp
using System;
using System.Diagnostics;
using Org.OpenAPITools.Api;
using Org.OpenAPITools.Client;
using Org.OpenAPITools.Model;

namespace Example
{
    public class GetQueueItemExample
    {
        public void main()
        {
            
            // Configure HTTP basic authorization: jenkins_auth
            Configuration.Default.Username = "YOUR_USERNAME";
            Configuration.Default.Password = "YOUR_PASSWORD";

            var apiInstance = new RemoteAccessApi();
            var number = number_example;  // string | Queue number

            try
            {
                Queue result = apiInstance.GetQueueItem(number);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling RemoteAccessApi.GetQueueItem: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **number** | **string**| Queue number | 

### Return type

[**Queue**](Queue.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getview"></a>
# **GetView**
> ListView GetView (string name)



Retrieve view details

### Example
```csharp
using System;
using System.Diagnostics;
using Org.OpenAPITools.Api;
using Org.OpenAPITools.Client;
using Org.OpenAPITools.Model;

namespace Example
{
    public class GetViewExample
    {
        public void main()
        {
            
            // Configure HTTP basic authorization: jenkins_auth
            Configuration.Default.Username = "YOUR_USERNAME";
            Configuration.Default.Password = "YOUR_PASSWORD";

            var apiInstance = new RemoteAccessApi();
            var name = name_example;  // string | Name of the view

            try
            {
                ListView result = apiInstance.GetView(name);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling RemoteAccessApi.GetView: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Name of the view | 

### Return type

[**ListView**](ListView.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getviewconfig"></a>
# **GetViewConfig**
> string GetViewConfig (string name)



Retrieve view configuration

### Example
```csharp
using System;
using System.Diagnostics;
using Org.OpenAPITools.Api;
using Org.OpenAPITools.Client;
using Org.OpenAPITools.Model;

namespace Example
{
    public class GetViewConfigExample
    {
        public void main()
        {
            
            // Configure HTTP basic authorization: jenkins_auth
            Configuration.Default.Username = "YOUR_USERNAME";
            Configuration.Default.Password = "YOUR_PASSWORD";

            var apiInstance = new RemoteAccessApi();
            var name = name_example;  // string | Name of the view

            try
            {
                string result = apiInstance.GetViewConfig(name);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling RemoteAccessApi.GetViewConfig: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Name of the view | 

### Return type

**string**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="headjenkins"></a>
# **HeadJenkins**
> void HeadJenkins ()



Retrieve Jenkins headers

### Example
```csharp
using System;
using System.Diagnostics;
using Org.OpenAPITools.Api;
using Org.OpenAPITools.Client;
using Org.OpenAPITools.Model;

namespace Example
{
    public class HeadJenkinsExample
    {
        public void main()
        {
            
            // Configure HTTP basic authorization: jenkins_auth
            Configuration.Default.Username = "YOUR_USERNAME";
            Configuration.Default.Password = "YOUR_PASSWORD";

            var apiInstance = new RemoteAccessApi();

            try
            {
                apiInstance.HeadJenkins();
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling RemoteAccessApi.HeadJenkins: " + e.Message );
            }
        }
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="postcreateitem"></a>
# **PostCreateItem**
> void PostCreateItem (string name, string from, string mode, string jenkinsCrumb, string contentType, string body)



Create a new job using job configuration, or copied from an existing job

### Example
```csharp
using System;
using System.Diagnostics;
using Org.OpenAPITools.Api;
using Org.OpenAPITools.Client;
using Org.OpenAPITools.Model;

namespace Example
{
    public class PostCreateItemExample
    {
        public void main()
        {
            
            // Configure HTTP basic authorization: jenkins_auth
            Configuration.Default.Username = "YOUR_USERNAME";
            Configuration.Default.Password = "YOUR_PASSWORD";

            var apiInstance = new RemoteAccessApi();
            var name = name_example;  // string | Name of the new job
            var from = from_example;  // string | Existing job to copy from (optional) 
            var mode = mode_example;  // string | Set to 'copy' for copying an existing job (optional) 
            var jenkinsCrumb = jenkinsCrumb_example;  // string | CSRF protection token (optional) 
            var contentType = contentType_example;  // string | Content type header application/xml (optional) 
            var body = body_example;  // string | Job configuration in config.xml format (optional) 

            try
            {
                apiInstance.PostCreateItem(name, from, mode, jenkinsCrumb, contentType, body);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling RemoteAccessApi.PostCreateItem: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Name of the new job | 
 **from** | **string**| Existing job to copy from | [optional] 
 **mode** | **string**| Set to &#39;copy&#39; for copying an existing job | [optional] 
 **jenkinsCrumb** | **string**| CSRF protection token | [optional] 
 **contentType** | **string**| Content type header application/xml | [optional] 
 **body** | **string**| Job configuration in config.xml format | [optional] 

### Return type

void (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="postcreateview"></a>
# **PostCreateView**
> void PostCreateView (string name, string jenkinsCrumb, string contentType, string body)



Create a new view using view configuration

### Example
```csharp
using System;
using System.Diagnostics;
using Org.OpenAPITools.Api;
using Org.OpenAPITools.Client;
using Org.OpenAPITools.Model;

namespace Example
{
    public class PostCreateViewExample
    {
        public void main()
        {
            
            // Configure HTTP basic authorization: jenkins_auth
            Configuration.Default.Username = "YOUR_USERNAME";
            Configuration.Default.Password = "YOUR_PASSWORD";

            var apiInstance = new RemoteAccessApi();
            var name = name_example;  // string | Name of the new view
            var jenkinsCrumb = jenkinsCrumb_example;  // string | CSRF protection token (optional) 
            var contentType = contentType_example;  // string | Content type header application/xml (optional) 
            var body = body_example;  // string | View configuration in config.xml format (optional) 

            try
            {
                apiInstance.PostCreateView(name, jenkinsCrumb, contentType, body);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling RemoteAccessApi.PostCreateView: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Name of the new view | 
 **jenkinsCrumb** | **string**| CSRF protection token | [optional] 
 **contentType** | **string**| Content type header application/xml | [optional] 
 **body** | **string**| View configuration in config.xml format | [optional] 

### Return type

void (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="postjobbuild"></a>
# **PostJobBuild**
> void PostJobBuild (string name, string json, string token, string jenkinsCrumb)



Build a job

### Example
```csharp
using System;
using System.Diagnostics;
using Org.OpenAPITools.Api;
using Org.OpenAPITools.Client;
using Org.OpenAPITools.Model;

namespace Example
{
    public class PostJobBuildExample
    {
        public void main()
        {
            
            // Configure HTTP basic authorization: jenkins_auth
            Configuration.Default.Username = "YOUR_USERNAME";
            Configuration.Default.Password = "YOUR_PASSWORD";

            var apiInstance = new RemoteAccessApi();
            var name = name_example;  // string | Name of the job
            var json = json_example;  // string | 
            var token = token_example;  // string |  (optional) 
            var jenkinsCrumb = jenkinsCrumb_example;  // string | CSRF protection token (optional) 

            try
            {
                apiInstance.PostJobBuild(name, json, token, jenkinsCrumb);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling RemoteAccessApi.PostJobBuild: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Name of the job | 
 **json** | **string**|  | 
 **token** | **string**|  | [optional] 
 **jenkinsCrumb** | **string**| CSRF protection token | [optional] 

### Return type

void (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="postjobconfig"></a>
# **PostJobConfig**
> void PostJobConfig (string name, string body, string jenkinsCrumb)



Update job configuration

### Example
```csharp
using System;
using System.Diagnostics;
using Org.OpenAPITools.Api;
using Org.OpenAPITools.Client;
using Org.OpenAPITools.Model;

namespace Example
{
    public class PostJobConfigExample
    {
        public void main()
        {
            
            // Configure HTTP basic authorization: jenkins_auth
            Configuration.Default.Username = "YOUR_USERNAME";
            Configuration.Default.Password = "YOUR_PASSWORD";

            var apiInstance = new RemoteAccessApi();
            var name = name_example;  // string | Name of the job
            var body = body_example;  // string | Job configuration in config.xml format
            var jenkinsCrumb = jenkinsCrumb_example;  // string | CSRF protection token (optional) 

            try
            {
                apiInstance.PostJobConfig(name, body, jenkinsCrumb);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling RemoteAccessApi.PostJobConfig: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Name of the job | 
 **body** | **string**| Job configuration in config.xml format | 
 **jenkinsCrumb** | **string**| CSRF protection token | [optional] 

### Return type

void (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="postjobdelete"></a>
# **PostJobDelete**
> void PostJobDelete (string name, string jenkinsCrumb)



Delete a job

### Example
```csharp
using System;
using System.Diagnostics;
using Org.OpenAPITools.Api;
using Org.OpenAPITools.Client;
using Org.OpenAPITools.Model;

namespace Example
{
    public class PostJobDeleteExample
    {
        public void main()
        {
            
            // Configure HTTP basic authorization: jenkins_auth
            Configuration.Default.Username = "YOUR_USERNAME";
            Configuration.Default.Password = "YOUR_PASSWORD";

            var apiInstance = new RemoteAccessApi();
            var name = name_example;  // string | Name of the job
            var jenkinsCrumb = jenkinsCrumb_example;  // string | CSRF protection token (optional) 

            try
            {
                apiInstance.PostJobDelete(name, jenkinsCrumb);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling RemoteAccessApi.PostJobDelete: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Name of the job | 
 **jenkinsCrumb** | **string**| CSRF protection token | [optional] 

### Return type

void (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="postjobdisable"></a>
# **PostJobDisable**
> void PostJobDisable (string name, string jenkinsCrumb)



Disable a job

### Example
```csharp
using System;
using System.Diagnostics;
using Org.OpenAPITools.Api;
using Org.OpenAPITools.Client;
using Org.OpenAPITools.Model;

namespace Example
{
    public class PostJobDisableExample
    {
        public void main()
        {
            
            // Configure HTTP basic authorization: jenkins_auth
            Configuration.Default.Username = "YOUR_USERNAME";
            Configuration.Default.Password = "YOUR_PASSWORD";

            var apiInstance = new RemoteAccessApi();
            var name = name_example;  // string | Name of the job
            var jenkinsCrumb = jenkinsCrumb_example;  // string | CSRF protection token (optional) 

            try
            {
                apiInstance.PostJobDisable(name, jenkinsCrumb);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling RemoteAccessApi.PostJobDisable: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Name of the job | 
 **jenkinsCrumb** | **string**| CSRF protection token | [optional] 

### Return type

void (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="postjobenable"></a>
# **PostJobEnable**
> void PostJobEnable (string name, string jenkinsCrumb)



Enable a job

### Example
```csharp
using System;
using System.Diagnostics;
using Org.OpenAPITools.Api;
using Org.OpenAPITools.Client;
using Org.OpenAPITools.Model;

namespace Example
{
    public class PostJobEnableExample
    {
        public void main()
        {
            
            // Configure HTTP basic authorization: jenkins_auth
            Configuration.Default.Username = "YOUR_USERNAME";
            Configuration.Default.Password = "YOUR_PASSWORD";

            var apiInstance = new RemoteAccessApi();
            var name = name_example;  // string | Name of the job
            var jenkinsCrumb = jenkinsCrumb_example;  // string | CSRF protection token (optional) 

            try
            {
                apiInstance.PostJobEnable(name, jenkinsCrumb);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling RemoteAccessApi.PostJobEnable: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Name of the job | 
 **jenkinsCrumb** | **string**| CSRF protection token | [optional] 

### Return type

void (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="postjoblastbuildstop"></a>
# **PostJobLastBuildStop**
> void PostJobLastBuildStop (string name, string jenkinsCrumb)



Stop a job

### Example
```csharp
using System;
using System.Diagnostics;
using Org.OpenAPITools.Api;
using Org.OpenAPITools.Client;
using Org.OpenAPITools.Model;

namespace Example
{
    public class PostJobLastBuildStopExample
    {
        public void main()
        {
            
            // Configure HTTP basic authorization: jenkins_auth
            Configuration.Default.Username = "YOUR_USERNAME";
            Configuration.Default.Password = "YOUR_PASSWORD";

            var apiInstance = new RemoteAccessApi();
            var name = name_example;  // string | Name of the job
            var jenkinsCrumb = jenkinsCrumb_example;  // string | CSRF protection token (optional) 

            try
            {
                apiInstance.PostJobLastBuildStop(name, jenkinsCrumb);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling RemoteAccessApi.PostJobLastBuildStop: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Name of the job | 
 **jenkinsCrumb** | **string**| CSRF protection token | [optional] 

### Return type

void (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="postviewconfig"></a>
# **PostViewConfig**
> void PostViewConfig (string name, string body, string jenkinsCrumb)



Update view configuration

### Example
```csharp
using System;
using System.Diagnostics;
using Org.OpenAPITools.Api;
using Org.OpenAPITools.Client;
using Org.OpenAPITools.Model;

namespace Example
{
    public class PostViewConfigExample
    {
        public void main()
        {
            
            // Configure HTTP basic authorization: jenkins_auth
            Configuration.Default.Username = "YOUR_USERNAME";
            Configuration.Default.Password = "YOUR_PASSWORD";

            var apiInstance = new RemoteAccessApi();
            var name = name_example;  // string | Name of the view
            var body = body_example;  // string | View configuration in config.xml format
            var jenkinsCrumb = jenkinsCrumb_example;  // string | CSRF protection token (optional) 

            try
            {
                apiInstance.PostViewConfig(name, body, jenkinsCrumb);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling RemoteAccessApi.PostViewConfig: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Name of the view | 
 **body** | **string**| View configuration in config.xml format | 
 **jenkinsCrumb** | **string**| CSRF protection token | [optional] 

### Return type

void (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


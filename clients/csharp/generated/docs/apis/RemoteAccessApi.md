# Org.OpenAPITools.Api.RemoteAccessApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**GetComputer**](RemoteAccessApi.md#getcomputer) | **GET** /computer/api/json |  |
| [**GetJenkins**](RemoteAccessApi.md#getjenkins) | **GET** /api/json |  |
| [**GetJob**](RemoteAccessApi.md#getjob) | **GET** /job/{name}/api/json |  |
| [**GetJobConfig**](RemoteAccessApi.md#getjobconfig) | **GET** /job/{name}/config.xml |  |
| [**GetJobLastBuild**](RemoteAccessApi.md#getjoblastbuild) | **GET** /job/{name}/lastBuild/api/json |  |
| [**GetJobProgressiveText**](RemoteAccessApi.md#getjobprogressivetext) | **GET** /job/{name}/{number}/logText/progressiveText |  |
| [**GetQueue**](RemoteAccessApi.md#getqueue) | **GET** /queue/api/json |  |
| [**GetQueueItem**](RemoteAccessApi.md#getqueueitem) | **GET** /queue/item/{number}/api/json |  |
| [**GetView**](RemoteAccessApi.md#getview) | **GET** /view/{name}/api/json |  |
| [**GetViewConfig**](RemoteAccessApi.md#getviewconfig) | **GET** /view/{name}/config.xml |  |
| [**HeadJenkins**](RemoteAccessApi.md#headjenkins) | **HEAD** /api/json |  |
| [**PostCreateItem**](RemoteAccessApi.md#postcreateitem) | **POST** /createItem |  |
| [**PostCreateView**](RemoteAccessApi.md#postcreateview) | **POST** /createView |  |
| [**PostJobBuild**](RemoteAccessApi.md#postjobbuild) | **POST** /job/{name}/build |  |
| [**PostJobConfig**](RemoteAccessApi.md#postjobconfig) | **POST** /job/{name}/config.xml |  |
| [**PostJobDelete**](RemoteAccessApi.md#postjobdelete) | **POST** /job/{name}/doDelete |  |
| [**PostJobDisable**](RemoteAccessApi.md#postjobdisable) | **POST** /job/{name}/disable |  |
| [**PostJobEnable**](RemoteAccessApi.md#postjobenable) | **POST** /job/{name}/enable |  |
| [**PostJobLastBuildStop**](RemoteAccessApi.md#postjoblastbuildstop) | **POST** /job/{name}/lastBuild/stop |  |
| [**PostViewConfig**](RemoteAccessApi.md#postviewconfig) | **POST** /view/{name}/config.xml |  |

<a id="getcomputer"></a>
# **GetComputer**
> ComputerSet GetComputer (int depth)



Retrieve computer details

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Org.OpenAPITools.Api;
using Org.OpenAPITools.Client;
using Org.OpenAPITools.Model;

namespace Example
{
    public class GetComputerExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "http://localhost";
            // Configure HTTP basic authorization: jenkins_auth
            config.Username = "YOUR_USERNAME";
            config.Password = "YOUR_PASSWORD";

            var apiInstance = new RemoteAccessApi(config);
            var depth = 56;  // int | Recursion depth in response model

            try
            {
                ComputerSet result = apiInstance.GetComputer(depth);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling RemoteAccessApi.GetComputer: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GetComputerWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    ApiResponse<ComputerSet> response = apiInstance.GetComputerWithHttpInfo(depth);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling RemoteAccessApi.GetComputerWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **depth** | **int** | Recursion depth in response model |  |

### Return type

[**ComputerSet**](ComputerSet.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved computer details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="getjenkins"></a>
# **GetJenkins**
> Hudson GetJenkins ()



Retrieve Jenkins details

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Org.OpenAPITools.Api;
using Org.OpenAPITools.Client;
using Org.OpenAPITools.Model;

namespace Example
{
    public class GetJenkinsExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "http://localhost";
            // Configure HTTP basic authorization: jenkins_auth
            config.Username = "YOUR_USERNAME";
            config.Password = "YOUR_PASSWORD";

            var apiInstance = new RemoteAccessApi(config);

            try
            {
                Hudson result = apiInstance.GetJenkins();
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling RemoteAccessApi.GetJenkins: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GetJenkinsWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    ApiResponse<Hudson> response = apiInstance.GetJenkinsWithHttpInfo();
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling RemoteAccessApi.GetJenkinsWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
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


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved Jenkins details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="getjob"></a>
# **GetJob**
> FreeStyleProject GetJob (string name)



Retrieve job details

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Org.OpenAPITools.Api;
using Org.OpenAPITools.Client;
using Org.OpenAPITools.Model;

namespace Example
{
    public class GetJobExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "http://localhost";
            // Configure HTTP basic authorization: jenkins_auth
            config.Username = "YOUR_USERNAME";
            config.Password = "YOUR_PASSWORD";

            var apiInstance = new RemoteAccessApi(config);
            var name = "name_example";  // string | Name of the job

            try
            {
                FreeStyleProject result = apiInstance.GetJob(name);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling RemoteAccessApi.GetJob: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GetJobWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    ApiResponse<FreeStyleProject> response = apiInstance.GetJobWithHttpInfo(name);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling RemoteAccessApi.GetJobWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **name** | **string** | Name of the job |  |

### Return type

[**FreeStyleProject**](FreeStyleProject.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved job details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |
| **404** | Job cannot be found on Jenkins instance |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="getjobconfig"></a>
# **GetJobConfig**
> string GetJobConfig (string name)



Retrieve job configuration

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Org.OpenAPITools.Api;
using Org.OpenAPITools.Client;
using Org.OpenAPITools.Model;

namespace Example
{
    public class GetJobConfigExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "http://localhost";
            // Configure HTTP basic authorization: jenkins_auth
            config.Username = "YOUR_USERNAME";
            config.Password = "YOUR_PASSWORD";

            var apiInstance = new RemoteAccessApi(config);
            var name = "name_example";  // string | Name of the job

            try
            {
                string result = apiInstance.GetJobConfig(name);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling RemoteAccessApi.GetJobConfig: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GetJobConfigWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    ApiResponse<string> response = apiInstance.GetJobConfigWithHttpInfo(name);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling RemoteAccessApi.GetJobConfigWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **name** | **string** | Name of the job |  |

### Return type

**string**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/xml


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved job configuration in config.xml format |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |
| **404** | Job cannot be found on Jenkins instance |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="getjoblastbuild"></a>
# **GetJobLastBuild**
> FreeStyleBuild GetJobLastBuild (string name)



Retrieve job's last build details

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Org.OpenAPITools.Api;
using Org.OpenAPITools.Client;
using Org.OpenAPITools.Model;

namespace Example
{
    public class GetJobLastBuildExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "http://localhost";
            // Configure HTTP basic authorization: jenkins_auth
            config.Username = "YOUR_USERNAME";
            config.Password = "YOUR_PASSWORD";

            var apiInstance = new RemoteAccessApi(config);
            var name = "name_example";  // string | Name of the job

            try
            {
                FreeStyleBuild result = apiInstance.GetJobLastBuild(name);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling RemoteAccessApi.GetJobLastBuild: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GetJobLastBuildWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    ApiResponse<FreeStyleBuild> response = apiInstance.GetJobLastBuildWithHttpInfo(name);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling RemoteAccessApi.GetJobLastBuildWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **name** | **string** | Name of the job |  |

### Return type

[**FreeStyleBuild**](FreeStyleBuild.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved job&#39;s last build details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |
| **404** | Job cannot be found on Jenkins instance |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="getjobprogressivetext"></a>
# **GetJobProgressiveText**
> void GetJobProgressiveText (string name, string number, string start)



Retrieve job's build progressive text output

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Org.OpenAPITools.Api;
using Org.OpenAPITools.Client;
using Org.OpenAPITools.Model;

namespace Example
{
    public class GetJobProgressiveTextExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "http://localhost";
            // Configure HTTP basic authorization: jenkins_auth
            config.Username = "YOUR_USERNAME";
            config.Password = "YOUR_PASSWORD";

            var apiInstance = new RemoteAccessApi(config);
            var name = "name_example";  // string | Name of the job
            var number = "number_example";  // string | Build number
            var start = "start_example";  // string | Starting point of progressive text output

            try
            {
                apiInstance.GetJobProgressiveText(name, number, start);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling RemoteAccessApi.GetJobProgressiveText: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GetJobProgressiveTextWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    apiInstance.GetJobProgressiveTextWithHttpInfo(name, number, start);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling RemoteAccessApi.GetJobProgressiveTextWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **name** | **string** | Name of the job |  |
| **number** | **string** | Build number |  |
| **start** | **string** | Starting point of progressive text output |  |

### Return type

void (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved job&#39;s build progressive text output |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |
| **404** | Job cannot be found on Jenkins instance |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="getqueue"></a>
# **GetQueue**
> Queue GetQueue ()



Retrieve queue details

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Org.OpenAPITools.Api;
using Org.OpenAPITools.Client;
using Org.OpenAPITools.Model;

namespace Example
{
    public class GetQueueExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "http://localhost";
            // Configure HTTP basic authorization: jenkins_auth
            config.Username = "YOUR_USERNAME";
            config.Password = "YOUR_PASSWORD";

            var apiInstance = new RemoteAccessApi(config);

            try
            {
                Queue result = apiInstance.GetQueue();
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling RemoteAccessApi.GetQueue: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GetQueueWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    ApiResponse<Queue> response = apiInstance.GetQueueWithHttpInfo();
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling RemoteAccessApi.GetQueueWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
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


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved queue details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="getqueueitem"></a>
# **GetQueueItem**
> Queue GetQueueItem (string number)



Retrieve queued item details

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Org.OpenAPITools.Api;
using Org.OpenAPITools.Client;
using Org.OpenAPITools.Model;

namespace Example
{
    public class GetQueueItemExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "http://localhost";
            // Configure HTTP basic authorization: jenkins_auth
            config.Username = "YOUR_USERNAME";
            config.Password = "YOUR_PASSWORD";

            var apiInstance = new RemoteAccessApi(config);
            var number = "number_example";  // string | Queue number

            try
            {
                Queue result = apiInstance.GetQueueItem(number);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling RemoteAccessApi.GetQueueItem: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GetQueueItemWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    ApiResponse<Queue> response = apiInstance.GetQueueItemWithHttpInfo(number);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling RemoteAccessApi.GetQueueItemWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **number** | **string** | Queue number |  |

### Return type

[**Queue**](Queue.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved queued item details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="getview"></a>
# **GetView**
> ListView GetView (string name)



Retrieve view details

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Org.OpenAPITools.Api;
using Org.OpenAPITools.Client;
using Org.OpenAPITools.Model;

namespace Example
{
    public class GetViewExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "http://localhost";
            // Configure HTTP basic authorization: jenkins_auth
            config.Username = "YOUR_USERNAME";
            config.Password = "YOUR_PASSWORD";

            var apiInstance = new RemoteAccessApi(config);
            var name = "name_example";  // string | Name of the view

            try
            {
                ListView result = apiInstance.GetView(name);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling RemoteAccessApi.GetView: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GetViewWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    ApiResponse<ListView> response = apiInstance.GetViewWithHttpInfo(name);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling RemoteAccessApi.GetViewWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **name** | **string** | Name of the view |  |

### Return type

[**ListView**](ListView.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved view details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |
| **404** | View cannot be found on Jenkins instance |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="getviewconfig"></a>
# **GetViewConfig**
> string GetViewConfig (string name)



Retrieve view configuration

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Org.OpenAPITools.Api;
using Org.OpenAPITools.Client;
using Org.OpenAPITools.Model;

namespace Example
{
    public class GetViewConfigExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "http://localhost";
            // Configure HTTP basic authorization: jenkins_auth
            config.Username = "YOUR_USERNAME";
            config.Password = "YOUR_PASSWORD";

            var apiInstance = new RemoteAccessApi(config);
            var name = "name_example";  // string | Name of the view

            try
            {
                string result = apiInstance.GetViewConfig(name);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling RemoteAccessApi.GetViewConfig: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GetViewConfigWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    ApiResponse<string> response = apiInstance.GetViewConfigWithHttpInfo(name);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling RemoteAccessApi.GetViewConfigWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **name** | **string** | Name of the view |  |

### Return type

**string**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/xml


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved view configuration in config.xml format |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |
| **404** | View cannot be found on Jenkins instance |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="headjenkins"></a>
# **HeadJenkins**
> void HeadJenkins ()



Retrieve Jenkins headers

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Org.OpenAPITools.Api;
using Org.OpenAPITools.Client;
using Org.OpenAPITools.Model;

namespace Example
{
    public class HeadJenkinsExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "http://localhost";
            // Configure HTTP basic authorization: jenkins_auth
            config.Username = "YOUR_USERNAME";
            config.Password = "YOUR_PASSWORD";

            var apiInstance = new RemoteAccessApi(config);

            try
            {
                apiInstance.HeadJenkins();
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling RemoteAccessApi.HeadJenkins: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the HeadJenkinsWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    apiInstance.HeadJenkinsWithHttpInfo();
}
catch (ApiException e)
{
    Debug.Print("Exception when calling RemoteAccessApi.HeadJenkinsWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
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


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved Jenkins headers |  * x-jenkins - Jenkins version number <br>  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="postcreateitem"></a>
# **PostCreateItem**
> void PostCreateItem (string name, string from = null, string mode = null, string jenkinsCrumb = null, string contentType = null, string body = null)



Create a new job using job configuration, or copied from an existing job

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Org.OpenAPITools.Api;
using Org.OpenAPITools.Client;
using Org.OpenAPITools.Model;

namespace Example
{
    public class PostCreateItemExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "http://localhost";
            // Configure HTTP basic authorization: jenkins_auth
            config.Username = "YOUR_USERNAME";
            config.Password = "YOUR_PASSWORD";

            var apiInstance = new RemoteAccessApi(config);
            var name = "name_example";  // string | Name of the new job
            var from = "from_example";  // string | Existing job to copy from (optional) 
            var mode = "mode_example";  // string | Set to 'copy' for copying an existing job (optional) 
            var jenkinsCrumb = "jenkinsCrumb_example";  // string | CSRF protection token (optional) 
            var contentType = "contentType_example";  // string | Content type header application/xml (optional) 
            var body = "body_example";  // string | Job configuration in config.xml format (optional) 

            try
            {
                apiInstance.PostCreateItem(name, from, mode, jenkinsCrumb, contentType, body);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling RemoteAccessApi.PostCreateItem: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the PostCreateItemWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    apiInstance.PostCreateItemWithHttpInfo(name, from, mode, jenkinsCrumb, contentType, body);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling RemoteAccessApi.PostCreateItemWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **name** | **string** | Name of the new job |  |
| **from** | **string** | Existing job to copy from | [optional]  |
| **mode** | **string** | Set to &#39;copy&#39; for copying an existing job | [optional]  |
| **jenkinsCrumb** | **string** | CSRF protection token | [optional]  |
| **contentType** | **string** | Content type header application/xml | [optional]  |
| **body** | **string** | Job configuration in config.xml format | [optional]  |

### Return type

void (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully created a new job |  -  |
| **400** | An error has occurred - error message is embedded inside the HTML response |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="postcreateview"></a>
# **PostCreateView**
> void PostCreateView (string name, string jenkinsCrumb = null, string contentType = null, string body = null)



Create a new view using view configuration

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Org.OpenAPITools.Api;
using Org.OpenAPITools.Client;
using Org.OpenAPITools.Model;

namespace Example
{
    public class PostCreateViewExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "http://localhost";
            // Configure HTTP basic authorization: jenkins_auth
            config.Username = "YOUR_USERNAME";
            config.Password = "YOUR_PASSWORD";

            var apiInstance = new RemoteAccessApi(config);
            var name = "name_example";  // string | Name of the new view
            var jenkinsCrumb = "jenkinsCrumb_example";  // string | CSRF protection token (optional) 
            var contentType = "contentType_example";  // string | Content type header application/xml (optional) 
            var body = "body_example";  // string | View configuration in config.xml format (optional) 

            try
            {
                apiInstance.PostCreateView(name, jenkinsCrumb, contentType, body);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling RemoteAccessApi.PostCreateView: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the PostCreateViewWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    apiInstance.PostCreateViewWithHttpInfo(name, jenkinsCrumb, contentType, body);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling RemoteAccessApi.PostCreateViewWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **name** | **string** | Name of the new view |  |
| **jenkinsCrumb** | **string** | CSRF protection token | [optional]  |
| **contentType** | **string** | Content type header application/xml | [optional]  |
| **body** | **string** | View configuration in config.xml format | [optional]  |

### Return type

void (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully created the view |  -  |
| **400** | An error has occurred - error message is embedded inside the HTML response |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="postjobbuild"></a>
# **PostJobBuild**
> void PostJobBuild (string name, string json, string token = null, string jenkinsCrumb = null)



Build a job

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Org.OpenAPITools.Api;
using Org.OpenAPITools.Client;
using Org.OpenAPITools.Model;

namespace Example
{
    public class PostJobBuildExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "http://localhost";
            // Configure HTTP basic authorization: jenkins_auth
            config.Username = "YOUR_USERNAME";
            config.Password = "YOUR_PASSWORD";

            var apiInstance = new RemoteAccessApi(config);
            var name = "name_example";  // string | Name of the job
            var json = "json_example";  // string | 
            var token = "token_example";  // string |  (optional) 
            var jenkinsCrumb = "jenkinsCrumb_example";  // string | CSRF protection token (optional) 

            try
            {
                apiInstance.PostJobBuild(name, json, token, jenkinsCrumb);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling RemoteAccessApi.PostJobBuild: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the PostJobBuildWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    apiInstance.PostJobBuildWithHttpInfo(name, json, token, jenkinsCrumb);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling RemoteAccessApi.PostJobBuildWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **name** | **string** | Name of the job |  |
| **json** | **string** |  |  |
| **token** | **string** |  | [optional]  |
| **jenkinsCrumb** | **string** | CSRF protection token | [optional]  |

### Return type

void (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully built the job (backward compatibility for older versions of Jenkins) |  -  |
| **201** | Successfully built the job |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |
| **404** | Job cannot be found on Jenkins instance |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="postjobconfig"></a>
# **PostJobConfig**
> void PostJobConfig (string name, string body, string jenkinsCrumb = null)



Update job configuration

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Org.OpenAPITools.Api;
using Org.OpenAPITools.Client;
using Org.OpenAPITools.Model;

namespace Example
{
    public class PostJobConfigExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "http://localhost";
            // Configure HTTP basic authorization: jenkins_auth
            config.Username = "YOUR_USERNAME";
            config.Password = "YOUR_PASSWORD";

            var apiInstance = new RemoteAccessApi(config);
            var name = "name_example";  // string | Name of the job
            var body = "body_example";  // string | Job configuration in config.xml format
            var jenkinsCrumb = "jenkinsCrumb_example";  // string | CSRF protection token (optional) 

            try
            {
                apiInstance.PostJobConfig(name, body, jenkinsCrumb);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling RemoteAccessApi.PostJobConfig: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the PostJobConfigWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    apiInstance.PostJobConfigWithHttpInfo(name, body, jenkinsCrumb);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling RemoteAccessApi.PostJobConfigWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **name** | **string** | Name of the job |  |
| **body** | **string** | Job configuration in config.xml format |  |
| **jenkinsCrumb** | **string** | CSRF protection token | [optional]  |

### Return type

void (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved job configuration in config.xml format |  -  |
| **400** | An error has occurred - error message is embedded inside the HTML response |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |
| **404** | Job cannot be found on Jenkins instance |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="postjobdelete"></a>
# **PostJobDelete**
> void PostJobDelete (string name, string jenkinsCrumb = null)



Delete a job

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Org.OpenAPITools.Api;
using Org.OpenAPITools.Client;
using Org.OpenAPITools.Model;

namespace Example
{
    public class PostJobDeleteExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "http://localhost";
            // Configure HTTP basic authorization: jenkins_auth
            config.Username = "YOUR_USERNAME";
            config.Password = "YOUR_PASSWORD";

            var apiInstance = new RemoteAccessApi(config);
            var name = "name_example";  // string | Name of the job
            var jenkinsCrumb = "jenkinsCrumb_example";  // string | CSRF protection token (optional) 

            try
            {
                apiInstance.PostJobDelete(name, jenkinsCrumb);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling RemoteAccessApi.PostJobDelete: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the PostJobDeleteWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    apiInstance.PostJobDeleteWithHttpInfo(name, jenkinsCrumb);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling RemoteAccessApi.PostJobDeleteWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **name** | **string** | Name of the job |  |
| **jenkinsCrumb** | **string** | CSRF protection token | [optional]  |

### Return type

void (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully deleted the job |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |
| **404** | Job cannot be found on Jenkins instance |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="postjobdisable"></a>
# **PostJobDisable**
> void PostJobDisable (string name, string jenkinsCrumb = null)



Disable a job

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Org.OpenAPITools.Api;
using Org.OpenAPITools.Client;
using Org.OpenAPITools.Model;

namespace Example
{
    public class PostJobDisableExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "http://localhost";
            // Configure HTTP basic authorization: jenkins_auth
            config.Username = "YOUR_USERNAME";
            config.Password = "YOUR_PASSWORD";

            var apiInstance = new RemoteAccessApi(config);
            var name = "name_example";  // string | Name of the job
            var jenkinsCrumb = "jenkinsCrumb_example";  // string | CSRF protection token (optional) 

            try
            {
                apiInstance.PostJobDisable(name, jenkinsCrumb);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling RemoteAccessApi.PostJobDisable: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the PostJobDisableWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    apiInstance.PostJobDisableWithHttpInfo(name, jenkinsCrumb);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling RemoteAccessApi.PostJobDisableWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **name** | **string** | Name of the job |  |
| **jenkinsCrumb** | **string** | CSRF protection token | [optional]  |

### Return type

void (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully disabled the job |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |
| **404** | Job cannot be found on Jenkins instance |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="postjobenable"></a>
# **PostJobEnable**
> void PostJobEnable (string name, string jenkinsCrumb = null)



Enable a job

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Org.OpenAPITools.Api;
using Org.OpenAPITools.Client;
using Org.OpenAPITools.Model;

namespace Example
{
    public class PostJobEnableExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "http://localhost";
            // Configure HTTP basic authorization: jenkins_auth
            config.Username = "YOUR_USERNAME";
            config.Password = "YOUR_PASSWORD";

            var apiInstance = new RemoteAccessApi(config);
            var name = "name_example";  // string | Name of the job
            var jenkinsCrumb = "jenkinsCrumb_example";  // string | CSRF protection token (optional) 

            try
            {
                apiInstance.PostJobEnable(name, jenkinsCrumb);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling RemoteAccessApi.PostJobEnable: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the PostJobEnableWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    apiInstance.PostJobEnableWithHttpInfo(name, jenkinsCrumb);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling RemoteAccessApi.PostJobEnableWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **name** | **string** | Name of the job |  |
| **jenkinsCrumb** | **string** | CSRF protection token | [optional]  |

### Return type

void (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully enabled the job |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |
| **404** | Job cannot be found on Jenkins instance |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="postjoblastbuildstop"></a>
# **PostJobLastBuildStop**
> void PostJobLastBuildStop (string name, string jenkinsCrumb = null)



Stop a job

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Org.OpenAPITools.Api;
using Org.OpenAPITools.Client;
using Org.OpenAPITools.Model;

namespace Example
{
    public class PostJobLastBuildStopExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "http://localhost";
            // Configure HTTP basic authorization: jenkins_auth
            config.Username = "YOUR_USERNAME";
            config.Password = "YOUR_PASSWORD";

            var apiInstance = new RemoteAccessApi(config);
            var name = "name_example";  // string | Name of the job
            var jenkinsCrumb = "jenkinsCrumb_example";  // string | CSRF protection token (optional) 

            try
            {
                apiInstance.PostJobLastBuildStop(name, jenkinsCrumb);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling RemoteAccessApi.PostJobLastBuildStop: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the PostJobLastBuildStopWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    apiInstance.PostJobLastBuildStopWithHttpInfo(name, jenkinsCrumb);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling RemoteAccessApi.PostJobLastBuildStopWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **name** | **string** | Name of the job |  |
| **jenkinsCrumb** | **string** | CSRF protection token | [optional]  |

### Return type

void (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully stopped the job |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |
| **404** | Job cannot be found on Jenkins instance |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="postviewconfig"></a>
# **PostViewConfig**
> void PostViewConfig (string name, string body, string jenkinsCrumb = null)



Update view configuration

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Org.OpenAPITools.Api;
using Org.OpenAPITools.Client;
using Org.OpenAPITools.Model;

namespace Example
{
    public class PostViewConfigExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "http://localhost";
            // Configure HTTP basic authorization: jenkins_auth
            config.Username = "YOUR_USERNAME";
            config.Password = "YOUR_PASSWORD";

            var apiInstance = new RemoteAccessApi(config);
            var name = "name_example";  // string | Name of the view
            var body = "body_example";  // string | View configuration in config.xml format
            var jenkinsCrumb = "jenkinsCrumb_example";  // string | CSRF protection token (optional) 

            try
            {
                apiInstance.PostViewConfig(name, body, jenkinsCrumb);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling RemoteAccessApi.PostViewConfig: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the PostViewConfigWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    apiInstance.PostViewConfigWithHttpInfo(name, body, jenkinsCrumb);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling RemoteAccessApi.PostViewConfigWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **name** | **string** | Name of the view |  |
| **body** | **string** | View configuration in config.xml format |  |
| **jenkinsCrumb** | **string** | CSRF protection token | [optional]  |

### Return type

void (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully updated view configuration |  -  |
| **400** | An error has occurred - error message is embedded inside the HTML response |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |
| **404** | View cannot be found on Jenkins instance |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)


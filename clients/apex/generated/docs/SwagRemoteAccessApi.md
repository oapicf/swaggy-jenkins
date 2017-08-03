# SwagRemoteAccessApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getComputer**](SwagRemoteAccessApi.md#getComputer) | **GET** /computer/api/json | 
[**getCrumb**](SwagRemoteAccessApi.md#getCrumb) | **GET** /crumbIssuer/api/json | 
[**getJenkins**](SwagRemoteAccessApi.md#getJenkins) | **GET** /api/json | 
[**getJob**](SwagRemoteAccessApi.md#getJob) | **GET** /job/{name}/api/json | 
[**getJobConfig**](SwagRemoteAccessApi.md#getJobConfig) | **GET** /job/{name}/config.xml | 
[**getJobLastBuild**](SwagRemoteAccessApi.md#getJobLastBuild) | **GET** /job/{name}/lastBuild/api/json | 
[**getJobProgressiveText**](SwagRemoteAccessApi.md#getJobProgressiveText) | **GET** /job/{name}/{number}/logText/progressiveText | 
[**getQueue**](SwagRemoteAccessApi.md#getQueue) | **GET** /queue/api/json | 
[**getQueueItem**](SwagRemoteAccessApi.md#getQueueItem) | **GET** /queue/item/{number}/api/json | 
[**getView**](SwagRemoteAccessApi.md#getView) | **GET** /view/{name}/api/json | 
[**getViewConfig**](SwagRemoteAccessApi.md#getViewConfig) | **GET** /view/{name}/config.xml | 
[**headJenkins**](SwagRemoteAccessApi.md#headJenkins) | **HEAD** /api/json | 
[**postCreateItem**](SwagRemoteAccessApi.md#postCreateItem) | **POST** /createItem | 
[**postCreateView**](SwagRemoteAccessApi.md#postCreateView) | **POST** /createView | 
[**postJobBuild**](SwagRemoteAccessApi.md#postJobBuild) | **POST** /job/{name}/build | 
[**postJobConfig**](SwagRemoteAccessApi.md#postJobConfig) | **POST** /job/{name}/config.xml | 
[**postJobDelete**](SwagRemoteAccessApi.md#postJobDelete) | **POST** /job/{name}/doDelete | 
[**postJobDisable**](SwagRemoteAccessApi.md#postJobDisable) | **POST** /job/{name}/disable | 
[**postJobEnable**](SwagRemoteAccessApi.md#postJobEnable) | **POST** /job/{name}/enable | 
[**postJobLastBuildStop**](SwagRemoteAccessApi.md#postJobLastBuildStop) | **POST** /job/{name}/lastBuild/stop | 
[**postViewConfig**](SwagRemoteAccessApi.md#postViewConfig) | **POST** /view/{name}/config.xml | 


<a name="getComputer"></a>
# **getComputer**
> SwagComputerSet getComputer(depth)



Retrieve computer details

### Example
```java
SwagRemoteAccessApi api = new SwagRemoteAccessApi();
SwagClient client = api.getClient();

// Configure HTTP basic authorization: jenkins_auth
HttpBasicAuth jenkins_auth = (HttpBasicAuth) client.getAuthentication('jenkins_auth');
jenkins_auth.setUsername('YOUR USERNAME');
jenkins_auth.setPassword('YOUR PASSWORD');

// You can also set your username and password in one line
jenkins_auth.setCredentials('YOUR USERNAME', 'YOUR PASSWORD');

Map<String, Object> params = new Map<String, Object>{
    'depth' => 56
};

try {
    // cross your fingers
    SwagComputerSet result = api.getComputer(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **depth** | **Integer**| Recursion depth in response model |

### Return type

[**SwagComputerSet**](SwagComputerSet.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getCrumb"></a>
# **getCrumb**
> SwagDefaultCrumbIssuer getCrumb()



Retrieve CSRF protection token

### Example
```java
SwagRemoteAccessApi api = new SwagRemoteAccessApi();
SwagClient client = api.getClient();

// Configure HTTP basic authorization: jenkins_auth
HttpBasicAuth jenkins_auth = (HttpBasicAuth) client.getAuthentication('jenkins_auth');
jenkins_auth.setUsername('YOUR USERNAME');
jenkins_auth.setPassword('YOUR PASSWORD');

// You can also set your username and password in one line
jenkins_auth.setCredentials('YOUR USERNAME', 'YOUR PASSWORD');

try {
    // cross your fingers
    SwagDefaultCrumbIssuer result = api.getCrumb();
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SwagDefaultCrumbIssuer**](SwagDefaultCrumbIssuer.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getJenkins"></a>
# **getJenkins**
> SwagHudson getJenkins()



Retrieve Jenkins details

### Example
```java
SwagRemoteAccessApi api = new SwagRemoteAccessApi();
SwagClient client = api.getClient();

// Configure HTTP basic authorization: jenkins_auth
HttpBasicAuth jenkins_auth = (HttpBasicAuth) client.getAuthentication('jenkins_auth');
jenkins_auth.setUsername('YOUR USERNAME');
jenkins_auth.setPassword('YOUR PASSWORD');

// You can also set your username and password in one line
jenkins_auth.setCredentials('YOUR USERNAME', 'YOUR PASSWORD');

try {
    // cross your fingers
    SwagHudson result = api.getJenkins();
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SwagHudson**](SwagHudson.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getJob"></a>
# **getJob**
> SwagFreeStyleProject getJob(name)



Retrieve job details

### Example
```java
SwagRemoteAccessApi api = new SwagRemoteAccessApi();
SwagClient client = api.getClient();

// Configure HTTP basic authorization: jenkins_auth
HttpBasicAuth jenkins_auth = (HttpBasicAuth) client.getAuthentication('jenkins_auth');
jenkins_auth.setUsername('YOUR USERNAME');
jenkins_auth.setPassword('YOUR PASSWORD');

// You can also set your username and password in one line
jenkins_auth.setCredentials('YOUR USERNAME', 'YOUR PASSWORD');

Map<String, Object> params = new Map<String, Object>{
    'name' => 'name_example'
};

try {
    // cross your fingers
    SwagFreeStyleProject result = api.getJob(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the job |

### Return type

[**SwagFreeStyleProject**](SwagFreeStyleProject.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getJobConfig"></a>
# **getJobConfig**
> String getJobConfig(name)



Retrieve job configuration

### Example
```java
SwagRemoteAccessApi api = new SwagRemoteAccessApi();
SwagClient client = api.getClient();

// Configure HTTP basic authorization: jenkins_auth
HttpBasicAuth jenkins_auth = (HttpBasicAuth) client.getAuthentication('jenkins_auth');
jenkins_auth.setUsername('YOUR USERNAME');
jenkins_auth.setPassword('YOUR PASSWORD');

// You can also set your username and password in one line
jenkins_auth.setCredentials('YOUR USERNAME', 'YOUR PASSWORD');

Map<String, Object> params = new Map<String, Object>{
    'name' => 'name_example'
};

try {
    // cross your fingers
    String result = api.getJobConfig(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the job |

### Return type

**String**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getJobLastBuild"></a>
# **getJobLastBuild**
> SwagFreeStyleBuild getJobLastBuild(name)



Retrieve job\&#39;s last build details

### Example
```java
SwagRemoteAccessApi api = new SwagRemoteAccessApi();
SwagClient client = api.getClient();

// Configure HTTP basic authorization: jenkins_auth
HttpBasicAuth jenkins_auth = (HttpBasicAuth) client.getAuthentication('jenkins_auth');
jenkins_auth.setUsername('YOUR USERNAME');
jenkins_auth.setPassword('YOUR PASSWORD');

// You can also set your username and password in one line
jenkins_auth.setCredentials('YOUR USERNAME', 'YOUR PASSWORD');

Map<String, Object> params = new Map<String, Object>{
    'name' => 'name_example'
};

try {
    // cross your fingers
    SwagFreeStyleBuild result = api.getJobLastBuild(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the job |

### Return type

[**SwagFreeStyleBuild**](SwagFreeStyleBuild.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getJobProgressiveText"></a>
# **getJobProgressiveText**
> getJobProgressiveText(name, r_number, start)



Retrieve job\&#39;s build progressive text output

### Example
```java
SwagRemoteAccessApi api = new SwagRemoteAccessApi();
SwagClient client = api.getClient();

// Configure HTTP basic authorization: jenkins_auth
HttpBasicAuth jenkins_auth = (HttpBasicAuth) client.getAuthentication('jenkins_auth');
jenkins_auth.setUsername('YOUR USERNAME');
jenkins_auth.setPassword('YOUR PASSWORD');

// You can also set your username and password in one line
jenkins_auth.setCredentials('YOUR USERNAME', 'YOUR PASSWORD');

Map<String, Object> params = new Map<String, Object>{
    'name' => 'name_example',
    'r_number' => 'r_number_example',
    'start' => 'start_example'
};

try {
    // cross your fingers
    api.getJobProgressiveText(params);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the job |
 **r_number** | **String**| Build number |
 **start** | **String**| Starting point of progressive text output |

### Return type

null (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getQueue"></a>
# **getQueue**
> SwagQueue getQueue()



Retrieve queue details

### Example
```java
SwagRemoteAccessApi api = new SwagRemoteAccessApi();
SwagClient client = api.getClient();

// Configure HTTP basic authorization: jenkins_auth
HttpBasicAuth jenkins_auth = (HttpBasicAuth) client.getAuthentication('jenkins_auth');
jenkins_auth.setUsername('YOUR USERNAME');
jenkins_auth.setPassword('YOUR PASSWORD');

// You can also set your username and password in one line
jenkins_auth.setCredentials('YOUR USERNAME', 'YOUR PASSWORD');

try {
    // cross your fingers
    SwagQueue result = api.getQueue();
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SwagQueue**](SwagQueue.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getQueueItem"></a>
# **getQueueItem**
> SwagQueue getQueueItem(r_number)



Retrieve queued item details

### Example
```java
SwagRemoteAccessApi api = new SwagRemoteAccessApi();
SwagClient client = api.getClient();

// Configure HTTP basic authorization: jenkins_auth
HttpBasicAuth jenkins_auth = (HttpBasicAuth) client.getAuthentication('jenkins_auth');
jenkins_auth.setUsername('YOUR USERNAME');
jenkins_auth.setPassword('YOUR PASSWORD');

// You can also set your username and password in one line
jenkins_auth.setCredentials('YOUR USERNAME', 'YOUR PASSWORD');

Map<String, Object> params = new Map<String, Object>{
    'r_number' => 'r_number_example'
};

try {
    // cross your fingers
    SwagQueue result = api.getQueueItem(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **r_number** | **String**| Queue number |

### Return type

[**SwagQueue**](SwagQueue.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getView"></a>
# **getView**
> SwagListView getView(name)



Retrieve view details

### Example
```java
SwagRemoteAccessApi api = new SwagRemoteAccessApi();
SwagClient client = api.getClient();

// Configure HTTP basic authorization: jenkins_auth
HttpBasicAuth jenkins_auth = (HttpBasicAuth) client.getAuthentication('jenkins_auth');
jenkins_auth.setUsername('YOUR USERNAME');
jenkins_auth.setPassword('YOUR PASSWORD');

// You can also set your username and password in one line
jenkins_auth.setCredentials('YOUR USERNAME', 'YOUR PASSWORD');

Map<String, Object> params = new Map<String, Object>{
    'name' => 'name_example'
};

try {
    // cross your fingers
    SwagListView result = api.getView(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the view |

### Return type

[**SwagListView**](SwagListView.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getViewConfig"></a>
# **getViewConfig**
> String getViewConfig(name)



Retrieve view configuration

### Example
```java
SwagRemoteAccessApi api = new SwagRemoteAccessApi();
SwagClient client = api.getClient();

// Configure HTTP basic authorization: jenkins_auth
HttpBasicAuth jenkins_auth = (HttpBasicAuth) client.getAuthentication('jenkins_auth');
jenkins_auth.setUsername('YOUR USERNAME');
jenkins_auth.setPassword('YOUR PASSWORD');

// You can also set your username and password in one line
jenkins_auth.setCredentials('YOUR USERNAME', 'YOUR PASSWORD');

Map<String, Object> params = new Map<String, Object>{
    'name' => 'name_example'
};

try {
    // cross your fingers
    String result = api.getViewConfig(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the view |

### Return type

**String**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="headJenkins"></a>
# **headJenkins**
> headJenkins()



Retrieve Jenkins headers

### Example
```java
SwagRemoteAccessApi api = new SwagRemoteAccessApi();
SwagClient client = api.getClient();

// Configure HTTP basic authorization: jenkins_auth
HttpBasicAuth jenkins_auth = (HttpBasicAuth) client.getAuthentication('jenkins_auth');
jenkins_auth.setUsername('YOUR USERNAME');
jenkins_auth.setPassword('YOUR PASSWORD');

// You can also set your username and password in one line
jenkins_auth.setCredentials('YOUR USERNAME', 'YOUR PASSWORD');

try {
    // cross your fingers
    api.headJenkins();
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

null (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="postCreateItem"></a>
# **postCreateItem**
> postCreateItem(name, r_from, mode, body, jenkinsCrumb, contentType)



Create a new job using job configuration, or copied from an existing job

### Example
```java
SwagRemoteAccessApi api = new SwagRemoteAccessApi();
SwagClient client = api.getClient();

// Configure HTTP basic authorization: jenkins_auth
HttpBasicAuth jenkins_auth = (HttpBasicAuth) client.getAuthentication('jenkins_auth');
jenkins_auth.setUsername('YOUR USERNAME');
jenkins_auth.setPassword('YOUR PASSWORD');

// You can also set your username and password in one line
jenkins_auth.setCredentials('YOUR USERNAME', 'YOUR PASSWORD');

Map<String, Object> params = new Map<String, Object>{
    'name' => 'name_example',
    'r_from' => 'r_from_example',
    'mode' => 'mode_example',
    'body' => 'body_example',
    'jenkinsCrumb' => 'jenkinsCrumb_example',
    'contentType' => 'contentType_example'
};

try {
    // cross your fingers
    api.postCreateItem(params);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the new job |
 **r_from** | **String**| Existing job to copy from | [optional]
 **mode** | **String**| Set to \&#39;copy\&#39; for copying an existing job | [optional]
 **body** | **String**| Job configuration in config.xml format | [optional]
 **jenkinsCrumb** | **String**| CSRF protection token | [optional]
 **contentType** | **String**| Content type header application/xml | [optional]

### Return type

null (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="postCreateView"></a>
# **postCreateView**
> postCreateView(name, body, jenkinsCrumb, contentType)



Create a new view using view configuration

### Example
```java
SwagRemoteAccessApi api = new SwagRemoteAccessApi();
SwagClient client = api.getClient();

// Configure HTTP basic authorization: jenkins_auth
HttpBasicAuth jenkins_auth = (HttpBasicAuth) client.getAuthentication('jenkins_auth');
jenkins_auth.setUsername('YOUR USERNAME');
jenkins_auth.setPassword('YOUR PASSWORD');

// You can also set your username and password in one line
jenkins_auth.setCredentials('YOUR USERNAME', 'YOUR PASSWORD');

Map<String, Object> params = new Map<String, Object>{
    'name' => 'name_example',
    'body' => 'body_example',
    'jenkinsCrumb' => 'jenkinsCrumb_example',
    'contentType' => 'contentType_example'
};

try {
    // cross your fingers
    api.postCreateView(params);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the new view |
 **body** | **String**| View configuration in config.xml format | [optional]
 **jenkinsCrumb** | **String**| CSRF protection token | [optional]
 **contentType** | **String**| Content type header application/xml | [optional]

### Return type

null (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="postJobBuild"></a>
# **postJobBuild**
> postJobBuild(name, json, token, jenkinsCrumb)



Build a job

### Example
```java
SwagRemoteAccessApi api = new SwagRemoteAccessApi();
SwagClient client = api.getClient();

// Configure HTTP basic authorization: jenkins_auth
HttpBasicAuth jenkins_auth = (HttpBasicAuth) client.getAuthentication('jenkins_auth');
jenkins_auth.setUsername('YOUR USERNAME');
jenkins_auth.setPassword('YOUR PASSWORD');

// You can also set your username and password in one line
jenkins_auth.setCredentials('YOUR USERNAME', 'YOUR PASSWORD');

Map<String, Object> params = new Map<String, Object>{
    'name' => 'name_example',
    'json' => 'json_example',
    'token' => 'token_example',
    'jenkinsCrumb' => 'jenkinsCrumb_example'
};

try {
    // cross your fingers
    api.postJobBuild(params);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the job |
 **json** | **String**|  |
 **token** | **String**|  | [optional]
 **jenkinsCrumb** | **String**| CSRF protection token | [optional]

### Return type

null (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="postJobConfig"></a>
# **postJobConfig**
> postJobConfig(name, body, jenkinsCrumb)



Update job configuration

### Example
```java
SwagRemoteAccessApi api = new SwagRemoteAccessApi();
SwagClient client = api.getClient();

// Configure HTTP basic authorization: jenkins_auth
HttpBasicAuth jenkins_auth = (HttpBasicAuth) client.getAuthentication('jenkins_auth');
jenkins_auth.setUsername('YOUR USERNAME');
jenkins_auth.setPassword('YOUR PASSWORD');

// You can also set your username and password in one line
jenkins_auth.setCredentials('YOUR USERNAME', 'YOUR PASSWORD');

Map<String, Object> params = new Map<String, Object>{
    'name' => 'name_example',
    'body' => 'body_example',
    'jenkinsCrumb' => 'jenkinsCrumb_example'
};

try {
    // cross your fingers
    api.postJobConfig(params);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the job |
 **body** | **String**| Job configuration in config.xml format |
 **jenkinsCrumb** | **String**| CSRF protection token | [optional]

### Return type

null (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="postJobDelete"></a>
# **postJobDelete**
> postJobDelete(name, jenkinsCrumb)



Delete a job

### Example
```java
SwagRemoteAccessApi api = new SwagRemoteAccessApi();
SwagClient client = api.getClient();

// Configure HTTP basic authorization: jenkins_auth
HttpBasicAuth jenkins_auth = (HttpBasicAuth) client.getAuthentication('jenkins_auth');
jenkins_auth.setUsername('YOUR USERNAME');
jenkins_auth.setPassword('YOUR PASSWORD');

// You can also set your username and password in one line
jenkins_auth.setCredentials('YOUR USERNAME', 'YOUR PASSWORD');

Map<String, Object> params = new Map<String, Object>{
    'name' => 'name_example',
    'jenkinsCrumb' => 'jenkinsCrumb_example'
};

try {
    // cross your fingers
    api.postJobDelete(params);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the job |
 **jenkinsCrumb** | **String**| CSRF protection token | [optional]

### Return type

null (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="postJobDisable"></a>
# **postJobDisable**
> postJobDisable(name, jenkinsCrumb)



Disable a job

### Example
```java
SwagRemoteAccessApi api = new SwagRemoteAccessApi();
SwagClient client = api.getClient();

// Configure HTTP basic authorization: jenkins_auth
HttpBasicAuth jenkins_auth = (HttpBasicAuth) client.getAuthentication('jenkins_auth');
jenkins_auth.setUsername('YOUR USERNAME');
jenkins_auth.setPassword('YOUR PASSWORD');

// You can also set your username and password in one line
jenkins_auth.setCredentials('YOUR USERNAME', 'YOUR PASSWORD');

Map<String, Object> params = new Map<String, Object>{
    'name' => 'name_example',
    'jenkinsCrumb' => 'jenkinsCrumb_example'
};

try {
    // cross your fingers
    api.postJobDisable(params);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the job |
 **jenkinsCrumb** | **String**| CSRF protection token | [optional]

### Return type

null (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="postJobEnable"></a>
# **postJobEnable**
> postJobEnable(name, jenkinsCrumb)



Enable a job

### Example
```java
SwagRemoteAccessApi api = new SwagRemoteAccessApi();
SwagClient client = api.getClient();

// Configure HTTP basic authorization: jenkins_auth
HttpBasicAuth jenkins_auth = (HttpBasicAuth) client.getAuthentication('jenkins_auth');
jenkins_auth.setUsername('YOUR USERNAME');
jenkins_auth.setPassword('YOUR PASSWORD');

// You can also set your username and password in one line
jenkins_auth.setCredentials('YOUR USERNAME', 'YOUR PASSWORD');

Map<String, Object> params = new Map<String, Object>{
    'name' => 'name_example',
    'jenkinsCrumb' => 'jenkinsCrumb_example'
};

try {
    // cross your fingers
    api.postJobEnable(params);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the job |
 **jenkinsCrumb** | **String**| CSRF protection token | [optional]

### Return type

null (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="postJobLastBuildStop"></a>
# **postJobLastBuildStop**
> postJobLastBuildStop(name, jenkinsCrumb)



Stop a job

### Example
```java
SwagRemoteAccessApi api = new SwagRemoteAccessApi();
SwagClient client = api.getClient();

// Configure HTTP basic authorization: jenkins_auth
HttpBasicAuth jenkins_auth = (HttpBasicAuth) client.getAuthentication('jenkins_auth');
jenkins_auth.setUsername('YOUR USERNAME');
jenkins_auth.setPassword('YOUR PASSWORD');

// You can also set your username and password in one line
jenkins_auth.setCredentials('YOUR USERNAME', 'YOUR PASSWORD');

Map<String, Object> params = new Map<String, Object>{
    'name' => 'name_example',
    'jenkinsCrumb' => 'jenkinsCrumb_example'
};

try {
    // cross your fingers
    api.postJobLastBuildStop(params);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the job |
 **jenkinsCrumb** | **String**| CSRF protection token | [optional]

### Return type

null (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="postViewConfig"></a>
# **postViewConfig**
> postViewConfig(name, body, jenkinsCrumb)



Update view configuration

### Example
```java
SwagRemoteAccessApi api = new SwagRemoteAccessApi();
SwagClient client = api.getClient();

// Configure HTTP basic authorization: jenkins_auth
HttpBasicAuth jenkins_auth = (HttpBasicAuth) client.getAuthentication('jenkins_auth');
jenkins_auth.setUsername('YOUR USERNAME');
jenkins_auth.setPassword('YOUR PASSWORD');

// You can also set your username and password in one line
jenkins_auth.setCredentials('YOUR USERNAME', 'YOUR PASSWORD');

Map<String, Object> params = new Map<String, Object>{
    'name' => 'name_example',
    'body' => 'body_example',
    'jenkinsCrumb' => 'jenkinsCrumb_example'
};

try {
    // cross your fingers
    api.postViewConfig(params);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the view |
 **body** | **String**| View configuration in config.xml format |
 **jenkinsCrumb** | **String**| CSRF protection token | [optional]

### Return type

null (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


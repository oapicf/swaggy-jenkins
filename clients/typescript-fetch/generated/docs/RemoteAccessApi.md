# RemoteAccessApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**getComputer**](RemoteAccessApi.md#getcomputer) | **GET** /computer/api/json |  |
| [**getJenkins**](RemoteAccessApi.md#getjenkins) | **GET** /api/json |  |
| [**getJob**](RemoteAccessApi.md#getjob) | **GET** /job/{name}/api/json |  |
| [**getJobConfig**](RemoteAccessApi.md#getjobconfig) | **GET** /job/{name}/config.xml |  |
| [**getJobLastBuild**](RemoteAccessApi.md#getjoblastbuild) | **GET** /job/{name}/lastBuild/api/json |  |
| [**getJobProgressiveText**](RemoteAccessApi.md#getjobprogressivetext) | **GET** /job/{name}/{number}/logText/progressiveText |  |
| [**getQueue**](RemoteAccessApi.md#getqueue) | **GET** /queue/api/json |  |
| [**getQueueItem**](RemoteAccessApi.md#getqueueitem) | **GET** /queue/item/{number}/api/json |  |
| [**getView**](RemoteAccessApi.md#getview) | **GET** /view/{name}/api/json |  |
| [**getViewConfig**](RemoteAccessApi.md#getviewconfig) | **GET** /view/{name}/config.xml |  |
| [**headJenkins**](RemoteAccessApi.md#headjenkins) | **HEAD** /api/json |  |
| [**postCreateItem**](RemoteAccessApi.md#postcreateitem) | **POST** /createItem |  |
| [**postCreateView**](RemoteAccessApi.md#postcreateview) | **POST** /createView |  |
| [**postJobBuild**](RemoteAccessApi.md#postjobbuild) | **POST** /job/{name}/build |  |
| [**postJobConfig**](RemoteAccessApi.md#postjobconfig) | **POST** /job/{name}/config.xml |  |
| [**postJobDelete**](RemoteAccessApi.md#postjobdelete) | **POST** /job/{name}/doDelete |  |
| [**postJobDisable**](RemoteAccessApi.md#postjobdisable) | **POST** /job/{name}/disable |  |
| [**postJobEnable**](RemoteAccessApi.md#postjobenable) | **POST** /job/{name}/enable |  |
| [**postJobLastBuildStop**](RemoteAccessApi.md#postjoblastbuildstop) | **POST** /job/{name}/lastBuild/stop |  |
| [**postViewConfig**](RemoteAccessApi.md#postviewconfig) | **POST** /view/{name}/config.xml |  |



## getComputer

> ComputerSet getComputer(depth)



Retrieve computer details

### Example

```ts
import {
  Configuration,
  RemoteAccessApi,
} from '';
import type { GetComputerRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // To configure HTTP basic authorization: jenkins_auth
    username: "YOUR USERNAME",
    password: "YOUR PASSWORD",
  });
  const api = new RemoteAccessApi(config);

  const body = {
    // number | Recursion depth in response model
    depth: 56,
  } satisfies GetComputerRequest;

  try {
    const data = await api.getComputer(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **depth** | `number` | Recursion depth in response model | [Defaults to `undefined`] |

### Return type

[**ComputerSet**](ComputerSet.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved computer details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getJenkins

> Hudson getJenkins()



Retrieve Jenkins details

### Example

```ts
import {
  Configuration,
  RemoteAccessApi,
} from '';
import type { GetJenkinsRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // To configure HTTP basic authorization: jenkins_auth
    username: "YOUR USERNAME",
    password: "YOUR PASSWORD",
  });
  const api = new RemoteAccessApi(config);

  try {
    const data = await api.getJenkins();
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Hudson**](Hudson.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved Jenkins details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getJob

> FreeStyleProject getJob(name)



Retrieve job details

### Example

```ts
import {
  Configuration,
  RemoteAccessApi,
} from '';
import type { GetJobRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // To configure HTTP basic authorization: jenkins_auth
    username: "YOUR USERNAME",
    password: "YOUR PASSWORD",
  });
  const api = new RemoteAccessApi(config);

  const body = {
    // string | Name of the job
    name: name_example,
  } satisfies GetJobRequest;

  try {
    const data = await api.getJob(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **name** | `string` | Name of the job | [Defaults to `undefined`] |

### Return type

[**FreeStyleProject**](FreeStyleProject.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved job details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |
| **404** | Job cannot be found on Jenkins instance |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getJobConfig

> string getJobConfig(name)



Retrieve job configuration

### Example

```ts
import {
  Configuration,
  RemoteAccessApi,
} from '';
import type { GetJobConfigRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // To configure HTTP basic authorization: jenkins_auth
    username: "YOUR USERNAME",
    password: "YOUR PASSWORD",
  });
  const api = new RemoteAccessApi(config);

  const body = {
    // string | Name of the job
    name: name_example,
  } satisfies GetJobConfigRequest;

  try {
    const data = await api.getJobConfig(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **name** | `string` | Name of the job | [Defaults to `undefined`] |

### Return type

**string**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/xml`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved job configuration in config.xml format |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |
| **404** | Job cannot be found on Jenkins instance |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getJobLastBuild

> FreeStyleBuild getJobLastBuild(name)



Retrieve job\&#39;s last build details

### Example

```ts
import {
  Configuration,
  RemoteAccessApi,
} from '';
import type { GetJobLastBuildRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // To configure HTTP basic authorization: jenkins_auth
    username: "YOUR USERNAME",
    password: "YOUR PASSWORD",
  });
  const api = new RemoteAccessApi(config);

  const body = {
    // string | Name of the job
    name: name_example,
  } satisfies GetJobLastBuildRequest;

  try {
    const data = await api.getJobLastBuild(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **name** | `string` | Name of the job | [Defaults to `undefined`] |

### Return type

[**FreeStyleBuild**](FreeStyleBuild.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved job\&#39;s last build details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |
| **404** | Job cannot be found on Jenkins instance |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getJobProgressiveText

> getJobProgressiveText(name, number, start)



Retrieve job\&#39;s build progressive text output

### Example

```ts
import {
  Configuration,
  RemoteAccessApi,
} from '';
import type { GetJobProgressiveTextRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // To configure HTTP basic authorization: jenkins_auth
    username: "YOUR USERNAME",
    password: "YOUR PASSWORD",
  });
  const api = new RemoteAccessApi(config);

  const body = {
    // string | Name of the job
    name: name_example,
    // string | Build number
    number: number_example,
    // string | Starting point of progressive text output
    start: start_example,
  } satisfies GetJobProgressiveTextRequest;

  try {
    const data = await api.getJobProgressiveText(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **name** | `string` | Name of the job | [Defaults to `undefined`] |
| **number** | `string` | Build number | [Defaults to `undefined`] |
| **start** | `string` | Starting point of progressive text output | [Defaults to `undefined`] |

### Return type

`void` (Empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved job\&#39;s build progressive text output |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |
| **404** | Job cannot be found on Jenkins instance |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getQueue

> Queue getQueue()



Retrieve queue details

### Example

```ts
import {
  Configuration,
  RemoteAccessApi,
} from '';
import type { GetQueueRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // To configure HTTP basic authorization: jenkins_auth
    username: "YOUR USERNAME",
    password: "YOUR PASSWORD",
  });
  const api = new RemoteAccessApi(config);

  try {
    const data = await api.getQueue();
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Queue**](Queue.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved queue details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getQueueItem

> Queue getQueueItem(number)



Retrieve queued item details

### Example

```ts
import {
  Configuration,
  RemoteAccessApi,
} from '';
import type { GetQueueItemRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // To configure HTTP basic authorization: jenkins_auth
    username: "YOUR USERNAME",
    password: "YOUR PASSWORD",
  });
  const api = new RemoteAccessApi(config);

  const body = {
    // string | Queue number
    number: number_example,
  } satisfies GetQueueItemRequest;

  try {
    const data = await api.getQueueItem(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **number** | `string` | Queue number | [Defaults to `undefined`] |

### Return type

[**Queue**](Queue.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved queued item details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getView

> ListView getView(name)



Retrieve view details

### Example

```ts
import {
  Configuration,
  RemoteAccessApi,
} from '';
import type { GetViewRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // To configure HTTP basic authorization: jenkins_auth
    username: "YOUR USERNAME",
    password: "YOUR PASSWORD",
  });
  const api = new RemoteAccessApi(config);

  const body = {
    // string | Name of the view
    name: name_example,
  } satisfies GetViewRequest;

  try {
    const data = await api.getView(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **name** | `string` | Name of the view | [Defaults to `undefined`] |

### Return type

[**ListView**](ListView.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved view details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |
| **404** | View cannot be found on Jenkins instance |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getViewConfig

> string getViewConfig(name)



Retrieve view configuration

### Example

```ts
import {
  Configuration,
  RemoteAccessApi,
} from '';
import type { GetViewConfigRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // To configure HTTP basic authorization: jenkins_auth
    username: "YOUR USERNAME",
    password: "YOUR PASSWORD",
  });
  const api = new RemoteAccessApi(config);

  const body = {
    // string | Name of the view
    name: name_example,
  } satisfies GetViewConfigRequest;

  try {
    const data = await api.getViewConfig(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **name** | `string` | Name of the view | [Defaults to `undefined`] |

### Return type

**string**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/xml`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved view configuration in config.xml format |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |
| **404** | View cannot be found on Jenkins instance |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## headJenkins

> headJenkins()



Retrieve Jenkins headers

### Example

```ts
import {
  Configuration,
  RemoteAccessApi,
} from '';
import type { HeadJenkinsRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // To configure HTTP basic authorization: jenkins_auth
    username: "YOUR USERNAME",
    password: "YOUR PASSWORD",
  });
  const api = new RemoteAccessApi(config);

  try {
    const data = await api.headJenkins();
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters

This endpoint does not need any parameter.

### Return type

`void` (Empty response body)

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

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## postCreateItem

> postCreateItem(name, from, mode, jenkinsCrumb, contentType, body)



Create a new job using job configuration, or copied from an existing job

### Example

```ts
import {
  Configuration,
  RemoteAccessApi,
} from '';
import type { PostCreateItemRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // To configure HTTP basic authorization: jenkins_auth
    username: "YOUR USERNAME",
    password: "YOUR PASSWORD",
  });
  const api = new RemoteAccessApi(config);

  const body = {
    // string | Name of the new job
    name: name_example,
    // string | Existing job to copy from (optional)
    from: from_example,
    // string | Set to \'copy\' for copying an existing job (optional)
    mode: mode_example,
    // string | CSRF protection token (optional)
    jenkinsCrumb: jenkinsCrumb_example,
    // string | Content type header application/xml (optional)
    contentType: contentType_example,
    // string | Job configuration in config.xml format (optional)
    body: body_example,
  } satisfies PostCreateItemRequest;

  try {
    const data = await api.postCreateItem(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **name** | `string` | Name of the new job | [Defaults to `undefined`] |
| **from** | `string` | Existing job to copy from | [Optional] [Defaults to `undefined`] |
| **mode** | `string` | Set to \&#39;copy\&#39; for copying an existing job | [Optional] [Defaults to `undefined`] |
| **jenkinsCrumb** | `string` | CSRF protection token | [Optional] [Defaults to `undefined`] |
| **contentType** | `string` | Content type header application/xml | [Optional] [Defaults to `undefined`] |
| **body** | `string` | Job configuration in config.xml format | [Optional] |

### Return type

`void` (Empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `*/*`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully created a new job |  -  |
| **400** | An error has occurred - error message is embedded inside the HTML response |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## postCreateView

> postCreateView(name, jenkinsCrumb, contentType, body)



Create a new view using view configuration

### Example

```ts
import {
  Configuration,
  RemoteAccessApi,
} from '';
import type { PostCreateViewRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // To configure HTTP basic authorization: jenkins_auth
    username: "YOUR USERNAME",
    password: "YOUR PASSWORD",
  });
  const api = new RemoteAccessApi(config);

  const body = {
    // string | Name of the new view
    name: name_example,
    // string | CSRF protection token (optional)
    jenkinsCrumb: jenkinsCrumb_example,
    // string | Content type header application/xml (optional)
    contentType: contentType_example,
    // string | View configuration in config.xml format (optional)
    body: body_example,
  } satisfies PostCreateViewRequest;

  try {
    const data = await api.postCreateView(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **name** | `string` | Name of the new view | [Defaults to `undefined`] |
| **jenkinsCrumb** | `string` | CSRF protection token | [Optional] [Defaults to `undefined`] |
| **contentType** | `string` | Content type header application/xml | [Optional] [Defaults to `undefined`] |
| **body** | `string` | View configuration in config.xml format | [Optional] |

### Return type

`void` (Empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `*/*`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully created the view |  -  |
| **400** | An error has occurred - error message is embedded inside the HTML response |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## postJobBuild

> postJobBuild(name, json, token, jenkinsCrumb)



Build a job

### Example

```ts
import {
  Configuration,
  RemoteAccessApi,
} from '';
import type { PostJobBuildRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // To configure HTTP basic authorization: jenkins_auth
    username: "YOUR USERNAME",
    password: "YOUR PASSWORD",
  });
  const api = new RemoteAccessApi(config);

  const body = {
    // string | Name of the job
    name: name_example,
    // string
    json: json_example,
    // string (optional)
    token: token_example,
    // string | CSRF protection token (optional)
    jenkinsCrumb: jenkinsCrumb_example,
  } satisfies PostJobBuildRequest;

  try {
    const data = await api.postJobBuild(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **name** | `string` | Name of the job | [Defaults to `undefined`] |
| **json** | `string` |  | [Defaults to `undefined`] |
| **token** | `string` |  | [Optional] [Defaults to `undefined`] |
| **jenkinsCrumb** | `string` | CSRF protection token | [Optional] [Defaults to `undefined`] |

### Return type

`void` (Empty response body)

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

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## postJobConfig

> postJobConfig(name, body, jenkinsCrumb)



Update job configuration

### Example

```ts
import {
  Configuration,
  RemoteAccessApi,
} from '';
import type { PostJobConfigRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // To configure HTTP basic authorization: jenkins_auth
    username: "YOUR USERNAME",
    password: "YOUR PASSWORD",
  });
  const api = new RemoteAccessApi(config);

  const body = {
    // string | Name of the job
    name: name_example,
    // string | Job configuration in config.xml format
    body: body_example,
    // string | CSRF protection token (optional)
    jenkinsCrumb: jenkinsCrumb_example,
  } satisfies PostJobConfigRequest;

  try {
    const data = await api.postJobConfig(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **name** | `string` | Name of the job | [Defaults to `undefined`] |
| **body** | `string` | Job configuration in config.xml format | |
| **jenkinsCrumb** | `string` | CSRF protection token | [Optional] [Defaults to `undefined`] |

### Return type

`void` (Empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `*/*`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved job configuration in config.xml format |  -  |
| **400** | An error has occurred - error message is embedded inside the HTML response |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |
| **404** | Job cannot be found on Jenkins instance |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## postJobDelete

> postJobDelete(name, jenkinsCrumb)



Delete a job

### Example

```ts
import {
  Configuration,
  RemoteAccessApi,
} from '';
import type { PostJobDeleteRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // To configure HTTP basic authorization: jenkins_auth
    username: "YOUR USERNAME",
    password: "YOUR PASSWORD",
  });
  const api = new RemoteAccessApi(config);

  const body = {
    // string | Name of the job
    name: name_example,
    // string | CSRF protection token (optional)
    jenkinsCrumb: jenkinsCrumb_example,
  } satisfies PostJobDeleteRequest;

  try {
    const data = await api.postJobDelete(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **name** | `string` | Name of the job | [Defaults to `undefined`] |
| **jenkinsCrumb** | `string` | CSRF protection token | [Optional] [Defaults to `undefined`] |

### Return type

`void` (Empty response body)

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

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## postJobDisable

> postJobDisable(name, jenkinsCrumb)



Disable a job

### Example

```ts
import {
  Configuration,
  RemoteAccessApi,
} from '';
import type { PostJobDisableRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // To configure HTTP basic authorization: jenkins_auth
    username: "YOUR USERNAME",
    password: "YOUR PASSWORD",
  });
  const api = new RemoteAccessApi(config);

  const body = {
    // string | Name of the job
    name: name_example,
    // string | CSRF protection token (optional)
    jenkinsCrumb: jenkinsCrumb_example,
  } satisfies PostJobDisableRequest;

  try {
    const data = await api.postJobDisable(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **name** | `string` | Name of the job | [Defaults to `undefined`] |
| **jenkinsCrumb** | `string` | CSRF protection token | [Optional] [Defaults to `undefined`] |

### Return type

`void` (Empty response body)

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

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## postJobEnable

> postJobEnable(name, jenkinsCrumb)



Enable a job

### Example

```ts
import {
  Configuration,
  RemoteAccessApi,
} from '';
import type { PostJobEnableRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // To configure HTTP basic authorization: jenkins_auth
    username: "YOUR USERNAME",
    password: "YOUR PASSWORD",
  });
  const api = new RemoteAccessApi(config);

  const body = {
    // string | Name of the job
    name: name_example,
    // string | CSRF protection token (optional)
    jenkinsCrumb: jenkinsCrumb_example,
  } satisfies PostJobEnableRequest;

  try {
    const data = await api.postJobEnable(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **name** | `string` | Name of the job | [Defaults to `undefined`] |
| **jenkinsCrumb** | `string` | CSRF protection token | [Optional] [Defaults to `undefined`] |

### Return type

`void` (Empty response body)

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

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## postJobLastBuildStop

> postJobLastBuildStop(name, jenkinsCrumb)



Stop a job

### Example

```ts
import {
  Configuration,
  RemoteAccessApi,
} from '';
import type { PostJobLastBuildStopRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // To configure HTTP basic authorization: jenkins_auth
    username: "YOUR USERNAME",
    password: "YOUR PASSWORD",
  });
  const api = new RemoteAccessApi(config);

  const body = {
    // string | Name of the job
    name: name_example,
    // string | CSRF protection token (optional)
    jenkinsCrumb: jenkinsCrumb_example,
  } satisfies PostJobLastBuildStopRequest;

  try {
    const data = await api.postJobLastBuildStop(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **name** | `string` | Name of the job | [Defaults to `undefined`] |
| **jenkinsCrumb** | `string` | CSRF protection token | [Optional] [Defaults to `undefined`] |

### Return type

`void` (Empty response body)

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

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## postViewConfig

> postViewConfig(name, body, jenkinsCrumb)



Update view configuration

### Example

```ts
import {
  Configuration,
  RemoteAccessApi,
} from '';
import type { PostViewConfigRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // To configure HTTP basic authorization: jenkins_auth
    username: "YOUR USERNAME",
    password: "YOUR PASSWORD",
  });
  const api = new RemoteAccessApi(config);

  const body = {
    // string | Name of the view
    name: name_example,
    // string | View configuration in config.xml format
    body: body_example,
    // string | CSRF protection token (optional)
    jenkinsCrumb: jenkinsCrumb_example,
  } satisfies PostViewConfigRequest;

  try {
    const data = await api.postViewConfig(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **name** | `string` | Name of the view | [Defaults to `undefined`] |
| **body** | `string` | View configuration in config.xml format | |
| **jenkinsCrumb** | `string` | CSRF protection token | [Optional] [Defaults to `undefined`] |

### Return type

`void` (Empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `*/*`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully updated view configuration |  -  |
| **400** | An error has occurred - error message is embedded inside the HTML response |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |
| **404** | View cannot be found on Jenkins instance |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


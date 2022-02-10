# openapi.api.RemoteAccessApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getComputer**](RemoteAccessApi.md#getComputer) | **Get** /computer/api/json | 
[**getJenkins**](RemoteAccessApi.md#getJenkins) | **Get** /api/json | 
[**getJob**](RemoteAccessApi.md#getJob) | **Get** /job/:name/api/json | 
[**getJobConfig**](RemoteAccessApi.md#getJobConfig) | **Get** /job/:name/config.xml | 
[**getJobLastBuild**](RemoteAccessApi.md#getJobLastBuild) | **Get** /job/:name/lastBuild/api/json | 
[**getJobProgressiveText**](RemoteAccessApi.md#getJobProgressiveText) | **Get** /job/:name/:number/logText/progressiveText | 
[**getQueue**](RemoteAccessApi.md#getQueue) | **Get** /queue/api/json | 
[**getQueueItem**](RemoteAccessApi.md#getQueueItem) | **Get** /queue/item/:number/api/json | 
[**getView**](RemoteAccessApi.md#getView) | **Get** /view/:name/api/json | 
[**getViewConfig**](RemoteAccessApi.md#getViewConfig) | **Get** /view/:name/config.xml | 
[**headJenkins**](RemoteAccessApi.md#headJenkins) | **Head** /api/json | 
[**postCreateItem**](RemoteAccessApi.md#postCreateItem) | **Post** /createItem | 
[**postCreateView**](RemoteAccessApi.md#postCreateView) | **Post** /createView | 
[**postJobBuild**](RemoteAccessApi.md#postJobBuild) | **Post** /job/:name/build | 
[**postJobConfig**](RemoteAccessApi.md#postJobConfig) | **Post** /job/:name/config.xml | 
[**postJobDelete**](RemoteAccessApi.md#postJobDelete) | **Post** /job/:name/doDelete | 
[**postJobDisable**](RemoteAccessApi.md#postJobDisable) | **Post** /job/:name/disable | 
[**postJobEnable**](RemoteAccessApi.md#postJobEnable) | **Post** /job/:name/enable | 
[**postJobLastBuildStop**](RemoteAccessApi.md#postJobLastBuildStop) | **Post** /job/:name/lastBuild/stop | 
[**postViewConfig**](RemoteAccessApi.md#postViewConfig) | **Post** /view/:name/config.xml | 


# **getComputer**
> ComputerSet getComputer(depth)



Retrieve computer details

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: jenkins_auth
//openapi.api.Configuration.username = 'YOUR_USERNAME';
//openapi.api.Configuration.password = 'YOUR_PASSWORD';

var api_instance = new RemoteAccessApi();
var depth = 56; // int | Recursion depth in response model

try {
    var result = api_instance.getComputer(depth);
    print(result);
} catch (e) {
    print("Exception when calling RemoteAccessApi->getComputer: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **depth** | **int**| Recursion depth in response model | [default to null]

### Return type

[**ComputerSet**](ComputerSet.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getJenkins**
> Hudson getJenkins()



Retrieve Jenkins details

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: jenkins_auth
//openapi.api.Configuration.username = 'YOUR_USERNAME';
//openapi.api.Configuration.password = 'YOUR_PASSWORD';

var api_instance = new RemoteAccessApi();

try {
    var result = api_instance.getJenkins();
    print(result);
} catch (e) {
    print("Exception when calling RemoteAccessApi->getJenkins: $e\n");
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

# **getJob**
> FreeStyleProject getJob(name)



Retrieve job details

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: jenkins_auth
//openapi.api.Configuration.username = 'YOUR_USERNAME';
//openapi.api.Configuration.password = 'YOUR_PASSWORD';

var api_instance = new RemoteAccessApi();
var name = name_example; // String | Name of the job

try {
    var result = api_instance.getJob(name);
    print(result);
} catch (e) {
    print("Exception when calling RemoteAccessApi->getJob: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the job | [default to null]

### Return type

[**FreeStyleProject**](FreeStyleProject.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getJobConfig**
> String getJobConfig(name)



Retrieve job configuration

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: jenkins_auth
//openapi.api.Configuration.username = 'YOUR_USERNAME';
//openapi.api.Configuration.password = 'YOUR_PASSWORD';

var api_instance = new RemoteAccessApi();
var name = name_example; // String | Name of the job

try {
    var result = api_instance.getJobConfig(name);
    print(result);
} catch (e) {
    print("Exception when calling RemoteAccessApi->getJobConfig: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the job | [default to null]

### Return type

**String**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getJobLastBuild**
> FreeStyleBuild getJobLastBuild(name)



Retrieve job's last build details

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: jenkins_auth
//openapi.api.Configuration.username = 'YOUR_USERNAME';
//openapi.api.Configuration.password = 'YOUR_PASSWORD';

var api_instance = new RemoteAccessApi();
var name = name_example; // String | Name of the job

try {
    var result = api_instance.getJobLastBuild(name);
    print(result);
} catch (e) {
    print("Exception when calling RemoteAccessApi->getJobLastBuild: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the job | [default to null]

### Return type

[**FreeStyleBuild**](FreeStyleBuild.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getJobProgressiveText**
> getJobProgressiveText(name, number, start)



Retrieve job's build progressive text output

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: jenkins_auth
//openapi.api.Configuration.username = 'YOUR_USERNAME';
//openapi.api.Configuration.password = 'YOUR_PASSWORD';

var api_instance = new RemoteAccessApi();
var name = name_example; // String | Name of the job
var number = number_example; // String | Build number
var start = start_example; // String | Starting point of progressive text output

try {
    api_instance.getJobProgressiveText(name, number, start);
} catch (e) {
    print("Exception when calling RemoteAccessApi->getJobProgressiveText: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the job | [default to null]
 **number** | **String**| Build number | [default to null]
 **start** | **String**| Starting point of progressive text output | [default to null]

### Return type

void (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getQueue**
> Queue getQueue()



Retrieve queue details

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: jenkins_auth
//openapi.api.Configuration.username = 'YOUR_USERNAME';
//openapi.api.Configuration.password = 'YOUR_PASSWORD';

var api_instance = new RemoteAccessApi();

try {
    var result = api_instance.getQueue();
    print(result);
} catch (e) {
    print("Exception when calling RemoteAccessApi->getQueue: $e\n");
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

# **getQueueItem**
> Queue getQueueItem(number)



Retrieve queued item details

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: jenkins_auth
//openapi.api.Configuration.username = 'YOUR_USERNAME';
//openapi.api.Configuration.password = 'YOUR_PASSWORD';

var api_instance = new RemoteAccessApi();
var number = number_example; // String | Queue number

try {
    var result = api_instance.getQueueItem(number);
    print(result);
} catch (e) {
    print("Exception when calling RemoteAccessApi->getQueueItem: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **number** | **String**| Queue number | [default to null]

### Return type

[**Queue**](Queue.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getView**
> ListView getView(name)



Retrieve view details

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: jenkins_auth
//openapi.api.Configuration.username = 'YOUR_USERNAME';
//openapi.api.Configuration.password = 'YOUR_PASSWORD';

var api_instance = new RemoteAccessApi();
var name = name_example; // String | Name of the view

try {
    var result = api_instance.getView(name);
    print(result);
} catch (e) {
    print("Exception when calling RemoteAccessApi->getView: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the view | [default to null]

### Return type

[**ListView**](ListView.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getViewConfig**
> String getViewConfig(name)



Retrieve view configuration

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: jenkins_auth
//openapi.api.Configuration.username = 'YOUR_USERNAME';
//openapi.api.Configuration.password = 'YOUR_PASSWORD';

var api_instance = new RemoteAccessApi();
var name = name_example; // String | Name of the view

try {
    var result = api_instance.getViewConfig(name);
    print(result);
} catch (e) {
    print("Exception when calling RemoteAccessApi->getViewConfig: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the view | [default to null]

### Return type

**String**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **headJenkins**
> headJenkins()



Retrieve Jenkins headers

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: jenkins_auth
//openapi.api.Configuration.username = 'YOUR_USERNAME';
//openapi.api.Configuration.password = 'YOUR_PASSWORD';

var api_instance = new RemoteAccessApi();

try {
    api_instance.headJenkins();
} catch (e) {
    print("Exception when calling RemoteAccessApi->headJenkins: $e\n");
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

# **postCreateItem**
> postCreateItem(name, from, mode, jenkinsCrumb, contentType, body)



Create a new job using job configuration, or copied from an existing job

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: jenkins_auth
//openapi.api.Configuration.username = 'YOUR_USERNAME';
//openapi.api.Configuration.password = 'YOUR_PASSWORD';

var api_instance = new RemoteAccessApi();
var name = name_example; // String | Name of the new job
var from = from_example; // String | Existing job to copy from
var mode = mode_example; // String | Set to 'copy' for copying an existing job
var jenkinsCrumb = jenkinsCrumb_example; // String | CSRF protection token
var contentType = contentType_example; // String | Content type header application/xml
var body = new String(); // String | Job configuration in config.xml format

try {
    api_instance.postCreateItem(name, from, mode, jenkinsCrumb, contentType, body);
} catch (e) {
    print("Exception when calling RemoteAccessApi->postCreateItem: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the new job | [default to null]
 **from** | **String**| Existing job to copy from | [optional] [default to null]
 **mode** | **String**| Set to &#39;copy&#39; for copying an existing job | [optional] [default to null]
 **jenkinsCrumb** | **String**| CSRF protection token | [optional] [default to null]
 **contentType** | **String**| Content type header application/xml | [optional] [default to null]
 **body** | **String**| Job configuration in config.xml format | [optional] 

### Return type

void (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postCreateView**
> postCreateView(name, jenkinsCrumb, contentType, body)



Create a new view using view configuration

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: jenkins_auth
//openapi.api.Configuration.username = 'YOUR_USERNAME';
//openapi.api.Configuration.password = 'YOUR_PASSWORD';

var api_instance = new RemoteAccessApi();
var name = name_example; // String | Name of the new view
var jenkinsCrumb = jenkinsCrumb_example; // String | CSRF protection token
var contentType = contentType_example; // String | Content type header application/xml
var body = new String(); // String | View configuration in config.xml format

try {
    api_instance.postCreateView(name, jenkinsCrumb, contentType, body);
} catch (e) {
    print("Exception when calling RemoteAccessApi->postCreateView: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the new view | [default to null]
 **jenkinsCrumb** | **String**| CSRF protection token | [optional] [default to null]
 **contentType** | **String**| Content type header application/xml | [optional] [default to null]
 **body** | **String**| View configuration in config.xml format | [optional] 

### Return type

void (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postJobBuild**
> postJobBuild(name, json, token, jenkinsCrumb)



Build a job

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: jenkins_auth
//openapi.api.Configuration.username = 'YOUR_USERNAME';
//openapi.api.Configuration.password = 'YOUR_PASSWORD';

var api_instance = new RemoteAccessApi();
var name = name_example; // String | Name of the job
var json = json_example; // String | 
var token = token_example; // String | 
var jenkinsCrumb = jenkinsCrumb_example; // String | CSRF protection token

try {
    api_instance.postJobBuild(name, json, token, jenkinsCrumb);
} catch (e) {
    print("Exception when calling RemoteAccessApi->postJobBuild: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the job | [default to null]
 **json** | **String**|  | [default to null]
 **token** | **String**|  | [optional] [default to null]
 **jenkinsCrumb** | **String**| CSRF protection token | [optional] [default to null]

### Return type

void (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postJobConfig**
> postJobConfig(name, body, jenkinsCrumb)



Update job configuration

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: jenkins_auth
//openapi.api.Configuration.username = 'YOUR_USERNAME';
//openapi.api.Configuration.password = 'YOUR_PASSWORD';

var api_instance = new RemoteAccessApi();
var name = name_example; // String | Name of the job
var body = new String(); // String | Job configuration in config.xml format
var jenkinsCrumb = jenkinsCrumb_example; // String | CSRF protection token

try {
    api_instance.postJobConfig(name, body, jenkinsCrumb);
} catch (e) {
    print("Exception when calling RemoteAccessApi->postJobConfig: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the job | [default to null]
 **body** | **String**| Job configuration in config.xml format | 
 **jenkinsCrumb** | **String**| CSRF protection token | [optional] [default to null]

### Return type

void (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postJobDelete**
> postJobDelete(name, jenkinsCrumb)



Delete a job

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: jenkins_auth
//openapi.api.Configuration.username = 'YOUR_USERNAME';
//openapi.api.Configuration.password = 'YOUR_PASSWORD';

var api_instance = new RemoteAccessApi();
var name = name_example; // String | Name of the job
var jenkinsCrumb = jenkinsCrumb_example; // String | CSRF protection token

try {
    api_instance.postJobDelete(name, jenkinsCrumb);
} catch (e) {
    print("Exception when calling RemoteAccessApi->postJobDelete: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the job | [default to null]
 **jenkinsCrumb** | **String**| CSRF protection token | [optional] [default to null]

### Return type

void (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postJobDisable**
> postJobDisable(name, jenkinsCrumb)



Disable a job

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: jenkins_auth
//openapi.api.Configuration.username = 'YOUR_USERNAME';
//openapi.api.Configuration.password = 'YOUR_PASSWORD';

var api_instance = new RemoteAccessApi();
var name = name_example; // String | Name of the job
var jenkinsCrumb = jenkinsCrumb_example; // String | CSRF protection token

try {
    api_instance.postJobDisable(name, jenkinsCrumb);
} catch (e) {
    print("Exception when calling RemoteAccessApi->postJobDisable: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the job | [default to null]
 **jenkinsCrumb** | **String**| CSRF protection token | [optional] [default to null]

### Return type

void (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postJobEnable**
> postJobEnable(name, jenkinsCrumb)



Enable a job

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: jenkins_auth
//openapi.api.Configuration.username = 'YOUR_USERNAME';
//openapi.api.Configuration.password = 'YOUR_PASSWORD';

var api_instance = new RemoteAccessApi();
var name = name_example; // String | Name of the job
var jenkinsCrumb = jenkinsCrumb_example; // String | CSRF protection token

try {
    api_instance.postJobEnable(name, jenkinsCrumb);
} catch (e) {
    print("Exception when calling RemoteAccessApi->postJobEnable: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the job | [default to null]
 **jenkinsCrumb** | **String**| CSRF protection token | [optional] [default to null]

### Return type

void (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postJobLastBuildStop**
> postJobLastBuildStop(name, jenkinsCrumb)



Stop a job

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: jenkins_auth
//openapi.api.Configuration.username = 'YOUR_USERNAME';
//openapi.api.Configuration.password = 'YOUR_PASSWORD';

var api_instance = new RemoteAccessApi();
var name = name_example; // String | Name of the job
var jenkinsCrumb = jenkinsCrumb_example; // String | CSRF protection token

try {
    api_instance.postJobLastBuildStop(name, jenkinsCrumb);
} catch (e) {
    print("Exception when calling RemoteAccessApi->postJobLastBuildStop: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the job | [default to null]
 **jenkinsCrumb** | **String**| CSRF protection token | [optional] [default to null]

### Return type

void (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postViewConfig**
> postViewConfig(name, body, jenkinsCrumb)



Update view configuration

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: jenkins_auth
//openapi.api.Configuration.username = 'YOUR_USERNAME';
//openapi.api.Configuration.password = 'YOUR_PASSWORD';

var api_instance = new RemoteAccessApi();
var name = name_example; // String | Name of the view
var body = new String(); // String | View configuration in config.xml format
var jenkinsCrumb = jenkinsCrumb_example; // String | CSRF protection token

try {
    api_instance.postViewConfig(name, body, jenkinsCrumb);
} catch (e) {
    print("Exception when calling RemoteAccessApi->postViewConfig: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the view | [default to null]
 **body** | **String**| View configuration in config.xml format | 
 **jenkinsCrumb** | **String**| CSRF protection token | [optional] [default to null]

### Return type

void (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# openapi.api.RemoteAccessApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getComputer**](RemoteAccessApi.md#getcomputer) | **GET** /computer/api/json | 
[**getJenkins**](RemoteAccessApi.md#getjenkins) | **GET** /api/json | 
[**getJob**](RemoteAccessApi.md#getjob) | **GET** /job/{name}/api/json | 
[**getJobConfig**](RemoteAccessApi.md#getjobconfig) | **GET** /job/{name}/config.xml | 
[**getJobLastBuild**](RemoteAccessApi.md#getjoblastbuild) | **GET** /job/{name}/lastBuild/api/json | 
[**getJobProgressiveText**](RemoteAccessApi.md#getjobprogressivetext) | **GET** /job/{name}/{number}/logText/progressiveText | 
[**getQueue**](RemoteAccessApi.md#getqueue) | **GET** /queue/api/json | 
[**getQueueItem**](RemoteAccessApi.md#getqueueitem) | **GET** /queue/item/{number}/api/json | 
[**getView**](RemoteAccessApi.md#getview) | **GET** /view/{name}/api/json | 
[**getViewConfig**](RemoteAccessApi.md#getviewconfig) | **GET** /view/{name}/config.xml | 
[**headJenkins**](RemoteAccessApi.md#headjenkins) | **HEAD** /api/json | 
[**postCreateItem**](RemoteAccessApi.md#postcreateitem) | **POST** /createItem | 
[**postCreateView**](RemoteAccessApi.md#postcreateview) | **POST** /createView | 
[**postJobBuild**](RemoteAccessApi.md#postjobbuild) | **POST** /job/{name}/build | 
[**postJobConfig**](RemoteAccessApi.md#postjobconfig) | **POST** /job/{name}/config.xml | 
[**postJobDelete**](RemoteAccessApi.md#postjobdelete) | **POST** /job/{name}/doDelete | 
[**postJobDisable**](RemoteAccessApi.md#postjobdisable) | **POST** /job/{name}/disable | 
[**postJobEnable**](RemoteAccessApi.md#postjobenable) | **POST** /job/{name}/enable | 
[**postJobLastBuildStop**](RemoteAccessApi.md#postjoblastbuildstop) | **POST** /job/{name}/lastBuild/stop | 
[**postViewConfig**](RemoteAccessApi.md#postviewconfig) | **POST** /view/{name}/config.xml | 


# **getComputer**
> ComputerSet getComputer(depth)



Retrieve computer details

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: jenkins_auth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jenkins_auth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jenkins_auth').password = 'YOUR_PASSWORD';

final api = Openapi().getRemoteAccessApi();
final int depth = 56; // int | Recursion depth in response model

try {
    final response = api.getComputer(depth);
    print(response);
} catch on DioError (e) {
    print('Exception when calling RemoteAccessApi->getComputer: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **depth** | **int**| Recursion depth in response model | 

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
//defaultApiClient.getAuthentication<HttpBasicAuth>('jenkins_auth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jenkins_auth').password = 'YOUR_PASSWORD';

final api = Openapi().getRemoteAccessApi();

try {
    final response = api.getJenkins();
    print(response);
} catch on DioError (e) {
    print('Exception when calling RemoteAccessApi->getJenkins: $e\n');
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
//defaultApiClient.getAuthentication<HttpBasicAuth>('jenkins_auth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jenkins_auth').password = 'YOUR_PASSWORD';

final api = Openapi().getRemoteAccessApi();
final String name = name_example; // String | Name of the job

try {
    final response = api.getJob(name);
    print(response);
} catch on DioError (e) {
    print('Exception when calling RemoteAccessApi->getJob: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the job | 

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
//defaultApiClient.getAuthentication<HttpBasicAuth>('jenkins_auth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jenkins_auth').password = 'YOUR_PASSWORD';

final api = Openapi().getRemoteAccessApi();
final String name = name_example; // String | Name of the job

try {
    final response = api.getJobConfig(name);
    print(response);
} catch on DioError (e) {
    print('Exception when calling RemoteAccessApi->getJobConfig: $e\n');
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
//defaultApiClient.getAuthentication<HttpBasicAuth>('jenkins_auth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jenkins_auth').password = 'YOUR_PASSWORD';

final api = Openapi().getRemoteAccessApi();
final String name = name_example; // String | Name of the job

try {
    final response = api.getJobLastBuild(name);
    print(response);
} catch on DioError (e) {
    print('Exception when calling RemoteAccessApi->getJobLastBuild: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the job | 

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
//defaultApiClient.getAuthentication<HttpBasicAuth>('jenkins_auth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jenkins_auth').password = 'YOUR_PASSWORD';

final api = Openapi().getRemoteAccessApi();
final String name = name_example; // String | Name of the job
final String number = number_example; // String | Build number
final String start = start_example; // String | Starting point of progressive text output

try {
    api.getJobProgressiveText(name, number, start);
} catch on DioError (e) {
    print('Exception when calling RemoteAccessApi->getJobProgressiveText: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the job | 
 **number** | **String**| Build number | 
 **start** | **String**| Starting point of progressive text output | 

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
//defaultApiClient.getAuthentication<HttpBasicAuth>('jenkins_auth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jenkins_auth').password = 'YOUR_PASSWORD';

final api = Openapi().getRemoteAccessApi();

try {
    final response = api.getQueue();
    print(response);
} catch on DioError (e) {
    print('Exception when calling RemoteAccessApi->getQueue: $e\n');
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
//defaultApiClient.getAuthentication<HttpBasicAuth>('jenkins_auth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jenkins_auth').password = 'YOUR_PASSWORD';

final api = Openapi().getRemoteAccessApi();
final String number = number_example; // String | Queue number

try {
    final response = api.getQueueItem(number);
    print(response);
} catch on DioError (e) {
    print('Exception when calling RemoteAccessApi->getQueueItem: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **number** | **String**| Queue number | 

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
//defaultApiClient.getAuthentication<HttpBasicAuth>('jenkins_auth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jenkins_auth').password = 'YOUR_PASSWORD';

final api = Openapi().getRemoteAccessApi();
final String name = name_example; // String | Name of the view

try {
    final response = api.getView(name);
    print(response);
} catch on DioError (e) {
    print('Exception when calling RemoteAccessApi->getView: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the view | 

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
//defaultApiClient.getAuthentication<HttpBasicAuth>('jenkins_auth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jenkins_auth').password = 'YOUR_PASSWORD';

final api = Openapi().getRemoteAccessApi();
final String name = name_example; // String | Name of the view

try {
    final response = api.getViewConfig(name);
    print(response);
} catch on DioError (e) {
    print('Exception when calling RemoteAccessApi->getViewConfig: $e\n');
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
//defaultApiClient.getAuthentication<HttpBasicAuth>('jenkins_auth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jenkins_auth').password = 'YOUR_PASSWORD';

final api = Openapi().getRemoteAccessApi();

try {
    api.headJenkins();
} catch on DioError (e) {
    print('Exception when calling RemoteAccessApi->headJenkins: $e\n');
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
//defaultApiClient.getAuthentication<HttpBasicAuth>('jenkins_auth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jenkins_auth').password = 'YOUR_PASSWORD';

final api = Openapi().getRemoteAccessApi();
final String name = name_example; // String | Name of the new job
final String from = from_example; // String | Existing job to copy from
final String mode = mode_example; // String | Set to 'copy' for copying an existing job
final String jenkinsCrumb = jenkinsCrumb_example; // String | CSRF protection token
final String contentType = contentType_example; // String | Content type header application/xml
final String body = body_example; // String | Job configuration in config.xml format

try {
    api.postCreateItem(name, from, mode, jenkinsCrumb, contentType, body);
} catch on DioError (e) {
    print('Exception when calling RemoteAccessApi->postCreateItem: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the new job | 
 **from** | **String**| Existing job to copy from | [optional] 
 **mode** | **String**| Set to 'copy' for copying an existing job | [optional] 
 **jenkinsCrumb** | **String**| CSRF protection token | [optional] 
 **contentType** | **String**| Content type header application/xml | [optional] 
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
//defaultApiClient.getAuthentication<HttpBasicAuth>('jenkins_auth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jenkins_auth').password = 'YOUR_PASSWORD';

final api = Openapi().getRemoteAccessApi();
final String name = name_example; // String | Name of the new view
final String jenkinsCrumb = jenkinsCrumb_example; // String | CSRF protection token
final String contentType = contentType_example; // String | Content type header application/xml
final String body = body_example; // String | View configuration in config.xml format

try {
    api.postCreateView(name, jenkinsCrumb, contentType, body);
} catch on DioError (e) {
    print('Exception when calling RemoteAccessApi->postCreateView: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the new view | 
 **jenkinsCrumb** | **String**| CSRF protection token | [optional] 
 **contentType** | **String**| Content type header application/xml | [optional] 
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
//defaultApiClient.getAuthentication<HttpBasicAuth>('jenkins_auth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jenkins_auth').password = 'YOUR_PASSWORD';

final api = Openapi().getRemoteAccessApi();
final String name = name_example; // String | Name of the job
final String json = json_example; // String | 
final String token = token_example; // String | 
final String jenkinsCrumb = jenkinsCrumb_example; // String | CSRF protection token

try {
    api.postJobBuild(name, json, token, jenkinsCrumb);
} catch on DioError (e) {
    print('Exception when calling RemoteAccessApi->postJobBuild: $e\n');
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
//defaultApiClient.getAuthentication<HttpBasicAuth>('jenkins_auth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jenkins_auth').password = 'YOUR_PASSWORD';

final api = Openapi().getRemoteAccessApi();
final String name = name_example; // String | Name of the job
final String body = body_example; // String | Job configuration in config.xml format
final String jenkinsCrumb = jenkinsCrumb_example; // String | CSRF protection token

try {
    api.postJobConfig(name, body, jenkinsCrumb);
} catch on DioError (e) {
    print('Exception when calling RemoteAccessApi->postJobConfig: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the job | 
 **body** | **String**| Job configuration in config.xml format | 
 **jenkinsCrumb** | **String**| CSRF protection token | [optional] 

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
//defaultApiClient.getAuthentication<HttpBasicAuth>('jenkins_auth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jenkins_auth').password = 'YOUR_PASSWORD';

final api = Openapi().getRemoteAccessApi();
final String name = name_example; // String | Name of the job
final String jenkinsCrumb = jenkinsCrumb_example; // String | CSRF protection token

try {
    api.postJobDelete(name, jenkinsCrumb);
} catch on DioError (e) {
    print('Exception when calling RemoteAccessApi->postJobDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the job | 
 **jenkinsCrumb** | **String**| CSRF protection token | [optional] 

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
//defaultApiClient.getAuthentication<HttpBasicAuth>('jenkins_auth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jenkins_auth').password = 'YOUR_PASSWORD';

final api = Openapi().getRemoteAccessApi();
final String name = name_example; // String | Name of the job
final String jenkinsCrumb = jenkinsCrumb_example; // String | CSRF protection token

try {
    api.postJobDisable(name, jenkinsCrumb);
} catch on DioError (e) {
    print('Exception when calling RemoteAccessApi->postJobDisable: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the job | 
 **jenkinsCrumb** | **String**| CSRF protection token | [optional] 

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
//defaultApiClient.getAuthentication<HttpBasicAuth>('jenkins_auth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jenkins_auth').password = 'YOUR_PASSWORD';

final api = Openapi().getRemoteAccessApi();
final String name = name_example; // String | Name of the job
final String jenkinsCrumb = jenkinsCrumb_example; // String | CSRF protection token

try {
    api.postJobEnable(name, jenkinsCrumb);
} catch on DioError (e) {
    print('Exception when calling RemoteAccessApi->postJobEnable: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the job | 
 **jenkinsCrumb** | **String**| CSRF protection token | [optional] 

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
//defaultApiClient.getAuthentication<HttpBasicAuth>('jenkins_auth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jenkins_auth').password = 'YOUR_PASSWORD';

final api = Openapi().getRemoteAccessApi();
final String name = name_example; // String | Name of the job
final String jenkinsCrumb = jenkinsCrumb_example; // String | CSRF protection token

try {
    api.postJobLastBuildStop(name, jenkinsCrumb);
} catch on DioError (e) {
    print('Exception when calling RemoteAccessApi->postJobLastBuildStop: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the job | 
 **jenkinsCrumb** | **String**| CSRF protection token | [optional] 

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
//defaultApiClient.getAuthentication<HttpBasicAuth>('jenkins_auth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jenkins_auth').password = 'YOUR_PASSWORD';

final api = Openapi().getRemoteAccessApi();
final String name = name_example; // String | Name of the view
final String body = body_example; // String | View configuration in config.xml format
final String jenkinsCrumb = jenkinsCrumb_example; // String | CSRF protection token

try {
    api.postViewConfig(name, body, jenkinsCrumb);
} catch on DioError (e) {
    print('Exception when calling RemoteAccessApi->postViewConfig: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the view | 
 **body** | **String**| View configuration in config.xml format | 
 **jenkinsCrumb** | **String**| CSRF protection token | [optional] 

### Return type

void (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


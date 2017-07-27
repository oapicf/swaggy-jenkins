# swagger.api.RemoteAccessApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getComputer**](RemoteAccessApi.md#getComputer) | **GET** /computer/api/json?depth&#x3D;1 | 
[**getCrumb**](RemoteAccessApi.md#getCrumb) | **GET** /crumbIssuer/api/json | 
[**getJenkins**](RemoteAccessApi.md#getJenkins) | **GET** /api/json | 
[**getJob**](RemoteAccessApi.md#getJob) | **GET** /job/{name}/api/json | 
[**getJobConfig**](RemoteAccessApi.md#getJobConfig) | **GET** /job/{name}/config.xml | 
[**getJobLastBuild**](RemoteAccessApi.md#getJobLastBuild) | **GET** /job/{name}/lastBuild/api/json | 
[**getJobProgressiveText**](RemoteAccessApi.md#getJobProgressiveText) | **GET** /job/{name}/{number}/logText/progressiveText | 
[**getQueue**](RemoteAccessApi.md#getQueue) | **GET** /queue/api/json | 
[**getQueueItem**](RemoteAccessApi.md#getQueueItem) | **GET** /queue/item/{number}/api/json | 
[**getView**](RemoteAccessApi.md#getView) | **GET** /view/{name}/api/json | 
[**getViewConfig**](RemoteAccessApi.md#getViewConfig) | **GET** /view/{name}/config.xml | 
[**headJenkins**](RemoteAccessApi.md#headJenkins) | **HEAD** /api/json | 
[**postCreateItem**](RemoteAccessApi.md#postCreateItem) | **POST** /createItem | 
[**postCreateView**](RemoteAccessApi.md#postCreateView) | **POST** /createView | 
[**postJobBuild**](RemoteAccessApi.md#postJobBuild) | **POST** /job/{name}/build | 
[**postJobConfig**](RemoteAccessApi.md#postJobConfig) | **POST** /job/{name}/config.xml | 
[**postJobDelete**](RemoteAccessApi.md#postJobDelete) | **POST** /job/{name}/doDelete | 
[**postJobDisable**](RemoteAccessApi.md#postJobDisable) | **POST** /job/{name}/disable | 
[**postJobEnable**](RemoteAccessApi.md#postJobEnable) | **POST** /job/{name}/enable | 
[**postJobLastBuildStop**](RemoteAccessApi.md#postJobLastBuildStop) | **POST** /job/{name}/lastBuild/stop | 
[**postViewConfig**](RemoteAccessApi.md#postViewConfig) | **POST** /view/{name}/config.xml | 


# **getComputer**
> HudsonmodelComputerSet getComputer()



Retrieve computer details

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new RemoteAccessApi();

try { 
    var result = api_instance.getComputer();
    print(result);
} catch (e) {
    print("Exception when calling RemoteAccessApi->getComputer: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**HudsonmodelComputerSet**](HudsonmodelComputerSet.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCrumb**
> HudsonsecuritycsrfDefaultCrumbIssuer getCrumb()



Retrieve CSRF protection token

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new RemoteAccessApi();

try { 
    var result = api_instance.getCrumb();
    print(result);
} catch (e) {
    print("Exception when calling RemoteAccessApi->getCrumb: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**HudsonsecuritycsrfDefaultCrumbIssuer**](HudsonsecuritycsrfDefaultCrumbIssuer.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getJenkins**
> HudsonmodelHudson getJenkins()



Retrieve Jenkins details

### Example 
```dart
import 'package:swagger/api.dart';

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

[**HudsonmodelHudson**](HudsonmodelHudson.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getJob**
> HudsonmodelFreeStyleProject getJob(name)



Retrieve job details

### Example 
```dart
import 'package:swagger/api.dart';

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
 **name** | **String**| Name of the job | 

### Return type

[**HudsonmodelFreeStyleProject**](HudsonmodelFreeStyleProject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getJobConfig**
> String getJobConfig(name)



Retrieve job configuration

### Example 
```dart
import 'package:swagger/api.dart';

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
 **name** | **String**| Name of the job | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getJobLastBuild**
> HudsonmodelFreeStyleBuild getJobLastBuild(name)



Retrieve job's last build details

### Example 
```dart
import 'package:swagger/api.dart';

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
 **name** | **String**| Name of the job | 

### Return type

[**HudsonmodelFreeStyleBuild**](HudsonmodelFreeStyleBuild.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getJobProgressiveText**
> getJobProgressiveText(name, number, start)



Retrieve job's build progressive text output

### Example 
```dart
import 'package:swagger/api.dart';

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
 **name** | **String**| Name of the job | 
 **number** | **String**| Build number | 
 **start** | **String**| Starting point of progressive text output | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getQueue**
> HudsonmodelQueue getQueue()



Retrieve queue details

### Example 
```dart
import 'package:swagger/api.dart';

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

[**HudsonmodelQueue**](HudsonmodelQueue.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getQueueItem**
> HudsonmodelQueue getQueueItem(number)



Retrieve queued item details

### Example 
```dart
import 'package:swagger/api.dart';

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
 **number** | **String**| Queue number | 

### Return type

[**HudsonmodelQueue**](HudsonmodelQueue.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getView**
> HudsonmodelListView getView(name)



Retrieve view details

### Example 
```dart
import 'package:swagger/api.dart';

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
 **name** | **String**| Name of the view | 

### Return type

[**HudsonmodelListView**](HudsonmodelListView.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getViewConfig**
> String getViewConfig(name)



Retrieve view configuration

### Example 
```dart
import 'package:swagger/api.dart';

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
 **name** | **String**| Name of the view | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **headJenkins**
> headJenkins()



Retrieve Jenkins headers

### Example 
```dart
import 'package:swagger/api.dart';

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

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postCreateItem**
> postCreateItem(name, from, mode, body, jenkinsCrumb, contentType)



Create a new job using job configuration, or copied from an existing job

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new RemoteAccessApi();
var name = name_example; // String | Name of the new job
var from = from_example; // String | Existing job to copy from
var mode = mode_example; // String | Set to 'copy' for copying an existing job
var body = new String(); // String | Job configuration in config.xml format
var jenkinsCrumb = jenkinsCrumb_example; // String | CSRF protection token
var contentType = contentType_example; // String | Content type header application/xml

try { 
    api_instance.postCreateItem(name, from, mode, body, jenkinsCrumb, contentType);
} catch (e) {
    print("Exception when calling RemoteAccessApi->postCreateItem: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the new job | 
 **from** | **String**| Existing job to copy from | [optional] 
 **mode** | **String**| Set to &#39;copy&#39; for copying an existing job | [optional] 
 **body** | **String**| Job configuration in config.xml format | [optional] 
 **jenkinsCrumb** | **String**| CSRF protection token | [optional] 
 **contentType** | **String**| Content type header application/xml | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postCreateView**
> postCreateView(name, body, jenkinsCrumb, contentType)



Create a new view using view configuration

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new RemoteAccessApi();
var name = name_example; // String | Name of the new view
var body = new String(); // String | View configuration in config.xml format
var jenkinsCrumb = jenkinsCrumb_example; // String | CSRF protection token
var contentType = contentType_example; // String | Content type header application/xml

try { 
    api_instance.postCreateView(name, body, jenkinsCrumb, contentType);
} catch (e) {
    print("Exception when calling RemoteAccessApi->postCreateView: $e\n");
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

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postJobBuild**
> postJobBuild(name, json, token, jenkinsCrumb)



Build a job

### Example 
```dart
import 'package:swagger/api.dart';

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
 **name** | **String**| Name of the job | 
 **json** | **String**|  | 
 **token** | **String**|  | [optional] 
 **jenkinsCrumb** | **String**| CSRF protection token | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postJobConfig**
> postJobConfig(name, body, jenkinsCrumb)



Update job configuration

### Example 
```dart
import 'package:swagger/api.dart';

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
 **name** | **String**| Name of the job | 
 **body** | **String**| Job configuration in config.xml format | 
 **jenkinsCrumb** | **String**| CSRF protection token | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postJobDelete**
> postJobDelete(name, jenkinsCrumb)



Delete a job

### Example 
```dart
import 'package:swagger/api.dart';

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
 **name** | **String**| Name of the job | 
 **jenkinsCrumb** | **String**| CSRF protection token | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postJobDisable**
> postJobDisable(name, jenkinsCrumb)



Disable a job

### Example 
```dart
import 'package:swagger/api.dart';

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
 **name** | **String**| Name of the job | 
 **jenkinsCrumb** | **String**| CSRF protection token | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postJobEnable**
> postJobEnable(name, jenkinsCrumb)



Enable a job

### Example 
```dart
import 'package:swagger/api.dart';

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
 **name** | **String**| Name of the job | 
 **jenkinsCrumb** | **String**| CSRF protection token | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postJobLastBuildStop**
> postJobLastBuildStop(name, jenkinsCrumb)



Stop a job

### Example 
```dart
import 'package:swagger/api.dart';

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
 **name** | **String**| Name of the job | 
 **jenkinsCrumb** | **String**| CSRF protection token | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postViewConfig**
> postViewConfig(name, body, jenkinsCrumb)



Update view configuration

### Example 
```dart
import 'package:swagger/api.dart';

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
 **name** | **String**| Name of the view | 
 **body** | **String**| View configuration in config.xml format | 
 **jenkinsCrumb** | **String**| CSRF protection token | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


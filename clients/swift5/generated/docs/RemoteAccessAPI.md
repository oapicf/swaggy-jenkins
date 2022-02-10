# RemoteAccessAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getComputer**](RemoteAccessAPI.md#getcomputer) | **GET** /computer/api/json | 
[**getJenkins**](RemoteAccessAPI.md#getjenkins) | **GET** /api/json | 
[**getJob**](RemoteAccessAPI.md#getjob) | **GET** /job/{name}/api/json | 
[**getJobConfig**](RemoteAccessAPI.md#getjobconfig) | **GET** /job/{name}/config.xml | 
[**getJobLastBuild**](RemoteAccessAPI.md#getjoblastbuild) | **GET** /job/{name}/lastBuild/api/json | 
[**getJobProgressiveText**](RemoteAccessAPI.md#getjobprogressivetext) | **GET** /job/{name}/{number}/logText/progressiveText | 
[**getQueue**](RemoteAccessAPI.md#getqueue) | **GET** /queue/api/json | 
[**getQueueItem**](RemoteAccessAPI.md#getqueueitem) | **GET** /queue/item/{number}/api/json | 
[**getView**](RemoteAccessAPI.md#getview) | **GET** /view/{name}/api/json | 
[**getViewConfig**](RemoteAccessAPI.md#getviewconfig) | **GET** /view/{name}/config.xml | 
[**headJenkins**](RemoteAccessAPI.md#headjenkins) | **HEAD** /api/json | 
[**postCreateItem**](RemoteAccessAPI.md#postcreateitem) | **POST** /createItem | 
[**postCreateView**](RemoteAccessAPI.md#postcreateview) | **POST** /createView | 
[**postJobBuild**](RemoteAccessAPI.md#postjobbuild) | **POST** /job/{name}/build | 
[**postJobConfig**](RemoteAccessAPI.md#postjobconfig) | **POST** /job/{name}/config.xml | 
[**postJobDelete**](RemoteAccessAPI.md#postjobdelete) | **POST** /job/{name}/doDelete | 
[**postJobDisable**](RemoteAccessAPI.md#postjobdisable) | **POST** /job/{name}/disable | 
[**postJobEnable**](RemoteAccessAPI.md#postjobenable) | **POST** /job/{name}/enable | 
[**postJobLastBuildStop**](RemoteAccessAPI.md#postjoblastbuildstop) | **POST** /job/{name}/lastBuild/stop | 
[**postViewConfig**](RemoteAccessAPI.md#postviewconfig) | **POST** /view/{name}/config.xml | 


# **getComputer**
```swift
    open class func getComputer(depth: Int, completion: @escaping (_ data: ComputerSet?, _ error: Error?) -> Void)
```



Retrieve computer details

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let depth = 987 // Int | Recursion depth in response model

RemoteAccessAPI.getComputer(depth: depth) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **depth** | **Int** | Recursion depth in response model | 

### Return type

[**ComputerSet**](ComputerSet.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getJenkins**
```swift
    open class func getJenkins(completion: @escaping (_ data: Hudson?, _ error: Error?) -> Void)
```



Retrieve Jenkins details

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


RemoteAccessAPI.getJenkins() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
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

# **getJob**
```swift
    open class func getJob(name: String, completion: @escaping (_ data: FreeStyleProject?, _ error: Error?) -> Void)
```



Retrieve job details

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let name = "name_example" // String | Name of the job

RemoteAccessAPI.getJob(name: name) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String** | Name of the job | 

### Return type

[**FreeStyleProject**](FreeStyleProject.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getJobConfig**
```swift
    open class func getJobConfig(name: String, completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```



Retrieve job configuration

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let name = "name_example" // String | Name of the job

RemoteAccessAPI.getJobConfig(name: name) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String** | Name of the job | 

### Return type

**String**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getJobLastBuild**
```swift
    open class func getJobLastBuild(name: String, completion: @escaping (_ data: FreeStyleBuild?, _ error: Error?) -> Void)
```



Retrieve job's last build details

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let name = "name_example" // String | Name of the job

RemoteAccessAPI.getJobLastBuild(name: name) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String** | Name of the job | 

### Return type

[**FreeStyleBuild**](FreeStyleBuild.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getJobProgressiveText**
```swift
    open class func getJobProgressiveText(name: String, number: String, start: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



Retrieve job's build progressive text output

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let name = "name_example" // String | Name of the job
let number = "number_example" // String | Build number
let start = "start_example" // String | Starting point of progressive text output

RemoteAccessAPI.getJobProgressiveText(name: name, number: number, start: start) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String** | Name of the job | 
 **number** | **String** | Build number | 
 **start** | **String** | Starting point of progressive text output | 

### Return type

Void (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getQueue**
```swift
    open class func getQueue(completion: @escaping (_ data: Queue?, _ error: Error?) -> Void)
```



Retrieve queue details

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


RemoteAccessAPI.getQueue() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
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

# **getQueueItem**
```swift
    open class func getQueueItem(number: String, completion: @escaping (_ data: Queue?, _ error: Error?) -> Void)
```



Retrieve queued item details

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let number = "number_example" // String | Queue number

RemoteAccessAPI.getQueueItem(number: number) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **number** | **String** | Queue number | 

### Return type

[**Queue**](Queue.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getView**
```swift
    open class func getView(name: String, completion: @escaping (_ data: ListView?, _ error: Error?) -> Void)
```



Retrieve view details

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let name = "name_example" // String | Name of the view

RemoteAccessAPI.getView(name: name) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String** | Name of the view | 

### Return type

[**ListView**](ListView.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getViewConfig**
```swift
    open class func getViewConfig(name: String, completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```



Retrieve view configuration

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let name = "name_example" // String | Name of the view

RemoteAccessAPI.getViewConfig(name: name) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String** | Name of the view | 

### Return type

**String**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **headJenkins**
```swift
    open class func headJenkins(completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



Retrieve Jenkins headers

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


RemoteAccessAPI.headJenkins() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

Void (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postCreateItem**
```swift
    open class func postCreateItem(name: String, from: String? = nil, mode: String? = nil, jenkinsCrumb: String? = nil, contentType: String? = nil, body: String? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



Create a new job using job configuration, or copied from an existing job

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let name = "name_example" // String | Name of the new job
let from = "from_example" // String | Existing job to copy from (optional)
let mode = "mode_example" // String | Set to 'copy' for copying an existing job (optional)
let jenkinsCrumb = "jenkinsCrumb_example" // String | CSRF protection token (optional)
let contentType = "contentType_example" // String | Content type header application/xml (optional)
let body = "body_example" // String | Job configuration in config.xml format (optional)

RemoteAccessAPI.postCreateItem(name: name, from: from, mode: mode, jenkinsCrumb: jenkinsCrumb, contentType: contentType, body: body) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String** | Name of the new job | 
 **from** | **String** | Existing job to copy from | [optional] 
 **mode** | **String** | Set to &#39;copy&#39; for copying an existing job | [optional] 
 **jenkinsCrumb** | **String** | CSRF protection token | [optional] 
 **contentType** | **String** | Content type header application/xml | [optional] 
 **body** | **String** | Job configuration in config.xml format | [optional] 

### Return type

Void (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postCreateView**
```swift
    open class func postCreateView(name: String, jenkinsCrumb: String? = nil, contentType: String? = nil, body: String? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



Create a new view using view configuration

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let name = "name_example" // String | Name of the new view
let jenkinsCrumb = "jenkinsCrumb_example" // String | CSRF protection token (optional)
let contentType = "contentType_example" // String | Content type header application/xml (optional)
let body = "body_example" // String | View configuration in config.xml format (optional)

RemoteAccessAPI.postCreateView(name: name, jenkinsCrumb: jenkinsCrumb, contentType: contentType, body: body) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String** | Name of the new view | 
 **jenkinsCrumb** | **String** | CSRF protection token | [optional] 
 **contentType** | **String** | Content type header application/xml | [optional] 
 **body** | **String** | View configuration in config.xml format | [optional] 

### Return type

Void (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postJobBuild**
```swift
    open class func postJobBuild(name: String, json: String, token: String? = nil, jenkinsCrumb: String? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



Build a job

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let name = "name_example" // String | Name of the job
let json = "json_example" // String | 
let token = "token_example" // String |  (optional)
let jenkinsCrumb = "jenkinsCrumb_example" // String | CSRF protection token (optional)

RemoteAccessAPI.postJobBuild(name: name, json: json, token: token, jenkinsCrumb: jenkinsCrumb) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String** | Name of the job | 
 **json** | **String** |  | 
 **token** | **String** |  | [optional] 
 **jenkinsCrumb** | **String** | CSRF protection token | [optional] 

### Return type

Void (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postJobConfig**
```swift
    open class func postJobConfig(name: String, body: String, jenkinsCrumb: String? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



Update job configuration

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let name = "name_example" // String | Name of the job
let body = "body_example" // String | Job configuration in config.xml format
let jenkinsCrumb = "jenkinsCrumb_example" // String | CSRF protection token (optional)

RemoteAccessAPI.postJobConfig(name: name, body: body, jenkinsCrumb: jenkinsCrumb) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String** | Name of the job | 
 **body** | **String** | Job configuration in config.xml format | 
 **jenkinsCrumb** | **String** | CSRF protection token | [optional] 

### Return type

Void (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postJobDelete**
```swift
    open class func postJobDelete(name: String, jenkinsCrumb: String? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



Delete a job

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let name = "name_example" // String | Name of the job
let jenkinsCrumb = "jenkinsCrumb_example" // String | CSRF protection token (optional)

RemoteAccessAPI.postJobDelete(name: name, jenkinsCrumb: jenkinsCrumb) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String** | Name of the job | 
 **jenkinsCrumb** | **String** | CSRF protection token | [optional] 

### Return type

Void (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postJobDisable**
```swift
    open class func postJobDisable(name: String, jenkinsCrumb: String? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



Disable a job

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let name = "name_example" // String | Name of the job
let jenkinsCrumb = "jenkinsCrumb_example" // String | CSRF protection token (optional)

RemoteAccessAPI.postJobDisable(name: name, jenkinsCrumb: jenkinsCrumb) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String** | Name of the job | 
 **jenkinsCrumb** | **String** | CSRF protection token | [optional] 

### Return type

Void (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postJobEnable**
```swift
    open class func postJobEnable(name: String, jenkinsCrumb: String? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



Enable a job

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let name = "name_example" // String | Name of the job
let jenkinsCrumb = "jenkinsCrumb_example" // String | CSRF protection token (optional)

RemoteAccessAPI.postJobEnable(name: name, jenkinsCrumb: jenkinsCrumb) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String** | Name of the job | 
 **jenkinsCrumb** | **String** | CSRF protection token | [optional] 

### Return type

Void (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postJobLastBuildStop**
```swift
    open class func postJobLastBuildStop(name: String, jenkinsCrumb: String? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



Stop a job

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let name = "name_example" // String | Name of the job
let jenkinsCrumb = "jenkinsCrumb_example" // String | CSRF protection token (optional)

RemoteAccessAPI.postJobLastBuildStop(name: name, jenkinsCrumb: jenkinsCrumb) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String** | Name of the job | 
 **jenkinsCrumb** | **String** | CSRF protection token | [optional] 

### Return type

Void (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postViewConfig**
```swift
    open class func postViewConfig(name: String, body: String, jenkinsCrumb: String? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



Update view configuration

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let name = "name_example" // String | Name of the view
let body = "body_example" // String | View configuration in config.xml format
let jenkinsCrumb = "jenkinsCrumb_example" // String | CSRF protection token (optional)

RemoteAccessAPI.postViewConfig(name: name, body: body, jenkinsCrumb: jenkinsCrumb) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String** | Name of the view | 
 **body** | **String** | View configuration in config.xml format | 
 **jenkinsCrumb** | **String** | CSRF protection token | [optional] 

### Return type

Void (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


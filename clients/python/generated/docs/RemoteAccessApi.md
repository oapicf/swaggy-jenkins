# swaggyjenkins.RemoteAccessApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_computer**](RemoteAccessApi.md#get_computer) | **GET** /computer/api/json | 
[**get_jenkins**](RemoteAccessApi.md#get_jenkins) | **GET** /api/json | 
[**get_job**](RemoteAccessApi.md#get_job) | **GET** /job/{name}/api/json | 
[**get_job_config**](RemoteAccessApi.md#get_job_config) | **GET** /job/{name}/config.xml | 
[**get_job_last_build**](RemoteAccessApi.md#get_job_last_build) | **GET** /job/{name}/lastBuild/api/json | 
[**get_job_progressive_text**](RemoteAccessApi.md#get_job_progressive_text) | **GET** /job/{name}/{number}/logText/progressiveText | 
[**get_queue**](RemoteAccessApi.md#get_queue) | **GET** /queue/api/json | 
[**get_queue_item**](RemoteAccessApi.md#get_queue_item) | **GET** /queue/item/{number}/api/json | 
[**get_view**](RemoteAccessApi.md#get_view) | **GET** /view/{name}/api/json | 
[**get_view_config**](RemoteAccessApi.md#get_view_config) | **GET** /view/{name}/config.xml | 
[**head_jenkins**](RemoteAccessApi.md#head_jenkins) | **HEAD** /api/json | 
[**post_create_item**](RemoteAccessApi.md#post_create_item) | **POST** /createItem | 
[**post_create_view**](RemoteAccessApi.md#post_create_view) | **POST** /createView | 
[**post_job_build**](RemoteAccessApi.md#post_job_build) | **POST** /job/{name}/build | 
[**post_job_config**](RemoteAccessApi.md#post_job_config) | **POST** /job/{name}/config.xml | 
[**post_job_delete**](RemoteAccessApi.md#post_job_delete) | **POST** /job/{name}/doDelete | 
[**post_job_disable**](RemoteAccessApi.md#post_job_disable) | **POST** /job/{name}/disable | 
[**post_job_enable**](RemoteAccessApi.md#post_job_enable) | **POST** /job/{name}/enable | 
[**post_job_last_build_stop**](RemoteAccessApi.md#post_job_last_build_stop) | **POST** /job/{name}/lastBuild/stop | 
[**post_view_config**](RemoteAccessApi.md#post_view_config) | **POST** /view/{name}/config.xml | 


# **get_computer**
> ComputerSet get_computer(depth)



Retrieve computer details

### Example

* Basic Authentication (jenkins_auth):

```python
import swaggyjenkins
from swaggyjenkins.models.computer_set import ComputerSet
from swaggyjenkins.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = swaggyjenkins.Configuration(
    host = "http://localhost"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure HTTP basic authorization: jenkins_auth
configuration = swaggyjenkins.Configuration(
    username = os.environ["USERNAME"],
    password = os.environ["PASSWORD"]
)

# Enter a context with an instance of the API client
with swaggyjenkins.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = swaggyjenkins.RemoteAccessApi(api_client)
    depth = 56 # int | Recursion depth in response model

    try:
        api_response = api_instance.get_computer(depth)
        print("The response of RemoteAccessApi->get_computer:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling RemoteAccessApi->get_computer: %s\n" % e)
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

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved computer details |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_jenkins**
> Hudson get_jenkins()



Retrieve Jenkins details

### Example

* Basic Authentication (jenkins_auth):

```python
import swaggyjenkins
from swaggyjenkins.models.hudson import Hudson
from swaggyjenkins.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = swaggyjenkins.Configuration(
    host = "http://localhost"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure HTTP basic authorization: jenkins_auth
configuration = swaggyjenkins.Configuration(
    username = os.environ["USERNAME"],
    password = os.environ["PASSWORD"]
)

# Enter a context with an instance of the API client
with swaggyjenkins.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = swaggyjenkins.RemoteAccessApi(api_client)

    try:
        api_response = api_instance.get_jenkins()
        print("The response of RemoteAccessApi->get_jenkins:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling RemoteAccessApi->get_jenkins: %s\n" % e)
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
**200** | Successfully retrieved Jenkins details |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_job**
> FreeStyleProject get_job(name)



Retrieve job details

### Example

* Basic Authentication (jenkins_auth):

```python
import swaggyjenkins
from swaggyjenkins.models.free_style_project import FreeStyleProject
from swaggyjenkins.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = swaggyjenkins.Configuration(
    host = "http://localhost"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure HTTP basic authorization: jenkins_auth
configuration = swaggyjenkins.Configuration(
    username = os.environ["USERNAME"],
    password = os.environ["PASSWORD"]
)

# Enter a context with an instance of the API client
with swaggyjenkins.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = swaggyjenkins.RemoteAccessApi(api_client)
    name = 'name_example' # str | Name of the job

    try:
        api_response = api_instance.get_job(name)
        print("The response of RemoteAccessApi->get_job:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling RemoteAccessApi->get_job: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **str**| Name of the job | 

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
**200** | Successfully retrieved job details |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |
**404** | Job cannot be found on Jenkins instance |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_job_config**
> str get_job_config(name)



Retrieve job configuration

### Example

* Basic Authentication (jenkins_auth):

```python
import swaggyjenkins
from swaggyjenkins.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = swaggyjenkins.Configuration(
    host = "http://localhost"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure HTTP basic authorization: jenkins_auth
configuration = swaggyjenkins.Configuration(
    username = os.environ["USERNAME"],
    password = os.environ["PASSWORD"]
)

# Enter a context with an instance of the API client
with swaggyjenkins.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = swaggyjenkins.RemoteAccessApi(api_client)
    name = 'name_example' # str | Name of the job

    try:
        api_response = api_instance.get_job_config(name)
        print("The response of RemoteAccessApi->get_job_config:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling RemoteAccessApi->get_job_config: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **str**| Name of the job | 

### Return type

**str**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/xml

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved job configuration in config.xml format |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |
**404** | Job cannot be found on Jenkins instance |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_job_last_build**
> FreeStyleBuild get_job_last_build(name)



Retrieve job's last build details

### Example

* Basic Authentication (jenkins_auth):

```python
import swaggyjenkins
from swaggyjenkins.models.free_style_build import FreeStyleBuild
from swaggyjenkins.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = swaggyjenkins.Configuration(
    host = "http://localhost"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure HTTP basic authorization: jenkins_auth
configuration = swaggyjenkins.Configuration(
    username = os.environ["USERNAME"],
    password = os.environ["PASSWORD"]
)

# Enter a context with an instance of the API client
with swaggyjenkins.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = swaggyjenkins.RemoteAccessApi(api_client)
    name = 'name_example' # str | Name of the job

    try:
        api_response = api_instance.get_job_last_build(name)
        print("The response of RemoteAccessApi->get_job_last_build:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling RemoteAccessApi->get_job_last_build: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **str**| Name of the job | 

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
**200** | Successfully retrieved job&#39;s last build details |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |
**404** | Job cannot be found on Jenkins instance |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_job_progressive_text**
> get_job_progressive_text(name, number, start)



Retrieve job's build progressive text output

### Example

* Basic Authentication (jenkins_auth):

```python
import swaggyjenkins
from swaggyjenkins.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = swaggyjenkins.Configuration(
    host = "http://localhost"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure HTTP basic authorization: jenkins_auth
configuration = swaggyjenkins.Configuration(
    username = os.environ["USERNAME"],
    password = os.environ["PASSWORD"]
)

# Enter a context with an instance of the API client
with swaggyjenkins.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = swaggyjenkins.RemoteAccessApi(api_client)
    name = 'name_example' # str | Name of the job
    number = 'number_example' # str | Build number
    start = 'start_example' # str | Starting point of progressive text output

    try:
        api_instance.get_job_progressive_text(name, number, start)
    except Exception as e:
        print("Exception when calling RemoteAccessApi->get_job_progressive_text: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **str**| Name of the job | 
 **number** | **str**| Build number | 
 **start** | **str**| Starting point of progressive text output | 

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
**200** | Successfully retrieved job&#39;s build progressive text output |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |
**404** | Job cannot be found on Jenkins instance |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_queue**
> Queue get_queue()



Retrieve queue details

### Example

* Basic Authentication (jenkins_auth):

```python
import swaggyjenkins
from swaggyjenkins.models.queue import Queue
from swaggyjenkins.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = swaggyjenkins.Configuration(
    host = "http://localhost"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure HTTP basic authorization: jenkins_auth
configuration = swaggyjenkins.Configuration(
    username = os.environ["USERNAME"],
    password = os.environ["PASSWORD"]
)

# Enter a context with an instance of the API client
with swaggyjenkins.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = swaggyjenkins.RemoteAccessApi(api_client)

    try:
        api_response = api_instance.get_queue()
        print("The response of RemoteAccessApi->get_queue:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling RemoteAccessApi->get_queue: %s\n" % e)
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
**200** | Successfully retrieved queue details |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_queue_item**
> Queue get_queue_item(number)



Retrieve queued item details

### Example

* Basic Authentication (jenkins_auth):

```python
import swaggyjenkins
from swaggyjenkins.models.queue import Queue
from swaggyjenkins.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = swaggyjenkins.Configuration(
    host = "http://localhost"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure HTTP basic authorization: jenkins_auth
configuration = swaggyjenkins.Configuration(
    username = os.environ["USERNAME"],
    password = os.environ["PASSWORD"]
)

# Enter a context with an instance of the API client
with swaggyjenkins.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = swaggyjenkins.RemoteAccessApi(api_client)
    number = 'number_example' # str | Queue number

    try:
        api_response = api_instance.get_queue_item(number)
        print("The response of RemoteAccessApi->get_queue_item:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling RemoteAccessApi->get_queue_item: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **number** | **str**| Queue number | 

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
**200** | Successfully retrieved queued item details |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_view**
> ListView get_view(name)



Retrieve view details

### Example

* Basic Authentication (jenkins_auth):

```python
import swaggyjenkins
from swaggyjenkins.models.list_view import ListView
from swaggyjenkins.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = swaggyjenkins.Configuration(
    host = "http://localhost"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure HTTP basic authorization: jenkins_auth
configuration = swaggyjenkins.Configuration(
    username = os.environ["USERNAME"],
    password = os.environ["PASSWORD"]
)

# Enter a context with an instance of the API client
with swaggyjenkins.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = swaggyjenkins.RemoteAccessApi(api_client)
    name = 'name_example' # str | Name of the view

    try:
        api_response = api_instance.get_view(name)
        print("The response of RemoteAccessApi->get_view:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling RemoteAccessApi->get_view: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **str**| Name of the view | 

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
**200** | Successfully retrieved view details |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |
**404** | View cannot be found on Jenkins instance |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_view_config**
> str get_view_config(name)



Retrieve view configuration

### Example

* Basic Authentication (jenkins_auth):

```python
import swaggyjenkins
from swaggyjenkins.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = swaggyjenkins.Configuration(
    host = "http://localhost"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure HTTP basic authorization: jenkins_auth
configuration = swaggyjenkins.Configuration(
    username = os.environ["USERNAME"],
    password = os.environ["PASSWORD"]
)

# Enter a context with an instance of the API client
with swaggyjenkins.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = swaggyjenkins.RemoteAccessApi(api_client)
    name = 'name_example' # str | Name of the view

    try:
        api_response = api_instance.get_view_config(name)
        print("The response of RemoteAccessApi->get_view_config:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling RemoteAccessApi->get_view_config: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **str**| Name of the view | 

### Return type

**str**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/xml

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved view configuration in config.xml format |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |
**404** | View cannot be found on Jenkins instance |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **head_jenkins**
> head_jenkins()



Retrieve Jenkins headers

### Example

* Basic Authentication (jenkins_auth):

```python
import swaggyjenkins
from swaggyjenkins.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = swaggyjenkins.Configuration(
    host = "http://localhost"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure HTTP basic authorization: jenkins_auth
configuration = swaggyjenkins.Configuration(
    username = os.environ["USERNAME"],
    password = os.environ["PASSWORD"]
)

# Enter a context with an instance of the API client
with swaggyjenkins.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = swaggyjenkins.RemoteAccessApi(api_client)

    try:
        api_instance.head_jenkins()
    except Exception as e:
        print("Exception when calling RemoteAccessApi->head_jenkins: %s\n" % e)
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
**200** | Successfully retrieved Jenkins headers |  * x-jenkins - Jenkins version number <br>  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_create_item**
> post_create_item(name, var_from=var_from, mode=mode, jenkins_crumb=jenkins_crumb, content_type=content_type, body=body)



Create a new job using job configuration, or copied from an existing job

### Example

* Basic Authentication (jenkins_auth):

```python
import swaggyjenkins
from swaggyjenkins.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = swaggyjenkins.Configuration(
    host = "http://localhost"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure HTTP basic authorization: jenkins_auth
configuration = swaggyjenkins.Configuration(
    username = os.environ["USERNAME"],
    password = os.environ["PASSWORD"]
)

# Enter a context with an instance of the API client
with swaggyjenkins.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = swaggyjenkins.RemoteAccessApi(api_client)
    name = 'name_example' # str | Name of the new job
    var_from = 'var_from_example' # str | Existing job to copy from (optional)
    mode = 'mode_example' # str | Set to 'copy' for copying an existing job (optional)
    jenkins_crumb = 'jenkins_crumb_example' # str | CSRF protection token (optional)
    content_type = 'content_type_example' # str | Content type header application/xml (optional)
    body = 'body_example' # str | Job configuration in config.xml format (optional)

    try:
        api_instance.post_create_item(name, var_from=var_from, mode=mode, jenkins_crumb=jenkins_crumb, content_type=content_type, body=body)
    except Exception as e:
        print("Exception when calling RemoteAccessApi->post_create_item: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **str**| Name of the new job | 
 **var_from** | **str**| Existing job to copy from | [optional] 
 **mode** | **str**| Set to &#39;copy&#39; for copying an existing job | [optional] 
 **jenkins_crumb** | **str**| CSRF protection token | [optional] 
 **content_type** | **str**| Content type header application/xml | [optional] 
 **body** | **str**| Job configuration in config.xml format | [optional] 

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
**200** | Successfully created a new job |  -  |
**400** | An error has occurred - error message is embedded inside the HTML response |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_create_view**
> post_create_view(name, jenkins_crumb=jenkins_crumb, content_type=content_type, body=body)



Create a new view using view configuration

### Example

* Basic Authentication (jenkins_auth):

```python
import swaggyjenkins
from swaggyjenkins.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = swaggyjenkins.Configuration(
    host = "http://localhost"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure HTTP basic authorization: jenkins_auth
configuration = swaggyjenkins.Configuration(
    username = os.environ["USERNAME"],
    password = os.environ["PASSWORD"]
)

# Enter a context with an instance of the API client
with swaggyjenkins.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = swaggyjenkins.RemoteAccessApi(api_client)
    name = 'name_example' # str | Name of the new view
    jenkins_crumb = 'jenkins_crumb_example' # str | CSRF protection token (optional)
    content_type = 'content_type_example' # str | Content type header application/xml (optional)
    body = 'body_example' # str | View configuration in config.xml format (optional)

    try:
        api_instance.post_create_view(name, jenkins_crumb=jenkins_crumb, content_type=content_type, body=body)
    except Exception as e:
        print("Exception when calling RemoteAccessApi->post_create_view: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **str**| Name of the new view | 
 **jenkins_crumb** | **str**| CSRF protection token | [optional] 
 **content_type** | **str**| Content type header application/xml | [optional] 
 **body** | **str**| View configuration in config.xml format | [optional] 

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
**200** | Successfully created the view |  -  |
**400** | An error has occurred - error message is embedded inside the HTML response |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_job_build**
> post_job_build(name, var_json, token=token, jenkins_crumb=jenkins_crumb)



Build a job

### Example

* Basic Authentication (jenkins_auth):

```python
import swaggyjenkins
from swaggyjenkins.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = swaggyjenkins.Configuration(
    host = "http://localhost"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure HTTP basic authorization: jenkins_auth
configuration = swaggyjenkins.Configuration(
    username = os.environ["USERNAME"],
    password = os.environ["PASSWORD"]
)

# Enter a context with an instance of the API client
with swaggyjenkins.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = swaggyjenkins.RemoteAccessApi(api_client)
    name = 'name_example' # str | Name of the job
    var_json = 'var_json_example' # str | 
    token = 'token_example' # str |  (optional)
    jenkins_crumb = 'jenkins_crumb_example' # str | CSRF protection token (optional)

    try:
        api_instance.post_job_build(name, var_json, token=token, jenkins_crumb=jenkins_crumb)
    except Exception as e:
        print("Exception when calling RemoteAccessApi->post_job_build: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **str**| Name of the job | 
 **var_json** | **str**|  | 
 **token** | **str**|  | [optional] 
 **jenkins_crumb** | **str**| CSRF protection token | [optional] 

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
**200** | Successfully built the job (backward compatibility for older versions of Jenkins) |  -  |
**201** | Successfully built the job |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |
**404** | Job cannot be found on Jenkins instance |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_job_config**
> post_job_config(name, body, jenkins_crumb=jenkins_crumb)



Update job configuration

### Example

* Basic Authentication (jenkins_auth):

```python
import swaggyjenkins
from swaggyjenkins.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = swaggyjenkins.Configuration(
    host = "http://localhost"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure HTTP basic authorization: jenkins_auth
configuration = swaggyjenkins.Configuration(
    username = os.environ["USERNAME"],
    password = os.environ["PASSWORD"]
)

# Enter a context with an instance of the API client
with swaggyjenkins.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = swaggyjenkins.RemoteAccessApi(api_client)
    name = 'name_example' # str | Name of the job
    body = 'body_example' # str | Job configuration in config.xml format
    jenkins_crumb = 'jenkins_crumb_example' # str | CSRF protection token (optional)

    try:
        api_instance.post_job_config(name, body, jenkins_crumb=jenkins_crumb)
    except Exception as e:
        print("Exception when calling RemoteAccessApi->post_job_config: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **str**| Name of the job | 
 **body** | **str**| Job configuration in config.xml format | 
 **jenkins_crumb** | **str**| CSRF protection token | [optional] 

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
**200** | Successfully retrieved job configuration in config.xml format |  -  |
**400** | An error has occurred - error message is embedded inside the HTML response |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |
**404** | Job cannot be found on Jenkins instance |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_job_delete**
> post_job_delete(name, jenkins_crumb=jenkins_crumb)



Delete a job

### Example

* Basic Authentication (jenkins_auth):

```python
import swaggyjenkins
from swaggyjenkins.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = swaggyjenkins.Configuration(
    host = "http://localhost"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure HTTP basic authorization: jenkins_auth
configuration = swaggyjenkins.Configuration(
    username = os.environ["USERNAME"],
    password = os.environ["PASSWORD"]
)

# Enter a context with an instance of the API client
with swaggyjenkins.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = swaggyjenkins.RemoteAccessApi(api_client)
    name = 'name_example' # str | Name of the job
    jenkins_crumb = 'jenkins_crumb_example' # str | CSRF protection token (optional)

    try:
        api_instance.post_job_delete(name, jenkins_crumb=jenkins_crumb)
    except Exception as e:
        print("Exception when calling RemoteAccessApi->post_job_delete: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **str**| Name of the job | 
 **jenkins_crumb** | **str**| CSRF protection token | [optional] 

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
**200** | Successfully deleted the job |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |
**404** | Job cannot be found on Jenkins instance |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_job_disable**
> post_job_disable(name, jenkins_crumb=jenkins_crumb)



Disable a job

### Example

* Basic Authentication (jenkins_auth):

```python
import swaggyjenkins
from swaggyjenkins.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = swaggyjenkins.Configuration(
    host = "http://localhost"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure HTTP basic authorization: jenkins_auth
configuration = swaggyjenkins.Configuration(
    username = os.environ["USERNAME"],
    password = os.environ["PASSWORD"]
)

# Enter a context with an instance of the API client
with swaggyjenkins.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = swaggyjenkins.RemoteAccessApi(api_client)
    name = 'name_example' # str | Name of the job
    jenkins_crumb = 'jenkins_crumb_example' # str | CSRF protection token (optional)

    try:
        api_instance.post_job_disable(name, jenkins_crumb=jenkins_crumb)
    except Exception as e:
        print("Exception when calling RemoteAccessApi->post_job_disable: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **str**| Name of the job | 
 **jenkins_crumb** | **str**| CSRF protection token | [optional] 

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
**200** | Successfully disabled the job |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |
**404** | Job cannot be found on Jenkins instance |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_job_enable**
> post_job_enable(name, jenkins_crumb=jenkins_crumb)



Enable a job

### Example

* Basic Authentication (jenkins_auth):

```python
import swaggyjenkins
from swaggyjenkins.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = swaggyjenkins.Configuration(
    host = "http://localhost"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure HTTP basic authorization: jenkins_auth
configuration = swaggyjenkins.Configuration(
    username = os.environ["USERNAME"],
    password = os.environ["PASSWORD"]
)

# Enter a context with an instance of the API client
with swaggyjenkins.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = swaggyjenkins.RemoteAccessApi(api_client)
    name = 'name_example' # str | Name of the job
    jenkins_crumb = 'jenkins_crumb_example' # str | CSRF protection token (optional)

    try:
        api_instance.post_job_enable(name, jenkins_crumb=jenkins_crumb)
    except Exception as e:
        print("Exception when calling RemoteAccessApi->post_job_enable: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **str**| Name of the job | 
 **jenkins_crumb** | **str**| CSRF protection token | [optional] 

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
**200** | Successfully enabled the job |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |
**404** | Job cannot be found on Jenkins instance |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_job_last_build_stop**
> post_job_last_build_stop(name, jenkins_crumb=jenkins_crumb)



Stop a job

### Example

* Basic Authentication (jenkins_auth):

```python
import swaggyjenkins
from swaggyjenkins.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = swaggyjenkins.Configuration(
    host = "http://localhost"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure HTTP basic authorization: jenkins_auth
configuration = swaggyjenkins.Configuration(
    username = os.environ["USERNAME"],
    password = os.environ["PASSWORD"]
)

# Enter a context with an instance of the API client
with swaggyjenkins.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = swaggyjenkins.RemoteAccessApi(api_client)
    name = 'name_example' # str | Name of the job
    jenkins_crumb = 'jenkins_crumb_example' # str | CSRF protection token (optional)

    try:
        api_instance.post_job_last_build_stop(name, jenkins_crumb=jenkins_crumb)
    except Exception as e:
        print("Exception when calling RemoteAccessApi->post_job_last_build_stop: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **str**| Name of the job | 
 **jenkins_crumb** | **str**| CSRF protection token | [optional] 

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
**200** | Successfully stopped the job |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |
**404** | Job cannot be found on Jenkins instance |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_view_config**
> post_view_config(name, body, jenkins_crumb=jenkins_crumb)



Update view configuration

### Example

* Basic Authentication (jenkins_auth):

```python
import swaggyjenkins
from swaggyjenkins.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = swaggyjenkins.Configuration(
    host = "http://localhost"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure HTTP basic authorization: jenkins_auth
configuration = swaggyjenkins.Configuration(
    username = os.environ["USERNAME"],
    password = os.environ["PASSWORD"]
)

# Enter a context with an instance of the API client
with swaggyjenkins.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = swaggyjenkins.RemoteAccessApi(api_client)
    name = 'name_example' # str | Name of the view
    body = 'body_example' # str | View configuration in config.xml format
    jenkins_crumb = 'jenkins_crumb_example' # str | CSRF protection token (optional)

    try:
        api_instance.post_view_config(name, body, jenkins_crumb=jenkins_crumb)
    except Exception as e:
        print("Exception when calling RemoteAccessApi->post_view_config: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **str**| Name of the view | 
 **body** | **str**| View configuration in config.xml format | 
 **jenkins_crumb** | **str**| CSRF protection token | [optional] 

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
**200** | Successfully updated view configuration |  -  |
**400** | An error has occurred - error message is embedded inside the HTML response |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |
**404** | View cannot be found on Jenkins instance |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


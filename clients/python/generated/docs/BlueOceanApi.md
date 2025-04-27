# swaggyjenkins.BlueOceanApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_pipeline_queue_item**](BlueOceanApi.md#delete_pipeline_queue_item) | **DELETE** /blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue} | 
[**get_authenticated_user**](BlueOceanApi.md#get_authenticated_user) | **GET** /blue/rest/organizations/{organization}/user/ | 
[**get_classes**](BlueOceanApi.md#get_classes) | **GET** /blue/rest/classes/{class} | 
[**get_json_web_key**](BlueOceanApi.md#get_json_web_key) | **GET** /jwt-auth/jwks/{key} | 
[**get_json_web_token**](BlueOceanApi.md#get_json_web_token) | **GET** /jwt-auth/token | 
[**get_organisation**](BlueOceanApi.md#get_organisation) | **GET** /blue/rest/organizations/{organization} | 
[**get_organisations**](BlueOceanApi.md#get_organisations) | **GET** /blue/rest/organizations/ | 
[**get_pipeline**](BlueOceanApi.md#get_pipeline) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline} | 
[**get_pipeline_activities**](BlueOceanApi.md#get_pipeline_activities) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/activities | 
[**get_pipeline_branch**](BlueOceanApi.md#get_pipeline_branch) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/ | 
[**get_pipeline_branch_run**](BlueOceanApi.md#get_pipeline_branch_run) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run} | 
[**get_pipeline_branches**](BlueOceanApi.md#get_pipeline_branches) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches | 
[**get_pipeline_folder**](BlueOceanApi.md#get_pipeline_folder) | **GET** /blue/rest/organizations/{organization}/pipelines/{folder}/ | 
[**get_pipeline_folder_pipeline**](BlueOceanApi.md#get_pipeline_folder_pipeline) | **GET** /blue/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline} | 
[**get_pipeline_queue**](BlueOceanApi.md#get_pipeline_queue) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/queue | 
[**get_pipeline_run**](BlueOceanApi.md#get_pipeline_run) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run} | 
[**get_pipeline_run_log**](BlueOceanApi.md#get_pipeline_run_log) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log | 
[**get_pipeline_run_node**](BlueOceanApi.md#get_pipeline_run_node) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node} | 
[**get_pipeline_run_node_step**](BlueOceanApi.md#get_pipeline_run_node_step) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step} | 
[**get_pipeline_run_node_step_log**](BlueOceanApi.md#get_pipeline_run_node_step_log) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log | 
[**get_pipeline_run_node_steps**](BlueOceanApi.md#get_pipeline_run_node_steps) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps | 
[**get_pipeline_run_nodes**](BlueOceanApi.md#get_pipeline_run_nodes) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes | 
[**get_pipeline_runs**](BlueOceanApi.md#get_pipeline_runs) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs | 
[**get_pipelines**](BlueOceanApi.md#get_pipelines) | **GET** /blue/rest/organizations/{organization}/pipelines/ | 
[**get_scm**](BlueOceanApi.md#get_scm) | **GET** /blue/rest/organizations/{organization}/scm/{scm} | 
[**get_scm_organisation_repositories**](BlueOceanApi.md#get_scm_organisation_repositories) | **GET** /blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories | 
[**get_scm_organisation_repository**](BlueOceanApi.md#get_scm_organisation_repository) | **GET** /blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository} | 
[**get_scm_organisations**](BlueOceanApi.md#get_scm_organisations) | **GET** /blue/rest/organizations/{organization}/scm/{scm}/organizations | 
[**get_user**](BlueOceanApi.md#get_user) | **GET** /blue/rest/organizations/{organization}/users/{user} | 
[**get_user_favorites**](BlueOceanApi.md#get_user_favorites) | **GET** /blue/rest/users/{user}/favorites | 
[**get_users**](BlueOceanApi.md#get_users) | **GET** /blue/rest/organizations/{organization}/users/ | 
[**post_pipeline_run**](BlueOceanApi.md#post_pipeline_run) | **POST** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay | 
[**post_pipeline_runs**](BlueOceanApi.md#post_pipeline_runs) | **POST** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs | 
[**put_pipeline_favorite**](BlueOceanApi.md#put_pipeline_favorite) | **PUT** /blue/rest/organizations/{organization}/pipelines/{pipeline}/favorite | 
[**put_pipeline_run**](BlueOceanApi.md#put_pipeline_run) | **PUT** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop | 
[**search**](BlueOceanApi.md#search) | **GET** /blue/rest/search/ | 
[**search_classes**](BlueOceanApi.md#search_classes) | **GET** /blue/rest/classes/ | 


# **delete_pipeline_queue_item**
> delete_pipeline_queue_item(organization, pipeline, queue)

Delete queue item from an organization pipeline queue

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
    api_instance = swaggyjenkins.BlueOceanApi(api_client)
    organization = 'organization_example' # str | Name of the organization
    pipeline = 'pipeline_example' # str | Name of the pipeline
    queue = 'queue_example' # str | Name of the queue item

    try:
        api_instance.delete_pipeline_queue_item(organization, pipeline, queue)
    except Exception as e:
        print("Exception when calling BlueOceanApi->delete_pipeline_queue_item: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **str**| Name of the organization | 
 **pipeline** | **str**| Name of the pipeline | 
 **queue** | **str**| Name of the queue item | 

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
**200** | Successfully deleted queue item |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_authenticated_user**
> User get_authenticated_user(organization)

Retrieve authenticated user details for an organization

### Example

* Basic Authentication (jenkins_auth):

```python
import swaggyjenkins
from swaggyjenkins.models.user import User
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
    api_instance = swaggyjenkins.BlueOceanApi(api_client)
    organization = 'organization_example' # str | Name of the organization

    try:
        api_response = api_instance.get_authenticated_user(organization)
        print("The response of BlueOceanApi->get_authenticated_user:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling BlueOceanApi->get_authenticated_user: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **str**| Name of the organization | 

### Return type

[**User**](User.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved authenticated user details |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_classes**
> str get_classes(var_class)

Get a list of class names supported by a given class

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
    api_instance = swaggyjenkins.BlueOceanApi(api_client)
    var_class = 'var_class_example' # str | Name of the class

    try:
        api_response = api_instance.get_classes(var_class)
        print("The response of BlueOceanApi->get_classes:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling BlueOceanApi->get_classes: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **var_class** | **str**| Name of the class | 

### Return type

**str**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved class names |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_json_web_key**
> str get_json_web_key(key)

Retrieve JSON Web Key

### Example


```python
import swaggyjenkins
from swaggyjenkins.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = swaggyjenkins.Configuration(
    host = "http://localhost"
)


# Enter a context with an instance of the API client
with swaggyjenkins.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = swaggyjenkins.BlueOceanApi(api_client)
    key = 56 # int | Key ID received as part of JWT header field kid

    try:
        api_response = api_instance.get_json_web_key(key)
        print("The response of BlueOceanApi->get_json_web_key:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling BlueOceanApi->get_json_web_key: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **int**| Key ID received as part of JWT header field kid | 

### Return type

**str**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved JWT token |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_json_web_token**
> str get_json_web_token(expiry_time_in_mins=expiry_time_in_mins, max_expiry_time_in_mins=max_expiry_time_in_mins)

Retrieve JSON Web Token

### Example


```python
import swaggyjenkins
from swaggyjenkins.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = swaggyjenkins.Configuration(
    host = "http://localhost"
)


# Enter a context with an instance of the API client
with swaggyjenkins.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = swaggyjenkins.BlueOceanApi(api_client)
    expiry_time_in_mins = 56 # int | Token expiry time in minutes, default: 30 minutes (optional)
    max_expiry_time_in_mins = 56 # int | Maximum token expiry time in minutes, default: 480 minutes (optional)

    try:
        api_response = api_instance.get_json_web_token(expiry_time_in_mins=expiry_time_in_mins, max_expiry_time_in_mins=max_expiry_time_in_mins)
        print("The response of BlueOceanApi->get_json_web_token:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling BlueOceanApi->get_json_web_token: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **expiry_time_in_mins** | **int**| Token expiry time in minutes, default: 30 minutes | [optional] 
 **max_expiry_time_in_mins** | **int**| Maximum token expiry time in minutes, default: 480 minutes | [optional] 

### Return type

**str**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved JWT token |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_organisation**
> Organisation get_organisation(organization)

Retrieve organization details

### Example

* Basic Authentication (jenkins_auth):

```python
import swaggyjenkins
from swaggyjenkins.models.organisation import Organisation
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
    api_instance = swaggyjenkins.BlueOceanApi(api_client)
    organization = 'organization_example' # str | Name of the organization

    try:
        api_response = api_instance.get_organisation(organization)
        print("The response of BlueOceanApi->get_organisation:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling BlueOceanApi->get_organisation: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **str**| Name of the organization | 

### Return type

[**Organisation**](Organisation.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved pipeline details |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |
**404** | Pipeline cannot be found on Jenkins instance |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_organisations**
> List[Organisation] get_organisations()

Retrieve all organizations details

### Example

* Basic Authentication (jenkins_auth):

```python
import swaggyjenkins
from swaggyjenkins.models.organisation import Organisation
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
    api_instance = swaggyjenkins.BlueOceanApi(api_client)

    try:
        api_response = api_instance.get_organisations()
        print("The response of BlueOceanApi->get_organisations:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling BlueOceanApi->get_organisations: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**List[Organisation]**](Organisation.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved pipelines details |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_pipeline**
> Pipeline get_pipeline(organization, pipeline)

Retrieve pipeline details for an organization

### Example

* Basic Authentication (jenkins_auth):

```python
import swaggyjenkins
from swaggyjenkins.models.pipeline import Pipeline
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
    api_instance = swaggyjenkins.BlueOceanApi(api_client)
    organization = 'organization_example' # str | Name of the organization
    pipeline = 'pipeline_example' # str | Name of the pipeline

    try:
        api_response = api_instance.get_pipeline(organization, pipeline)
        print("The response of BlueOceanApi->get_pipeline:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling BlueOceanApi->get_pipeline: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **str**| Name of the organization | 
 **pipeline** | **str**| Name of the pipeline | 

### Return type

[**Pipeline**](Pipeline.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved pipeline details |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |
**404** | Pipeline cannot be found on Jenkins instance |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_pipeline_activities**
> List[PipelineActivity] get_pipeline_activities(organization, pipeline)

Retrieve all activities details for an organization pipeline

### Example

* Basic Authentication (jenkins_auth):

```python
import swaggyjenkins
from swaggyjenkins.models.pipeline_activity import PipelineActivity
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
    api_instance = swaggyjenkins.BlueOceanApi(api_client)
    organization = 'organization_example' # str | Name of the organization
    pipeline = 'pipeline_example' # str | Name of the pipeline

    try:
        api_response = api_instance.get_pipeline_activities(organization, pipeline)
        print("The response of BlueOceanApi->get_pipeline_activities:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling BlueOceanApi->get_pipeline_activities: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **str**| Name of the organization | 
 **pipeline** | **str**| Name of the pipeline | 

### Return type

[**List[PipelineActivity]**](PipelineActivity.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved all activities details |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_pipeline_branch**
> BranchImpl get_pipeline_branch(organization, pipeline, branch)

Retrieve branch details for an organization pipeline

### Example

* Basic Authentication (jenkins_auth):

```python
import swaggyjenkins
from swaggyjenkins.models.branch_impl import BranchImpl
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
    api_instance = swaggyjenkins.BlueOceanApi(api_client)
    organization = 'organization_example' # str | Name of the organization
    pipeline = 'pipeline_example' # str | Name of the pipeline
    branch = 'branch_example' # str | Name of the branch

    try:
        api_response = api_instance.get_pipeline_branch(organization, pipeline, branch)
        print("The response of BlueOceanApi->get_pipeline_branch:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling BlueOceanApi->get_pipeline_branch: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **str**| Name of the organization | 
 **pipeline** | **str**| Name of the pipeline | 
 **branch** | **str**| Name of the branch | 

### Return type

[**BranchImpl**](BranchImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved branch details |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_pipeline_branch_run**
> PipelineRun get_pipeline_branch_run(organization, pipeline, branch, run)

Retrieve branch run details for an organization pipeline

### Example

* Basic Authentication (jenkins_auth):

```python
import swaggyjenkins
from swaggyjenkins.models.pipeline_run import PipelineRun
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
    api_instance = swaggyjenkins.BlueOceanApi(api_client)
    organization = 'organization_example' # str | Name of the organization
    pipeline = 'pipeline_example' # str | Name of the pipeline
    branch = 'branch_example' # str | Name of the branch
    run = 'run_example' # str | Name of the run

    try:
        api_response = api_instance.get_pipeline_branch_run(organization, pipeline, branch, run)
        print("The response of BlueOceanApi->get_pipeline_branch_run:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling BlueOceanApi->get_pipeline_branch_run: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **str**| Name of the organization | 
 **pipeline** | **str**| Name of the pipeline | 
 **branch** | **str**| Name of the branch | 
 **run** | **str**| Name of the run | 

### Return type

[**PipelineRun**](PipelineRun.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved run details |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_pipeline_branches**
> MultibranchPipeline get_pipeline_branches(organization, pipeline)

Retrieve all branches details for an organization pipeline

### Example

* Basic Authentication (jenkins_auth):

```python
import swaggyjenkins
from swaggyjenkins.models.multibranch_pipeline import MultibranchPipeline
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
    api_instance = swaggyjenkins.BlueOceanApi(api_client)
    organization = 'organization_example' # str | Name of the organization
    pipeline = 'pipeline_example' # str | Name of the pipeline

    try:
        api_response = api_instance.get_pipeline_branches(organization, pipeline)
        print("The response of BlueOceanApi->get_pipeline_branches:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling BlueOceanApi->get_pipeline_branches: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **str**| Name of the organization | 
 **pipeline** | **str**| Name of the pipeline | 

### Return type

[**MultibranchPipeline**](MultibranchPipeline.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved all branches details |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_pipeline_folder**
> PipelineFolderImpl get_pipeline_folder(organization, folder)

Retrieve pipeline folder for an organization

### Example

* Basic Authentication (jenkins_auth):

```python
import swaggyjenkins
from swaggyjenkins.models.pipeline_folder_impl import PipelineFolderImpl
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
    api_instance = swaggyjenkins.BlueOceanApi(api_client)
    organization = 'organization_example' # str | Name of the organization
    folder = 'folder_example' # str | Name of the folder

    try:
        api_response = api_instance.get_pipeline_folder(organization, folder)
        print("The response of BlueOceanApi->get_pipeline_folder:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling BlueOceanApi->get_pipeline_folder: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **str**| Name of the organization | 
 **folder** | **str**| Name of the folder | 

### Return type

[**PipelineFolderImpl**](PipelineFolderImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved folder details |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_pipeline_folder_pipeline**
> PipelineImpl get_pipeline_folder_pipeline(organization, pipeline, folder)

Retrieve pipeline details for an organization folder

### Example

* Basic Authentication (jenkins_auth):

```python
import swaggyjenkins
from swaggyjenkins.models.pipeline_impl import PipelineImpl
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
    api_instance = swaggyjenkins.BlueOceanApi(api_client)
    organization = 'organization_example' # str | Name of the organization
    pipeline = 'pipeline_example' # str | Name of the pipeline
    folder = 'folder_example' # str | Name of the folder

    try:
        api_response = api_instance.get_pipeline_folder_pipeline(organization, pipeline, folder)
        print("The response of BlueOceanApi->get_pipeline_folder_pipeline:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling BlueOceanApi->get_pipeline_folder_pipeline: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **str**| Name of the organization | 
 **pipeline** | **str**| Name of the pipeline | 
 **folder** | **str**| Name of the folder | 

### Return type

[**PipelineImpl**](PipelineImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved pipeline details |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_pipeline_queue**
> List[QueueItemImpl] get_pipeline_queue(organization, pipeline)

Retrieve queue details for an organization pipeline

### Example

* Basic Authentication (jenkins_auth):

```python
import swaggyjenkins
from swaggyjenkins.models.queue_item_impl import QueueItemImpl
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
    api_instance = swaggyjenkins.BlueOceanApi(api_client)
    organization = 'organization_example' # str | Name of the organization
    pipeline = 'pipeline_example' # str | Name of the pipeline

    try:
        api_response = api_instance.get_pipeline_queue(organization, pipeline)
        print("The response of BlueOceanApi->get_pipeline_queue:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling BlueOceanApi->get_pipeline_queue: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **str**| Name of the organization | 
 **pipeline** | **str**| Name of the pipeline | 

### Return type

[**List[QueueItemImpl]**](QueueItemImpl.md)

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

# **get_pipeline_run**
> PipelineRun get_pipeline_run(organization, pipeline, run)

Retrieve run details for an organization pipeline

### Example

* Basic Authentication (jenkins_auth):

```python
import swaggyjenkins
from swaggyjenkins.models.pipeline_run import PipelineRun
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
    api_instance = swaggyjenkins.BlueOceanApi(api_client)
    organization = 'organization_example' # str | Name of the organization
    pipeline = 'pipeline_example' # str | Name of the pipeline
    run = 'run_example' # str | Name of the run

    try:
        api_response = api_instance.get_pipeline_run(organization, pipeline, run)
        print("The response of BlueOceanApi->get_pipeline_run:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling BlueOceanApi->get_pipeline_run: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **str**| Name of the organization | 
 **pipeline** | **str**| Name of the pipeline | 
 **run** | **str**| Name of the run | 

### Return type

[**PipelineRun**](PipelineRun.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved run details |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_pipeline_run_log**
> str get_pipeline_run_log(organization, pipeline, run, start=start, download=download)

Get log for a pipeline run

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
    api_instance = swaggyjenkins.BlueOceanApi(api_client)
    organization = 'organization_example' # str | Name of the organization
    pipeline = 'pipeline_example' # str | Name of the pipeline
    run = 'run_example' # str | Name of the run
    start = 56 # int | Start position of the log (optional)
    download = True # bool | Set to true in order to download the file, otherwise it's passed as a response body (optional)

    try:
        api_response = api_instance.get_pipeline_run_log(organization, pipeline, run, start=start, download=download)
        print("The response of BlueOceanApi->get_pipeline_run_log:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling BlueOceanApi->get_pipeline_run_log: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **str**| Name of the organization | 
 **pipeline** | **str**| Name of the pipeline | 
 **run** | **str**| Name of the run | 
 **start** | **int**| Start position of the log | [optional] 
 **download** | **bool**| Set to true in order to download the file, otherwise it&#39;s passed as a response body | [optional] 

### Return type

**str**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved pipeline run log |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_pipeline_run_node**
> PipelineRunNode get_pipeline_run_node(organization, pipeline, run, node)

Retrieve run node details for an organization pipeline

### Example

* Basic Authentication (jenkins_auth):

```python
import swaggyjenkins
from swaggyjenkins.models.pipeline_run_node import PipelineRunNode
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
    api_instance = swaggyjenkins.BlueOceanApi(api_client)
    organization = 'organization_example' # str | Name of the organization
    pipeline = 'pipeline_example' # str | Name of the pipeline
    run = 'run_example' # str | Name of the run
    node = 'node_example' # str | Name of the node

    try:
        api_response = api_instance.get_pipeline_run_node(organization, pipeline, run, node)
        print("The response of BlueOceanApi->get_pipeline_run_node:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling BlueOceanApi->get_pipeline_run_node: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **str**| Name of the organization | 
 **pipeline** | **str**| Name of the pipeline | 
 **run** | **str**| Name of the run | 
 **node** | **str**| Name of the node | 

### Return type

[**PipelineRunNode**](PipelineRunNode.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved run node details |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_pipeline_run_node_step**
> PipelineStepImpl get_pipeline_run_node_step(organization, pipeline, run, node, step)

Retrieve run node details for an organization pipeline

### Example

* Basic Authentication (jenkins_auth):

```python
import swaggyjenkins
from swaggyjenkins.models.pipeline_step_impl import PipelineStepImpl
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
    api_instance = swaggyjenkins.BlueOceanApi(api_client)
    organization = 'organization_example' # str | Name of the organization
    pipeline = 'pipeline_example' # str | Name of the pipeline
    run = 'run_example' # str | Name of the run
    node = 'node_example' # str | Name of the node
    step = 'step_example' # str | Name of the step

    try:
        api_response = api_instance.get_pipeline_run_node_step(organization, pipeline, run, node, step)
        print("The response of BlueOceanApi->get_pipeline_run_node_step:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling BlueOceanApi->get_pipeline_run_node_step: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **str**| Name of the organization | 
 **pipeline** | **str**| Name of the pipeline | 
 **run** | **str**| Name of the run | 
 **node** | **str**| Name of the node | 
 **step** | **str**| Name of the step | 

### Return type

[**PipelineStepImpl**](PipelineStepImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved run node step details |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_pipeline_run_node_step_log**
> str get_pipeline_run_node_step_log(organization, pipeline, run, node, step)

Get log for a pipeline run node step

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
    api_instance = swaggyjenkins.BlueOceanApi(api_client)
    organization = 'organization_example' # str | Name of the organization
    pipeline = 'pipeline_example' # str | Name of the pipeline
    run = 'run_example' # str | Name of the run
    node = 'node_example' # str | Name of the node
    step = 'step_example' # str | Name of the step

    try:
        api_response = api_instance.get_pipeline_run_node_step_log(organization, pipeline, run, node, step)
        print("The response of BlueOceanApi->get_pipeline_run_node_step_log:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling BlueOceanApi->get_pipeline_run_node_step_log: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **str**| Name of the organization | 
 **pipeline** | **str**| Name of the pipeline | 
 **run** | **str**| Name of the run | 
 **node** | **str**| Name of the node | 
 **step** | **str**| Name of the step | 

### Return type

**str**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved pipeline run node step log |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_pipeline_run_node_steps**
> List[PipelineStepImpl] get_pipeline_run_node_steps(organization, pipeline, run, node)

Retrieve run node steps details for an organization pipeline

### Example

* Basic Authentication (jenkins_auth):

```python
import swaggyjenkins
from swaggyjenkins.models.pipeline_step_impl import PipelineStepImpl
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
    api_instance = swaggyjenkins.BlueOceanApi(api_client)
    organization = 'organization_example' # str | Name of the organization
    pipeline = 'pipeline_example' # str | Name of the pipeline
    run = 'run_example' # str | Name of the run
    node = 'node_example' # str | Name of the node

    try:
        api_response = api_instance.get_pipeline_run_node_steps(organization, pipeline, run, node)
        print("The response of BlueOceanApi->get_pipeline_run_node_steps:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling BlueOceanApi->get_pipeline_run_node_steps: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **str**| Name of the organization | 
 **pipeline** | **str**| Name of the pipeline | 
 **run** | **str**| Name of the run | 
 **node** | **str**| Name of the node | 

### Return type

[**List[PipelineStepImpl]**](PipelineStepImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved run node steps details |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_pipeline_run_nodes**
> List[PipelineRunNode] get_pipeline_run_nodes(organization, pipeline, run)

Retrieve run nodes details for an organization pipeline

### Example

* Basic Authentication (jenkins_auth):

```python
import swaggyjenkins
from swaggyjenkins.models.pipeline_run_node import PipelineRunNode
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
    api_instance = swaggyjenkins.BlueOceanApi(api_client)
    organization = 'organization_example' # str | Name of the organization
    pipeline = 'pipeline_example' # str | Name of the pipeline
    run = 'run_example' # str | Name of the run

    try:
        api_response = api_instance.get_pipeline_run_nodes(organization, pipeline, run)
        print("The response of BlueOceanApi->get_pipeline_run_nodes:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling BlueOceanApi->get_pipeline_run_nodes: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **str**| Name of the organization | 
 **pipeline** | **str**| Name of the pipeline | 
 **run** | **str**| Name of the run | 

### Return type

[**List[PipelineRunNode]**](PipelineRunNode.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved run nodes details |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_pipeline_runs**
> List[PipelineRun] get_pipeline_runs(organization, pipeline)

Retrieve all runs details for an organization pipeline

### Example

* Basic Authentication (jenkins_auth):

```python
import swaggyjenkins
from swaggyjenkins.models.pipeline_run import PipelineRun
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
    api_instance = swaggyjenkins.BlueOceanApi(api_client)
    organization = 'organization_example' # str | Name of the organization
    pipeline = 'pipeline_example' # str | Name of the pipeline

    try:
        api_response = api_instance.get_pipeline_runs(organization, pipeline)
        print("The response of BlueOceanApi->get_pipeline_runs:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling BlueOceanApi->get_pipeline_runs: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **str**| Name of the organization | 
 **pipeline** | **str**| Name of the pipeline | 

### Return type

[**List[PipelineRun]**](PipelineRun.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved runs details |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_pipelines**
> List[Pipeline] get_pipelines(organization)

Retrieve all pipelines details for an organization

### Example

* Basic Authentication (jenkins_auth):

```python
import swaggyjenkins
from swaggyjenkins.models.pipeline import Pipeline
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
    api_instance = swaggyjenkins.BlueOceanApi(api_client)
    organization = 'organization_example' # str | Name of the organization

    try:
        api_response = api_instance.get_pipelines(organization)
        print("The response of BlueOceanApi->get_pipelines:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling BlueOceanApi->get_pipelines: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **str**| Name of the organization | 

### Return type

[**List[Pipeline]**](Pipeline.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved pipelines details |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_scm**
> GithubScm get_scm(organization, scm)

Retrieve SCM details for an organization

### Example

* Basic Authentication (jenkins_auth):

```python
import swaggyjenkins
from swaggyjenkins.models.github_scm import GithubScm
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
    api_instance = swaggyjenkins.BlueOceanApi(api_client)
    organization = 'organization_example' # str | Name of the organization
    scm = 'scm_example' # str | Name of SCM

    try:
        api_response = api_instance.get_scm(organization, scm)
        print("The response of BlueOceanApi->get_scm:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling BlueOceanApi->get_scm: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **str**| Name of the organization | 
 **scm** | **str**| Name of SCM | 

### Return type

[**GithubScm**](GithubScm.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved SCM details |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_scm_organisation_repositories**
> List[GithubOrganization] get_scm_organisation_repositories(organization, scm, scm_organisation, credential_id=credential_id, page_size=page_size, page_number=page_number)

Retrieve SCM organization repositories details for an organization

### Example

* Basic Authentication (jenkins_auth):

```python
import swaggyjenkins
from swaggyjenkins.models.github_organization import GithubOrganization
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
    api_instance = swaggyjenkins.BlueOceanApi(api_client)
    organization = 'organization_example' # str | Name of the organization
    scm = 'scm_example' # str | Name of SCM
    scm_organisation = 'scm_organisation_example' # str | Name of the SCM organization
    credential_id = 'credential_id_example' # str | Credential ID (optional)
    page_size = 56 # int | Number of items in a page (optional)
    page_number = 56 # int | Page number (optional)

    try:
        api_response = api_instance.get_scm_organisation_repositories(organization, scm, scm_organisation, credential_id=credential_id, page_size=page_size, page_number=page_number)
        print("The response of BlueOceanApi->get_scm_organisation_repositories:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling BlueOceanApi->get_scm_organisation_repositories: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **str**| Name of the organization | 
 **scm** | **str**| Name of SCM | 
 **scm_organisation** | **str**| Name of the SCM organization | 
 **credential_id** | **str**| Credential ID | [optional] 
 **page_size** | **int**| Number of items in a page | [optional] 
 **page_number** | **int**| Page number | [optional] 

### Return type

[**List[GithubOrganization]**](GithubOrganization.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved SCM organization repositories details |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_scm_organisation_repository**
> List[GithubOrganization] get_scm_organisation_repository(organization, scm, scm_organisation, repository, credential_id=credential_id)

Retrieve SCM organization repository details for an organization

### Example

* Basic Authentication (jenkins_auth):

```python
import swaggyjenkins
from swaggyjenkins.models.github_organization import GithubOrganization
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
    api_instance = swaggyjenkins.BlueOceanApi(api_client)
    organization = 'organization_example' # str | Name of the organization
    scm = 'scm_example' # str | Name of SCM
    scm_organisation = 'scm_organisation_example' # str | Name of the SCM organization
    repository = 'repository_example' # str | Name of the SCM repository
    credential_id = 'credential_id_example' # str | Credential ID (optional)

    try:
        api_response = api_instance.get_scm_organisation_repository(organization, scm, scm_organisation, repository, credential_id=credential_id)
        print("The response of BlueOceanApi->get_scm_organisation_repository:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling BlueOceanApi->get_scm_organisation_repository: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **str**| Name of the organization | 
 **scm** | **str**| Name of SCM | 
 **scm_organisation** | **str**| Name of the SCM organization | 
 **repository** | **str**| Name of the SCM repository | 
 **credential_id** | **str**| Credential ID | [optional] 

### Return type

[**List[GithubOrganization]**](GithubOrganization.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved SCM organizations details |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_scm_organisations**
> List[GithubOrganization] get_scm_organisations(organization, scm, credential_id=credential_id)

Retrieve SCM organizations details for an organization

### Example

* Basic Authentication (jenkins_auth):

```python
import swaggyjenkins
from swaggyjenkins.models.github_organization import GithubOrganization
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
    api_instance = swaggyjenkins.BlueOceanApi(api_client)
    organization = 'organization_example' # str | Name of the organization
    scm = 'scm_example' # str | Name of SCM
    credential_id = 'credential_id_example' # str | Credential ID (optional)

    try:
        api_response = api_instance.get_scm_organisations(organization, scm, credential_id=credential_id)
        print("The response of BlueOceanApi->get_scm_organisations:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling BlueOceanApi->get_scm_organisations: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **str**| Name of the organization | 
 **scm** | **str**| Name of SCM | 
 **credential_id** | **str**| Credential ID | [optional] 

### Return type

[**List[GithubOrganization]**](GithubOrganization.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved SCM organizations details |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_user**
> User get_user(organization, user)

Retrieve user details for an organization

### Example

* Basic Authentication (jenkins_auth):

```python
import swaggyjenkins
from swaggyjenkins.models.user import User
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
    api_instance = swaggyjenkins.BlueOceanApi(api_client)
    organization = 'organization_example' # str | Name of the organization
    user = 'user_example' # str | Name of the user

    try:
        api_response = api_instance.get_user(organization, user)
        print("The response of BlueOceanApi->get_user:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling BlueOceanApi->get_user: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **str**| Name of the organization | 
 **user** | **str**| Name of the user | 

### Return type

[**User**](User.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved users details |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_user_favorites**
> List[FavoriteImpl] get_user_favorites(user)

Retrieve user favorites details for an organization

### Example

* Basic Authentication (jenkins_auth):

```python
import swaggyjenkins
from swaggyjenkins.models.favorite_impl import FavoriteImpl
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
    api_instance = swaggyjenkins.BlueOceanApi(api_client)
    user = 'user_example' # str | Name of the user

    try:
        api_response = api_instance.get_user_favorites(user)
        print("The response of BlueOceanApi->get_user_favorites:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling BlueOceanApi->get_user_favorites: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user** | **str**| Name of the user | 

### Return type

[**List[FavoriteImpl]**](FavoriteImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved users favorites details |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_users**
> User get_users(organization)

Retrieve users details for an organization

### Example

* Basic Authentication (jenkins_auth):

```python
import swaggyjenkins
from swaggyjenkins.models.user import User
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
    api_instance = swaggyjenkins.BlueOceanApi(api_client)
    organization = 'organization_example' # str | Name of the organization

    try:
        api_response = api_instance.get_users(organization)
        print("The response of BlueOceanApi->get_users:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling BlueOceanApi->get_users: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **str**| Name of the organization | 

### Return type

[**User**](User.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved users details |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_pipeline_run**
> QueueItemImpl post_pipeline_run(organization, pipeline, run)

Replay an organization pipeline run

### Example

* Basic Authentication (jenkins_auth):

```python
import swaggyjenkins
from swaggyjenkins.models.queue_item_impl import QueueItemImpl
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
    api_instance = swaggyjenkins.BlueOceanApi(api_client)
    organization = 'organization_example' # str | Name of the organization
    pipeline = 'pipeline_example' # str | Name of the pipeline
    run = 'run_example' # str | Name of the run

    try:
        api_response = api_instance.post_pipeline_run(organization, pipeline, run)
        print("The response of BlueOceanApi->post_pipeline_run:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling BlueOceanApi->post_pipeline_run: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **str**| Name of the organization | 
 **pipeline** | **str**| Name of the pipeline | 
 **run** | **str**| Name of the run | 

### Return type

[**QueueItemImpl**](QueueItemImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully replayed a pipeline run |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_pipeline_runs**
> QueueItemImpl post_pipeline_runs(organization, pipeline)

Start a build for an organization pipeline

### Example

* Basic Authentication (jenkins_auth):

```python
import swaggyjenkins
from swaggyjenkins.models.queue_item_impl import QueueItemImpl
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
    api_instance = swaggyjenkins.BlueOceanApi(api_client)
    organization = 'organization_example' # str | Name of the organization
    pipeline = 'pipeline_example' # str | Name of the pipeline

    try:
        api_response = api_instance.post_pipeline_runs(organization, pipeline)
        print("The response of BlueOceanApi->post_pipeline_runs:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling BlueOceanApi->post_pipeline_runs: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **str**| Name of the organization | 
 **pipeline** | **str**| Name of the pipeline | 

### Return type

[**QueueItemImpl**](QueueItemImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully started a build |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **put_pipeline_favorite**
> FavoriteImpl put_pipeline_favorite(organization, pipeline, body)

Favorite/unfavorite a pipeline

### Example

* Basic Authentication (jenkins_auth):

```python
import swaggyjenkins
from swaggyjenkins.models.favorite_impl import FavoriteImpl
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
    api_instance = swaggyjenkins.BlueOceanApi(api_client)
    organization = 'organization_example' # str | Name of the organization
    pipeline = 'pipeline_example' # str | Name of the pipeline
    body = True # bool | Set JSON string body to {\"favorite\": true} to favorite, set value to false to unfavorite

    try:
        api_response = api_instance.put_pipeline_favorite(organization, pipeline, body)
        print("The response of BlueOceanApi->put_pipeline_favorite:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling BlueOceanApi->put_pipeline_favorite: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **str**| Name of the organization | 
 **pipeline** | **str**| Name of the pipeline | 
 **body** | **bool**| Set JSON string body to {\&quot;favorite\&quot;: true} to favorite, set value to false to unfavorite | 

### Return type

[**FavoriteImpl**](FavoriteImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully favorited/unfavorited a pipeline |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **put_pipeline_run**
> PipelineRun put_pipeline_run(organization, pipeline, run, blocking=blocking, time_out_in_secs=time_out_in_secs)

Stop a build of an organization pipeline

### Example

* Basic Authentication (jenkins_auth):

```python
import swaggyjenkins
from swaggyjenkins.models.pipeline_run import PipelineRun
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
    api_instance = swaggyjenkins.BlueOceanApi(api_client)
    organization = 'organization_example' # str | Name of the organization
    pipeline = 'pipeline_example' # str | Name of the pipeline
    run = 'run_example' # str | Name of the run
    blocking = 'blocking_example' # str | Set to true to make blocking stop, default: false (optional)
    time_out_in_secs = 56 # int | Timeout in seconds, default: 10 seconds (optional)

    try:
        api_response = api_instance.put_pipeline_run(organization, pipeline, run, blocking=blocking, time_out_in_secs=time_out_in_secs)
        print("The response of BlueOceanApi->put_pipeline_run:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling BlueOceanApi->put_pipeline_run: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **str**| Name of the organization | 
 **pipeline** | **str**| Name of the pipeline | 
 **run** | **str**| Name of the run | 
 **blocking** | **str**| Set to true to make blocking stop, default: false | [optional] 
 **time_out_in_secs** | **int**| Timeout in seconds, default: 10 seconds | [optional] 

### Return type

[**PipelineRun**](PipelineRun.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully stopped a build |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search**
> str search(q)

Search for any resource details

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
    api_instance = swaggyjenkins.BlueOceanApi(api_client)
    q = 'q_example' # str | Query string

    try:
        api_response = api_instance.search(q)
        print("The response of BlueOceanApi->search:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling BlueOceanApi->search: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **str**| Query string | 

### Return type

**str**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved search result |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search_classes**
> str search_classes(q)

Get classes details

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
    api_instance = swaggyjenkins.BlueOceanApi(api_client)
    q = 'q_example' # str | Query string containing an array of class names

    try:
        api_response = api_instance.search_classes(q)
        print("The response of BlueOceanApi->search_classes:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling BlueOceanApi->search_classes: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **str**| Query string containing an array of class names | 

### Return type

**str**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved search result |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


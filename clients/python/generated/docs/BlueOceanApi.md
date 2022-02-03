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
import time
import swaggyjenkins
from swaggyjenkins.api import blue_ocean_api
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
    username = 'YOUR_USERNAME',
    password = 'YOUR_PASSWORD'
)

# Enter a context with an instance of the API client
with swaggyjenkins.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = blue_ocean_api.BlueOceanApi(api_client)
    organization = "organization_example" # str | Name of the organization
    pipeline = "pipeline_example" # str | Name of the pipeline
    queue = "queue_example" # str | Name of the queue item

    # example passing only required values which don't have defaults set
    try:
        api_instance.delete_pipeline_queue_item(organization, pipeline, queue)
    except swaggyjenkins.ApiException as e:
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
import time
import swaggyjenkins
from swaggyjenkins.api import blue_ocean_api
from swaggyjenkins.model.user import User
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
    username = 'YOUR_USERNAME',
    password = 'YOUR_PASSWORD'
)

# Enter a context with an instance of the API client
with swaggyjenkins.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = blue_ocean_api.BlueOceanApi(api_client)
    organization = "organization_example" # str | Name of the organization

    # example passing only required values which don't have defaults set
    try:
        api_response = api_instance.get_authenticated_user(organization)
        pprint(api_response)
    except swaggyjenkins.ApiException as e:
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
> str get_classes(_class)



Get a list of class names supported by a given class

### Example

* Basic Authentication (jenkins_auth):

```python
import time
import swaggyjenkins
from swaggyjenkins.api import blue_ocean_api
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
    username = 'YOUR_USERNAME',
    password = 'YOUR_PASSWORD'
)

# Enter a context with an instance of the API client
with swaggyjenkins.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = blue_ocean_api.BlueOceanApi(api_client)
    _class = "class_example" # str | Name of the class

    # example passing only required values which don't have defaults set
    try:
        api_response = api_instance.get_classes(_class)
        pprint(api_response)
    except swaggyjenkins.ApiException as e:
        print("Exception when calling BlueOceanApi->get_classes: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_class** | **str**| Name of the class |

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
import time
import swaggyjenkins
from swaggyjenkins.api import blue_ocean_api
from pprint import pprint
# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = swaggyjenkins.Configuration(
    host = "http://localhost"
)


# Enter a context with an instance of the API client
with swaggyjenkins.ApiClient() as api_client:
    # Create an instance of the API class
    api_instance = blue_ocean_api.BlueOceanApi(api_client)
    key = 1 # int | Key ID received as part of JWT header field kid

    # example passing only required values which don't have defaults set
    try:
        api_response = api_instance.get_json_web_key(key)
        pprint(api_response)
    except swaggyjenkins.ApiException as e:
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
> str get_json_web_token()



Retrieve JSON Web Token

### Example


```python
import time
import swaggyjenkins
from swaggyjenkins.api import blue_ocean_api
from pprint import pprint
# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = swaggyjenkins.Configuration(
    host = "http://localhost"
)


# Enter a context with an instance of the API client
with swaggyjenkins.ApiClient() as api_client:
    # Create an instance of the API class
    api_instance = blue_ocean_api.BlueOceanApi(api_client)
    expiry_time_in_mins = 1 # int | Token expiry time in minutes, default: 30 minutes (optional)
    max_expiry_time_in_mins = 1 # int | Maximum token expiry time in minutes, default: 480 minutes (optional)

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        api_response = api_instance.get_json_web_token(expiry_time_in_mins=expiry_time_in_mins, max_expiry_time_in_mins=max_expiry_time_in_mins)
        pprint(api_response)
    except swaggyjenkins.ApiException as e:
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
import time
import swaggyjenkins
from swaggyjenkins.api import blue_ocean_api
from swaggyjenkins.model.organisation import Organisation
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
    username = 'YOUR_USERNAME',
    password = 'YOUR_PASSWORD'
)

# Enter a context with an instance of the API client
with swaggyjenkins.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = blue_ocean_api.BlueOceanApi(api_client)
    organization = "organization_example" # str | Name of the organization

    # example passing only required values which don't have defaults set
    try:
        api_response = api_instance.get_organisation(organization)
        pprint(api_response)
    except swaggyjenkins.ApiException as e:
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
> Organisations get_organisations()



Retrieve all organizations details

### Example

* Basic Authentication (jenkins_auth):

```python
import time
import swaggyjenkins
from swaggyjenkins.api import blue_ocean_api
from swaggyjenkins.model.organisations import Organisations
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
    username = 'YOUR_USERNAME',
    password = 'YOUR_PASSWORD'
)

# Enter a context with an instance of the API client
with swaggyjenkins.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = blue_ocean_api.BlueOceanApi(api_client)

    # example, this endpoint has no required or optional parameters
    try:
        api_response = api_instance.get_organisations()
        pprint(api_response)
    except swaggyjenkins.ApiException as e:
        print("Exception when calling BlueOceanApi->get_organisations: %s\n" % e)
```


### Parameters
This endpoint does not need any parameter.

### Return type

[**Organisations**](Organisations.md)

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
import time
import swaggyjenkins
from swaggyjenkins.api import blue_ocean_api
from swaggyjenkins.model.pipeline import Pipeline
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
    username = 'YOUR_USERNAME',
    password = 'YOUR_PASSWORD'
)

# Enter a context with an instance of the API client
with swaggyjenkins.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = blue_ocean_api.BlueOceanApi(api_client)
    organization = "organization_example" # str | Name of the organization
    pipeline = "pipeline_example" # str | Name of the pipeline

    # example passing only required values which don't have defaults set
    try:
        api_response = api_instance.get_pipeline(organization, pipeline)
        pprint(api_response)
    except swaggyjenkins.ApiException as e:
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
> PipelineActivities get_pipeline_activities(organization, pipeline)



Retrieve all activities details for an organization pipeline

### Example

* Basic Authentication (jenkins_auth):

```python
import time
import swaggyjenkins
from swaggyjenkins.api import blue_ocean_api
from swaggyjenkins.model.pipeline_activities import PipelineActivities
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
    username = 'YOUR_USERNAME',
    password = 'YOUR_PASSWORD'
)

# Enter a context with an instance of the API client
with swaggyjenkins.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = blue_ocean_api.BlueOceanApi(api_client)
    organization = "organization_example" # str | Name of the organization
    pipeline = "pipeline_example" # str | Name of the pipeline

    # example passing only required values which don't have defaults set
    try:
        api_response = api_instance.get_pipeline_activities(organization, pipeline)
        pprint(api_response)
    except swaggyjenkins.ApiException as e:
        print("Exception when calling BlueOceanApi->get_pipeline_activities: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **str**| Name of the organization |
 **pipeline** | **str**| Name of the pipeline |

### Return type

[**PipelineActivities**](PipelineActivities.md)

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
import time
import swaggyjenkins
from swaggyjenkins.api import blue_ocean_api
from swaggyjenkins.model.branch_impl import BranchImpl
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
    username = 'YOUR_USERNAME',
    password = 'YOUR_PASSWORD'
)

# Enter a context with an instance of the API client
with swaggyjenkins.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = blue_ocean_api.BlueOceanApi(api_client)
    organization = "organization_example" # str | Name of the organization
    pipeline = "pipeline_example" # str | Name of the pipeline
    branch = "branch_example" # str | Name of the branch

    # example passing only required values which don't have defaults set
    try:
        api_response = api_instance.get_pipeline_branch(organization, pipeline, branch)
        pprint(api_response)
    except swaggyjenkins.ApiException as e:
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
import time
import swaggyjenkins
from swaggyjenkins.api import blue_ocean_api
from swaggyjenkins.model.pipeline_run import PipelineRun
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
    username = 'YOUR_USERNAME',
    password = 'YOUR_PASSWORD'
)

# Enter a context with an instance of the API client
with swaggyjenkins.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = blue_ocean_api.BlueOceanApi(api_client)
    organization = "organization_example" # str | Name of the organization
    pipeline = "pipeline_example" # str | Name of the pipeline
    branch = "branch_example" # str | Name of the branch
    run = "run_example" # str | Name of the run

    # example passing only required values which don't have defaults set
    try:
        api_response = api_instance.get_pipeline_branch_run(organization, pipeline, branch, run)
        pprint(api_response)
    except swaggyjenkins.ApiException as e:
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
import time
import swaggyjenkins
from swaggyjenkins.api import blue_ocean_api
from swaggyjenkins.model.multibranch_pipeline import MultibranchPipeline
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
    username = 'YOUR_USERNAME',
    password = 'YOUR_PASSWORD'
)

# Enter a context with an instance of the API client
with swaggyjenkins.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = blue_ocean_api.BlueOceanApi(api_client)
    organization = "organization_example" # str | Name of the organization
    pipeline = "pipeline_example" # str | Name of the pipeline

    # example passing only required values which don't have defaults set
    try:
        api_response = api_instance.get_pipeline_branches(organization, pipeline)
        pprint(api_response)
    except swaggyjenkins.ApiException as e:
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
import time
import swaggyjenkins
from swaggyjenkins.api import blue_ocean_api
from swaggyjenkins.model.pipeline_folder_impl import PipelineFolderImpl
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
    username = 'YOUR_USERNAME',
    password = 'YOUR_PASSWORD'
)

# Enter a context with an instance of the API client
with swaggyjenkins.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = blue_ocean_api.BlueOceanApi(api_client)
    organization = "organization_example" # str | Name of the organization
    folder = "folder_example" # str | Name of the folder

    # example passing only required values which don't have defaults set
    try:
        api_response = api_instance.get_pipeline_folder(organization, folder)
        pprint(api_response)
    except swaggyjenkins.ApiException as e:
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
import time
import swaggyjenkins
from swaggyjenkins.api import blue_ocean_api
from swaggyjenkins.model.pipeline_impl import PipelineImpl
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
    username = 'YOUR_USERNAME',
    password = 'YOUR_PASSWORD'
)

# Enter a context with an instance of the API client
with swaggyjenkins.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = blue_ocean_api.BlueOceanApi(api_client)
    organization = "organization_example" # str | Name of the organization
    pipeline = "pipeline_example" # str | Name of the pipeline
    folder = "folder_example" # str | Name of the folder

    # example passing only required values which don't have defaults set
    try:
        api_response = api_instance.get_pipeline_folder_pipeline(organization, pipeline, folder)
        pprint(api_response)
    except swaggyjenkins.ApiException as e:
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
> PipelineQueue get_pipeline_queue(organization, pipeline)



Retrieve queue details for an organization pipeline

### Example

* Basic Authentication (jenkins_auth):

```python
import time
import swaggyjenkins
from swaggyjenkins.api import blue_ocean_api
from swaggyjenkins.model.pipeline_queue import PipelineQueue
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
    username = 'YOUR_USERNAME',
    password = 'YOUR_PASSWORD'
)

# Enter a context with an instance of the API client
with swaggyjenkins.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = blue_ocean_api.BlueOceanApi(api_client)
    organization = "organization_example" # str | Name of the organization
    pipeline = "pipeline_example" # str | Name of the pipeline

    # example passing only required values which don't have defaults set
    try:
        api_response = api_instance.get_pipeline_queue(organization, pipeline)
        pprint(api_response)
    except swaggyjenkins.ApiException as e:
        print("Exception when calling BlueOceanApi->get_pipeline_queue: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **str**| Name of the organization |
 **pipeline** | **str**| Name of the pipeline |

### Return type

[**PipelineQueue**](PipelineQueue.md)

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
import time
import swaggyjenkins
from swaggyjenkins.api import blue_ocean_api
from swaggyjenkins.model.pipeline_run import PipelineRun
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
    username = 'YOUR_USERNAME',
    password = 'YOUR_PASSWORD'
)

# Enter a context with an instance of the API client
with swaggyjenkins.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = blue_ocean_api.BlueOceanApi(api_client)
    organization = "organization_example" # str | Name of the organization
    pipeline = "pipeline_example" # str | Name of the pipeline
    run = "run_example" # str | Name of the run

    # example passing only required values which don't have defaults set
    try:
        api_response = api_instance.get_pipeline_run(organization, pipeline, run)
        pprint(api_response)
    except swaggyjenkins.ApiException as e:
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
> str get_pipeline_run_log(organization, pipeline, run)



Get log for a pipeline run

### Example

* Basic Authentication (jenkins_auth):

```python
import time
import swaggyjenkins
from swaggyjenkins.api import blue_ocean_api
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
    username = 'YOUR_USERNAME',
    password = 'YOUR_PASSWORD'
)

# Enter a context with an instance of the API client
with swaggyjenkins.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = blue_ocean_api.BlueOceanApi(api_client)
    organization = "organization_example" # str | Name of the organization
    pipeline = "pipeline_example" # str | Name of the pipeline
    run = "run_example" # str | Name of the run
    start = 1 # int | Start position of the log (optional)
    download = True # bool | Set to true in order to download the file, otherwise it's passed as a response body (optional)

    # example passing only required values which don't have defaults set
    try:
        api_response = api_instance.get_pipeline_run_log(organization, pipeline, run)
        pprint(api_response)
    except swaggyjenkins.ApiException as e:
        print("Exception when calling BlueOceanApi->get_pipeline_run_log: %s\n" % e)

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        api_response = api_instance.get_pipeline_run_log(organization, pipeline, run, start=start, download=download)
        pprint(api_response)
    except swaggyjenkins.ApiException as e:
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
import time
import swaggyjenkins
from swaggyjenkins.api import blue_ocean_api
from swaggyjenkins.model.pipeline_run_node import PipelineRunNode
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
    username = 'YOUR_USERNAME',
    password = 'YOUR_PASSWORD'
)

# Enter a context with an instance of the API client
with swaggyjenkins.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = blue_ocean_api.BlueOceanApi(api_client)
    organization = "organization_example" # str | Name of the organization
    pipeline = "pipeline_example" # str | Name of the pipeline
    run = "run_example" # str | Name of the run
    node = "node_example" # str | Name of the node

    # example passing only required values which don't have defaults set
    try:
        api_response = api_instance.get_pipeline_run_node(organization, pipeline, run, node)
        pprint(api_response)
    except swaggyjenkins.ApiException as e:
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
import time
import swaggyjenkins
from swaggyjenkins.api import blue_ocean_api
from swaggyjenkins.model.pipeline_step_impl import PipelineStepImpl
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
    username = 'YOUR_USERNAME',
    password = 'YOUR_PASSWORD'
)

# Enter a context with an instance of the API client
with swaggyjenkins.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = blue_ocean_api.BlueOceanApi(api_client)
    organization = "organization_example" # str | Name of the organization
    pipeline = "pipeline_example" # str | Name of the pipeline
    run = "run_example" # str | Name of the run
    node = "node_example" # str | Name of the node
    step = "step_example" # str | Name of the step

    # example passing only required values which don't have defaults set
    try:
        api_response = api_instance.get_pipeline_run_node_step(organization, pipeline, run, node, step)
        pprint(api_response)
    except swaggyjenkins.ApiException as e:
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
import time
import swaggyjenkins
from swaggyjenkins.api import blue_ocean_api
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
    username = 'YOUR_USERNAME',
    password = 'YOUR_PASSWORD'
)

# Enter a context with an instance of the API client
with swaggyjenkins.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = blue_ocean_api.BlueOceanApi(api_client)
    organization = "organization_example" # str | Name of the organization
    pipeline = "pipeline_example" # str | Name of the pipeline
    run = "run_example" # str | Name of the run
    node = "node_example" # str | Name of the node
    step = "step_example" # str | Name of the step

    # example passing only required values which don't have defaults set
    try:
        api_response = api_instance.get_pipeline_run_node_step_log(organization, pipeline, run, node, step)
        pprint(api_response)
    except swaggyjenkins.ApiException as e:
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
> PipelineRunNodeSteps get_pipeline_run_node_steps(organization, pipeline, run, node)



Retrieve run node steps details for an organization pipeline

### Example

* Basic Authentication (jenkins_auth):

```python
import time
import swaggyjenkins
from swaggyjenkins.api import blue_ocean_api
from swaggyjenkins.model.pipeline_run_node_steps import PipelineRunNodeSteps
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
    username = 'YOUR_USERNAME',
    password = 'YOUR_PASSWORD'
)

# Enter a context with an instance of the API client
with swaggyjenkins.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = blue_ocean_api.BlueOceanApi(api_client)
    organization = "organization_example" # str | Name of the organization
    pipeline = "pipeline_example" # str | Name of the pipeline
    run = "run_example" # str | Name of the run
    node = "node_example" # str | Name of the node

    # example passing only required values which don't have defaults set
    try:
        api_response = api_instance.get_pipeline_run_node_steps(organization, pipeline, run, node)
        pprint(api_response)
    except swaggyjenkins.ApiException as e:
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

[**PipelineRunNodeSteps**](PipelineRunNodeSteps.md)

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
> PipelineRunNodes get_pipeline_run_nodes(organization, pipeline, run)



Retrieve run nodes details for an organization pipeline

### Example

* Basic Authentication (jenkins_auth):

```python
import time
import swaggyjenkins
from swaggyjenkins.api import blue_ocean_api
from swaggyjenkins.model.pipeline_run_nodes import PipelineRunNodes
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
    username = 'YOUR_USERNAME',
    password = 'YOUR_PASSWORD'
)

# Enter a context with an instance of the API client
with swaggyjenkins.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = blue_ocean_api.BlueOceanApi(api_client)
    organization = "organization_example" # str | Name of the organization
    pipeline = "pipeline_example" # str | Name of the pipeline
    run = "run_example" # str | Name of the run

    # example passing only required values which don't have defaults set
    try:
        api_response = api_instance.get_pipeline_run_nodes(organization, pipeline, run)
        pprint(api_response)
    except swaggyjenkins.ApiException as e:
        print("Exception when calling BlueOceanApi->get_pipeline_run_nodes: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **str**| Name of the organization |
 **pipeline** | **str**| Name of the pipeline |
 **run** | **str**| Name of the run |

### Return type

[**PipelineRunNodes**](PipelineRunNodes.md)

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
> PipelineRuns get_pipeline_runs(organization, pipeline)



Retrieve all runs details for an organization pipeline

### Example

* Basic Authentication (jenkins_auth):

```python
import time
import swaggyjenkins
from swaggyjenkins.api import blue_ocean_api
from swaggyjenkins.model.pipeline_runs import PipelineRuns
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
    username = 'YOUR_USERNAME',
    password = 'YOUR_PASSWORD'
)

# Enter a context with an instance of the API client
with swaggyjenkins.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = blue_ocean_api.BlueOceanApi(api_client)
    organization = "organization_example" # str | Name of the organization
    pipeline = "pipeline_example" # str | Name of the pipeline

    # example passing only required values which don't have defaults set
    try:
        api_response = api_instance.get_pipeline_runs(organization, pipeline)
        pprint(api_response)
    except swaggyjenkins.ApiException as e:
        print("Exception when calling BlueOceanApi->get_pipeline_runs: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **str**| Name of the organization |
 **pipeline** | **str**| Name of the pipeline |

### Return type

[**PipelineRuns**](PipelineRuns.md)

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
> Pipelines get_pipelines(organization)



Retrieve all pipelines details for an organization

### Example

* Basic Authentication (jenkins_auth):

```python
import time
import swaggyjenkins
from swaggyjenkins.api import blue_ocean_api
from swaggyjenkins.model.pipelines import Pipelines
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
    username = 'YOUR_USERNAME',
    password = 'YOUR_PASSWORD'
)

# Enter a context with an instance of the API client
with swaggyjenkins.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = blue_ocean_api.BlueOceanApi(api_client)
    organization = "organization_example" # str | Name of the organization

    # example passing only required values which don't have defaults set
    try:
        api_response = api_instance.get_pipelines(organization)
        pprint(api_response)
    except swaggyjenkins.ApiException as e:
        print("Exception when calling BlueOceanApi->get_pipelines: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **str**| Name of the organization |

### Return type

[**Pipelines**](Pipelines.md)

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
import time
import swaggyjenkins
from swaggyjenkins.api import blue_ocean_api
from swaggyjenkins.model.github_scm import GithubScm
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
    username = 'YOUR_USERNAME',
    password = 'YOUR_PASSWORD'
)

# Enter a context with an instance of the API client
with swaggyjenkins.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = blue_ocean_api.BlueOceanApi(api_client)
    organization = "organization_example" # str | Name of the organization
    scm = "scm_example" # str | Name of SCM

    # example passing only required values which don't have defaults set
    try:
        api_response = api_instance.get_scm(organization, scm)
        pprint(api_response)
    except swaggyjenkins.ApiException as e:
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
> ScmOrganisations get_scm_organisation_repositories(organization, scm, scm_organisation)



Retrieve SCM organization repositories details for an organization

### Example

* Basic Authentication (jenkins_auth):

```python
import time
import swaggyjenkins
from swaggyjenkins.api import blue_ocean_api
from swaggyjenkins.model.scm_organisations import ScmOrganisations
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
    username = 'YOUR_USERNAME',
    password = 'YOUR_PASSWORD'
)

# Enter a context with an instance of the API client
with swaggyjenkins.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = blue_ocean_api.BlueOceanApi(api_client)
    organization = "organization_example" # str | Name of the organization
    scm = "scm_example" # str | Name of SCM
    scm_organisation = "scmOrganisation_example" # str | Name of the SCM organization
    credential_id = "credentialId_example" # str | Credential ID (optional)
    page_size = 1 # int | Number of items in a page (optional)
    page_number = 1 # int | Page number (optional)

    # example passing only required values which don't have defaults set
    try:
        api_response = api_instance.get_scm_organisation_repositories(organization, scm, scm_organisation)
        pprint(api_response)
    except swaggyjenkins.ApiException as e:
        print("Exception when calling BlueOceanApi->get_scm_organisation_repositories: %s\n" % e)

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        api_response = api_instance.get_scm_organisation_repositories(organization, scm, scm_organisation, credential_id=credential_id, page_size=page_size, page_number=page_number)
        pprint(api_response)
    except swaggyjenkins.ApiException as e:
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

[**ScmOrganisations**](ScmOrganisations.md)

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
> ScmOrganisations get_scm_organisation_repository(organization, scm, scm_organisation, repository)



Retrieve SCM organization repository details for an organization

### Example

* Basic Authentication (jenkins_auth):

```python
import time
import swaggyjenkins
from swaggyjenkins.api import blue_ocean_api
from swaggyjenkins.model.scm_organisations import ScmOrganisations
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
    username = 'YOUR_USERNAME',
    password = 'YOUR_PASSWORD'
)

# Enter a context with an instance of the API client
with swaggyjenkins.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = blue_ocean_api.BlueOceanApi(api_client)
    organization = "organization_example" # str | Name of the organization
    scm = "scm_example" # str | Name of SCM
    scm_organisation = "scmOrganisation_example" # str | Name of the SCM organization
    repository = "repository_example" # str | Name of the SCM repository
    credential_id = "credentialId_example" # str | Credential ID (optional)

    # example passing only required values which don't have defaults set
    try:
        api_response = api_instance.get_scm_organisation_repository(organization, scm, scm_organisation, repository)
        pprint(api_response)
    except swaggyjenkins.ApiException as e:
        print("Exception when calling BlueOceanApi->get_scm_organisation_repository: %s\n" % e)

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        api_response = api_instance.get_scm_organisation_repository(organization, scm, scm_organisation, repository, credential_id=credential_id)
        pprint(api_response)
    except swaggyjenkins.ApiException as e:
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

[**ScmOrganisations**](ScmOrganisations.md)

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
> ScmOrganisations get_scm_organisations(organization, scm)



Retrieve SCM organizations details for an organization

### Example

* Basic Authentication (jenkins_auth):

```python
import time
import swaggyjenkins
from swaggyjenkins.api import blue_ocean_api
from swaggyjenkins.model.scm_organisations import ScmOrganisations
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
    username = 'YOUR_USERNAME',
    password = 'YOUR_PASSWORD'
)

# Enter a context with an instance of the API client
with swaggyjenkins.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = blue_ocean_api.BlueOceanApi(api_client)
    organization = "organization_example" # str | Name of the organization
    scm = "scm_example" # str | Name of SCM
    credential_id = "credentialId_example" # str | Credential ID (optional)

    # example passing only required values which don't have defaults set
    try:
        api_response = api_instance.get_scm_organisations(organization, scm)
        pprint(api_response)
    except swaggyjenkins.ApiException as e:
        print("Exception when calling BlueOceanApi->get_scm_organisations: %s\n" % e)

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        api_response = api_instance.get_scm_organisations(organization, scm, credential_id=credential_id)
        pprint(api_response)
    except swaggyjenkins.ApiException as e:
        print("Exception when calling BlueOceanApi->get_scm_organisations: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **str**| Name of the organization |
 **scm** | **str**| Name of SCM |
 **credential_id** | **str**| Credential ID | [optional]

### Return type

[**ScmOrganisations**](ScmOrganisations.md)

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
import time
import swaggyjenkins
from swaggyjenkins.api import blue_ocean_api
from swaggyjenkins.model.user import User
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
    username = 'YOUR_USERNAME',
    password = 'YOUR_PASSWORD'
)

# Enter a context with an instance of the API client
with swaggyjenkins.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = blue_ocean_api.BlueOceanApi(api_client)
    organization = "organization_example" # str | Name of the organization
    user = "user_example" # str | Name of the user

    # example passing only required values which don't have defaults set
    try:
        api_response = api_instance.get_user(organization, user)
        pprint(api_response)
    except swaggyjenkins.ApiException as e:
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
> UserFavorites get_user_favorites(user)



Retrieve user favorites details for an organization

### Example

* Basic Authentication (jenkins_auth):

```python
import time
import swaggyjenkins
from swaggyjenkins.api import blue_ocean_api
from swaggyjenkins.model.user_favorites import UserFavorites
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
    username = 'YOUR_USERNAME',
    password = 'YOUR_PASSWORD'
)

# Enter a context with an instance of the API client
with swaggyjenkins.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = blue_ocean_api.BlueOceanApi(api_client)
    user = "user_example" # str | Name of the user

    # example passing only required values which don't have defaults set
    try:
        api_response = api_instance.get_user_favorites(user)
        pprint(api_response)
    except swaggyjenkins.ApiException as e:
        print("Exception when calling BlueOceanApi->get_user_favorites: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user** | **str**| Name of the user |

### Return type

[**UserFavorites**](UserFavorites.md)

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
import time
import swaggyjenkins
from swaggyjenkins.api import blue_ocean_api
from swaggyjenkins.model.user import User
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
    username = 'YOUR_USERNAME',
    password = 'YOUR_PASSWORD'
)

# Enter a context with an instance of the API client
with swaggyjenkins.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = blue_ocean_api.BlueOceanApi(api_client)
    organization = "organization_example" # str | Name of the organization

    # example passing only required values which don't have defaults set
    try:
        api_response = api_instance.get_users(organization)
        pprint(api_response)
    except swaggyjenkins.ApiException as e:
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
import time
import swaggyjenkins
from swaggyjenkins.api import blue_ocean_api
from swaggyjenkins.model.queue_item_impl import QueueItemImpl
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
    username = 'YOUR_USERNAME',
    password = 'YOUR_PASSWORD'
)

# Enter a context with an instance of the API client
with swaggyjenkins.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = blue_ocean_api.BlueOceanApi(api_client)
    organization = "organization_example" # str | Name of the organization
    pipeline = "pipeline_example" # str | Name of the pipeline
    run = "run_example" # str | Name of the run

    # example passing only required values which don't have defaults set
    try:
        api_response = api_instance.post_pipeline_run(organization, pipeline, run)
        pprint(api_response)
    except swaggyjenkins.ApiException as e:
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
import time
import swaggyjenkins
from swaggyjenkins.api import blue_ocean_api
from swaggyjenkins.model.queue_item_impl import QueueItemImpl
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
    username = 'YOUR_USERNAME',
    password = 'YOUR_PASSWORD'
)

# Enter a context with an instance of the API client
with swaggyjenkins.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = blue_ocean_api.BlueOceanApi(api_client)
    organization = "organization_example" # str | Name of the organization
    pipeline = "pipeline_example" # str | Name of the pipeline

    # example passing only required values which don't have defaults set
    try:
        api_response = api_instance.post_pipeline_runs(organization, pipeline)
        pprint(api_response)
    except swaggyjenkins.ApiException as e:
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
> FavoriteImpl put_pipeline_favorite(organization, pipeline, unknown_base_type)



Favorite/unfavorite a pipeline

### Example

* Basic Authentication (jenkins_auth):

```python
import time
import swaggyjenkins
from swaggyjenkins.api import blue_ocean_api
from swaggyjenkins.model.unknownbasetype import UNKNOWNBASETYPE
from swaggyjenkins.model.favorite_impl import FavoriteImpl
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
    username = 'YOUR_USERNAME',
    password = 'YOUR_PASSWORD'
)

# Enter a context with an instance of the API client
with swaggyjenkins.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = blue_ocean_api.BlueOceanApi(api_client)
    organization = "organization_example" # str | Name of the organization
    pipeline = "pipeline_example" # str | Name of the pipeline
    unknown_base_type = None # UNKNOWN_BASE_TYPE | Set JSON string body to {\"favorite\": true} to favorite, set value to false to unfavorite

    # example passing only required values which don't have defaults set
    try:
        api_response = api_instance.put_pipeline_favorite(organization, pipeline, unknown_base_type)
        pprint(api_response)
    except swaggyjenkins.ApiException as e:
        print("Exception when calling BlueOceanApi->put_pipeline_favorite: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **str**| Name of the organization |
 **pipeline** | **str**| Name of the pipeline |
 **unknown_base_type** | [**UNKNOWN_BASE_TYPE**](UNKNOWN_BASE_TYPE.md)| Set JSON string body to {\&quot;favorite\&quot;: true} to favorite, set value to false to unfavorite |

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
> PipelineRun put_pipeline_run(organization, pipeline, run)



Stop a build of an organization pipeline

### Example

* Basic Authentication (jenkins_auth):

```python
import time
import swaggyjenkins
from swaggyjenkins.api import blue_ocean_api
from swaggyjenkins.model.pipeline_run import PipelineRun
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
    username = 'YOUR_USERNAME',
    password = 'YOUR_PASSWORD'
)

# Enter a context with an instance of the API client
with swaggyjenkins.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = blue_ocean_api.BlueOceanApi(api_client)
    organization = "organization_example" # str | Name of the organization
    pipeline = "pipeline_example" # str | Name of the pipeline
    run = "run_example" # str | Name of the run
    blocking = "blocking_example" # str | Set to true to make blocking stop, default: false (optional)
    time_out_in_secs = 1 # int | Timeout in seconds, default: 10 seconds (optional)

    # example passing only required values which don't have defaults set
    try:
        api_response = api_instance.put_pipeline_run(organization, pipeline, run)
        pprint(api_response)
    except swaggyjenkins.ApiException as e:
        print("Exception when calling BlueOceanApi->put_pipeline_run: %s\n" % e)

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        api_response = api_instance.put_pipeline_run(organization, pipeline, run, blocking=blocking, time_out_in_secs=time_out_in_secs)
        pprint(api_response)
    except swaggyjenkins.ApiException as e:
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
import time
import swaggyjenkins
from swaggyjenkins.api import blue_ocean_api
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
    username = 'YOUR_USERNAME',
    password = 'YOUR_PASSWORD'
)

# Enter a context with an instance of the API client
with swaggyjenkins.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = blue_ocean_api.BlueOceanApi(api_client)
    q = "q_example" # str | Query string

    # example passing only required values which don't have defaults set
    try:
        api_response = api_instance.search(q)
        pprint(api_response)
    except swaggyjenkins.ApiException as e:
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
import time
import swaggyjenkins
from swaggyjenkins.api import blue_ocean_api
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
    username = 'YOUR_USERNAME',
    password = 'YOUR_PASSWORD'
)

# Enter a context with an instance of the API client
with swaggyjenkins.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = blue_ocean_api.BlueOceanApi(api_client)
    q = "q_example" # str | Query string containing an array of class names

    # example passing only required values which don't have defaults set
    try:
        api_response = api_instance.search_classes(q)
        pprint(api_response)
    except swaggyjenkins.ApiException as e:
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


# swaggyjenkins.BlueOceanApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_pipeline_queue_item**](BlueOceanApi.md#delete_pipeline_queue_item) | **DELETE** /blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue} | 
[**get_authenticated_user**](BlueOceanApi.md#get_authenticated_user) | **GET** /blue/rest/organizations/{organization}/user/ | 
[**get_classes**](BlueOceanApi.md#get_classes) | **GET** /blue/rest/classes/{class} | 
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
```python
from __future__ import print_function
import time
import swaggyjenkins
from swaggyjenkins.rest import ApiException
from pprint import pprint

# Configure HTTP basic authorization: jenkins_auth
configuration = swaggyjenkins.Configuration()
configuration.username = 'YOUR_USERNAME'
configuration.password = 'YOUR_PASSWORD'

# create an instance of the API class
api_instance = swaggyjenkins.BlueOceanApi(swaggyjenkins.ApiClient(configuration))
organization = 'organization_example' # str | Name of the organization
pipeline = 'pipeline_example' # str | Name of the pipeline
queue = 'queue_example' # str | Name of the queue item

try: 
    api_instance.delete_pipeline_queue_item(organization, pipeline, queue)
except ApiException as e:
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
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_authenticated_user**
> User get_authenticated_user(organization)



Retrieve authenticated user details for an organization

### Example 
```python
from __future__ import print_function
import time
import swaggyjenkins
from swaggyjenkins.rest import ApiException
from pprint import pprint

# Configure HTTP basic authorization: jenkins_auth
configuration = swaggyjenkins.Configuration()
configuration.username = 'YOUR_USERNAME'
configuration.password = 'YOUR_PASSWORD'

# create an instance of the API class
api_instance = swaggyjenkins.BlueOceanApi(swaggyjenkins.ApiClient(configuration))
organization = 'organization_example' # str | Name of the organization

try: 
    api_response = api_instance.get_authenticated_user(organization)
    pprint(api_response)
except ApiException as e:
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_classes**
> str get_classes(_class)



Get a list of class names supported by a given class

### Example 
```python
from __future__ import print_function
import time
import swaggyjenkins
from swaggyjenkins.rest import ApiException
from pprint import pprint

# Configure HTTP basic authorization: jenkins_auth
configuration = swaggyjenkins.Configuration()
configuration.username = 'YOUR_USERNAME'
configuration.password = 'YOUR_PASSWORD'

# create an instance of the API class
api_instance = swaggyjenkins.BlueOceanApi(swaggyjenkins.ApiClient(configuration))
_class = '_class_example' # str | Name of the class

try: 
    api_response = api_instance.get_classes(_class)
    pprint(api_response)
except ApiException as e:
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_organisation**
> Organisation get_organisation(organization)



Retrieve organization details

### Example 
```python
from __future__ import print_function
import time
import swaggyjenkins
from swaggyjenkins.rest import ApiException
from pprint import pprint

# Configure HTTP basic authorization: jenkins_auth
configuration = swaggyjenkins.Configuration()
configuration.username = 'YOUR_USERNAME'
configuration.password = 'YOUR_PASSWORD'

# create an instance of the API class
api_instance = swaggyjenkins.BlueOceanApi(swaggyjenkins.ApiClient(configuration))
organization = 'organization_example' # str | Name of the organization

try: 
    api_response = api_instance.get_organisation(organization)
    pprint(api_response)
except ApiException as e:
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_organisations**
> Organisations get_organisations()



Retrieve all organizations details

### Example 
```python
from __future__ import print_function
import time
import swaggyjenkins
from swaggyjenkins.rest import ApiException
from pprint import pprint

# Configure HTTP basic authorization: jenkins_auth
configuration = swaggyjenkins.Configuration()
configuration.username = 'YOUR_USERNAME'
configuration.password = 'YOUR_PASSWORD'

# create an instance of the API class
api_instance = swaggyjenkins.BlueOceanApi(swaggyjenkins.ApiClient(configuration))

try: 
    api_response = api_instance.get_organisations()
    pprint(api_response)
except ApiException as e:
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_pipeline**
> Pipeline get_pipeline(organization, pipeline)



Retrieve pipeline details for an organization

### Example 
```python
from __future__ import print_function
import time
import swaggyjenkins
from swaggyjenkins.rest import ApiException
from pprint import pprint

# Configure HTTP basic authorization: jenkins_auth
configuration = swaggyjenkins.Configuration()
configuration.username = 'YOUR_USERNAME'
configuration.password = 'YOUR_PASSWORD'

# create an instance of the API class
api_instance = swaggyjenkins.BlueOceanApi(swaggyjenkins.ApiClient(configuration))
organization = 'organization_example' # str | Name of the organization
pipeline = 'pipeline_example' # str | Name of the pipeline

try: 
    api_response = api_instance.get_pipeline(organization, pipeline)
    pprint(api_response)
except ApiException as e:
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_pipeline_activities**
> PipelineActivities get_pipeline_activities(organization, pipeline)



Retrieve all activities details for an organization pipeline

### Example 
```python
from __future__ import print_function
import time
import swaggyjenkins
from swaggyjenkins.rest import ApiException
from pprint import pprint

# Configure HTTP basic authorization: jenkins_auth
configuration = swaggyjenkins.Configuration()
configuration.username = 'YOUR_USERNAME'
configuration.password = 'YOUR_PASSWORD'

# create an instance of the API class
api_instance = swaggyjenkins.BlueOceanApi(swaggyjenkins.ApiClient(configuration))
organization = 'organization_example' # str | Name of the organization
pipeline = 'pipeline_example' # str | Name of the pipeline

try: 
    api_response = api_instance.get_pipeline_activities(organization, pipeline)
    pprint(api_response)
except ApiException as e:
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_pipeline_branch**
> BranchImpl get_pipeline_branch(organization, pipeline, branch)



Retrieve branch details for an organization pipeline

### Example 
```python
from __future__ import print_function
import time
import swaggyjenkins
from swaggyjenkins.rest import ApiException
from pprint import pprint

# Configure HTTP basic authorization: jenkins_auth
configuration = swaggyjenkins.Configuration()
configuration.username = 'YOUR_USERNAME'
configuration.password = 'YOUR_PASSWORD'

# create an instance of the API class
api_instance = swaggyjenkins.BlueOceanApi(swaggyjenkins.ApiClient(configuration))
organization = 'organization_example' # str | Name of the organization
pipeline = 'pipeline_example' # str | Name of the pipeline
branch = 'branch_example' # str | Name of the branch

try: 
    api_response = api_instance.get_pipeline_branch(organization, pipeline, branch)
    pprint(api_response)
except ApiException as e:
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_pipeline_branch_run**
> PipelineRun get_pipeline_branch_run(organization, pipeline, branch, run)



Retrieve branch run details for an organization pipeline

### Example 
```python
from __future__ import print_function
import time
import swaggyjenkins
from swaggyjenkins.rest import ApiException
from pprint import pprint

# Configure HTTP basic authorization: jenkins_auth
configuration = swaggyjenkins.Configuration()
configuration.username = 'YOUR_USERNAME'
configuration.password = 'YOUR_PASSWORD'

# create an instance of the API class
api_instance = swaggyjenkins.BlueOceanApi(swaggyjenkins.ApiClient(configuration))
organization = 'organization_example' # str | Name of the organization
pipeline = 'pipeline_example' # str | Name of the pipeline
branch = 'branch_example' # str | Name of the branch
run = 'run_example' # str | Name of the run

try: 
    api_response = api_instance.get_pipeline_branch_run(organization, pipeline, branch, run)
    pprint(api_response)
except ApiException as e:
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_pipeline_branches**
> MultibranchPipeline get_pipeline_branches(organization, pipeline)



Retrieve all branches details for an organization pipeline

### Example 
```python
from __future__ import print_function
import time
import swaggyjenkins
from swaggyjenkins.rest import ApiException
from pprint import pprint

# Configure HTTP basic authorization: jenkins_auth
configuration = swaggyjenkins.Configuration()
configuration.username = 'YOUR_USERNAME'
configuration.password = 'YOUR_PASSWORD'

# create an instance of the API class
api_instance = swaggyjenkins.BlueOceanApi(swaggyjenkins.ApiClient(configuration))
organization = 'organization_example' # str | Name of the organization
pipeline = 'pipeline_example' # str | Name of the pipeline

try: 
    api_response = api_instance.get_pipeline_branches(organization, pipeline)
    pprint(api_response)
except ApiException as e:
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_pipeline_folder**
> PipelineFolderImpl get_pipeline_folder(organization, folder)



Retrieve pipeline folder for an organization

### Example 
```python
from __future__ import print_function
import time
import swaggyjenkins
from swaggyjenkins.rest import ApiException
from pprint import pprint

# Configure HTTP basic authorization: jenkins_auth
configuration = swaggyjenkins.Configuration()
configuration.username = 'YOUR_USERNAME'
configuration.password = 'YOUR_PASSWORD'

# create an instance of the API class
api_instance = swaggyjenkins.BlueOceanApi(swaggyjenkins.ApiClient(configuration))
organization = 'organization_example' # str | Name of the organization
folder = 'folder_example' # str | Name of the folder

try: 
    api_response = api_instance.get_pipeline_folder(organization, folder)
    pprint(api_response)
except ApiException as e:
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_pipeline_folder_pipeline**
> PipelineImpl get_pipeline_folder_pipeline(organization, pipeline, folder)



Retrieve pipeline details for an organization folder

### Example 
```python
from __future__ import print_function
import time
import swaggyjenkins
from swaggyjenkins.rest import ApiException
from pprint import pprint

# Configure HTTP basic authorization: jenkins_auth
configuration = swaggyjenkins.Configuration()
configuration.username = 'YOUR_USERNAME'
configuration.password = 'YOUR_PASSWORD'

# create an instance of the API class
api_instance = swaggyjenkins.BlueOceanApi(swaggyjenkins.ApiClient(configuration))
organization = 'organization_example' # str | Name of the organization
pipeline = 'pipeline_example' # str | Name of the pipeline
folder = 'folder_example' # str | Name of the folder

try: 
    api_response = api_instance.get_pipeline_folder_pipeline(organization, pipeline, folder)
    pprint(api_response)
except ApiException as e:
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_pipeline_queue**
> PipelineQueue get_pipeline_queue(organization, pipeline)



Retrieve queue details for an organization pipeline

### Example 
```python
from __future__ import print_function
import time
import swaggyjenkins
from swaggyjenkins.rest import ApiException
from pprint import pprint

# Configure HTTP basic authorization: jenkins_auth
configuration = swaggyjenkins.Configuration()
configuration.username = 'YOUR_USERNAME'
configuration.password = 'YOUR_PASSWORD'

# create an instance of the API class
api_instance = swaggyjenkins.BlueOceanApi(swaggyjenkins.ApiClient(configuration))
organization = 'organization_example' # str | Name of the organization
pipeline = 'pipeline_example' # str | Name of the pipeline

try: 
    api_response = api_instance.get_pipeline_queue(organization, pipeline)
    pprint(api_response)
except ApiException as e:
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_pipeline_run**
> PipelineRun get_pipeline_run(organization, pipeline, run)



Retrieve run details for an organization pipeline

### Example 
```python
from __future__ import print_function
import time
import swaggyjenkins
from swaggyjenkins.rest import ApiException
from pprint import pprint

# Configure HTTP basic authorization: jenkins_auth
configuration = swaggyjenkins.Configuration()
configuration.username = 'YOUR_USERNAME'
configuration.password = 'YOUR_PASSWORD'

# create an instance of the API class
api_instance = swaggyjenkins.BlueOceanApi(swaggyjenkins.ApiClient(configuration))
organization = 'organization_example' # str | Name of the organization
pipeline = 'pipeline_example' # str | Name of the pipeline
run = 'run_example' # str | Name of the run

try: 
    api_response = api_instance.get_pipeline_run(organization, pipeline, run)
    pprint(api_response)
except ApiException as e:
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_pipeline_run_log**
> str get_pipeline_run_log(organization, pipeline, run, start=start, download=download)



Get log for a pipeline run

### Example 
```python
from __future__ import print_function
import time
import swaggyjenkins
from swaggyjenkins.rest import ApiException
from pprint import pprint

# Configure HTTP basic authorization: jenkins_auth
configuration = swaggyjenkins.Configuration()
configuration.username = 'YOUR_USERNAME'
configuration.password = 'YOUR_PASSWORD'

# create an instance of the API class
api_instance = swaggyjenkins.BlueOceanApi(swaggyjenkins.ApiClient(configuration))
organization = 'organization_example' # str | Name of the organization
pipeline = 'pipeline_example' # str | Name of the pipeline
run = 'run_example' # str | Name of the run
start = 56 # int | Start position of the log (optional)
download = true # bool | Set to true in order to download the file, otherwise it's passed as a response body (optional)

try: 
    api_response = api_instance.get_pipeline_run_log(organization, pipeline, run, start=start, download=download)
    pprint(api_response)
except ApiException as e:
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_pipeline_run_node**
> PipelineRunNode get_pipeline_run_node(organization, pipeline, run, node)



Retrieve run node details for an organization pipeline

### Example 
```python
from __future__ import print_function
import time
import swaggyjenkins
from swaggyjenkins.rest import ApiException
from pprint import pprint

# Configure HTTP basic authorization: jenkins_auth
configuration = swaggyjenkins.Configuration()
configuration.username = 'YOUR_USERNAME'
configuration.password = 'YOUR_PASSWORD'

# create an instance of the API class
api_instance = swaggyjenkins.BlueOceanApi(swaggyjenkins.ApiClient(configuration))
organization = 'organization_example' # str | Name of the organization
pipeline = 'pipeline_example' # str | Name of the pipeline
run = 'run_example' # str | Name of the run
node = 'node_example' # str | Name of the node

try: 
    api_response = api_instance.get_pipeline_run_node(organization, pipeline, run, node)
    pprint(api_response)
except ApiException as e:
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_pipeline_run_node_step**
> PipelineStepImpl get_pipeline_run_node_step(organization, pipeline, run, node, step)



Retrieve run node details for an organization pipeline

### Example 
```python
from __future__ import print_function
import time
import swaggyjenkins
from swaggyjenkins.rest import ApiException
from pprint import pprint

# Configure HTTP basic authorization: jenkins_auth
configuration = swaggyjenkins.Configuration()
configuration.username = 'YOUR_USERNAME'
configuration.password = 'YOUR_PASSWORD'

# create an instance of the API class
api_instance = swaggyjenkins.BlueOceanApi(swaggyjenkins.ApiClient(configuration))
organization = 'organization_example' # str | Name of the organization
pipeline = 'pipeline_example' # str | Name of the pipeline
run = 'run_example' # str | Name of the run
node = 'node_example' # str | Name of the node
step = 'step_example' # str | Name of the step

try: 
    api_response = api_instance.get_pipeline_run_node_step(organization, pipeline, run, node, step)
    pprint(api_response)
except ApiException as e:
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_pipeline_run_node_step_log**
> str get_pipeline_run_node_step_log(organization, pipeline, run, node, step)



Get log for a pipeline run node step

### Example 
```python
from __future__ import print_function
import time
import swaggyjenkins
from swaggyjenkins.rest import ApiException
from pprint import pprint

# Configure HTTP basic authorization: jenkins_auth
configuration = swaggyjenkins.Configuration()
configuration.username = 'YOUR_USERNAME'
configuration.password = 'YOUR_PASSWORD'

# create an instance of the API class
api_instance = swaggyjenkins.BlueOceanApi(swaggyjenkins.ApiClient(configuration))
organization = 'organization_example' # str | Name of the organization
pipeline = 'pipeline_example' # str | Name of the pipeline
run = 'run_example' # str | Name of the run
node = 'node_example' # str | Name of the node
step = 'step_example' # str | Name of the step

try: 
    api_response = api_instance.get_pipeline_run_node_step_log(organization, pipeline, run, node, step)
    pprint(api_response)
except ApiException as e:
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_pipeline_run_node_steps**
> PipelineRunNodeSteps get_pipeline_run_node_steps(organization, pipeline, run, node)



Retrieve run node steps details for an organization pipeline

### Example 
```python
from __future__ import print_function
import time
import swaggyjenkins
from swaggyjenkins.rest import ApiException
from pprint import pprint

# Configure HTTP basic authorization: jenkins_auth
configuration = swaggyjenkins.Configuration()
configuration.username = 'YOUR_USERNAME'
configuration.password = 'YOUR_PASSWORD'

# create an instance of the API class
api_instance = swaggyjenkins.BlueOceanApi(swaggyjenkins.ApiClient(configuration))
organization = 'organization_example' # str | Name of the organization
pipeline = 'pipeline_example' # str | Name of the pipeline
run = 'run_example' # str | Name of the run
node = 'node_example' # str | Name of the node

try: 
    api_response = api_instance.get_pipeline_run_node_steps(organization, pipeline, run, node)
    pprint(api_response)
except ApiException as e:
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_pipeline_run_nodes**
> PipelineRunNodes get_pipeline_run_nodes(organization, pipeline, run)



Retrieve run nodes details for an organization pipeline

### Example 
```python
from __future__ import print_function
import time
import swaggyjenkins
from swaggyjenkins.rest import ApiException
from pprint import pprint

# Configure HTTP basic authorization: jenkins_auth
configuration = swaggyjenkins.Configuration()
configuration.username = 'YOUR_USERNAME'
configuration.password = 'YOUR_PASSWORD'

# create an instance of the API class
api_instance = swaggyjenkins.BlueOceanApi(swaggyjenkins.ApiClient(configuration))
organization = 'organization_example' # str | Name of the organization
pipeline = 'pipeline_example' # str | Name of the pipeline
run = 'run_example' # str | Name of the run

try: 
    api_response = api_instance.get_pipeline_run_nodes(organization, pipeline, run)
    pprint(api_response)
except ApiException as e:
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_pipeline_runs**
> PipelineRuns get_pipeline_runs(organization, pipeline)



Retrieve all runs details for an organization pipeline

### Example 
```python
from __future__ import print_function
import time
import swaggyjenkins
from swaggyjenkins.rest import ApiException
from pprint import pprint

# Configure HTTP basic authorization: jenkins_auth
configuration = swaggyjenkins.Configuration()
configuration.username = 'YOUR_USERNAME'
configuration.password = 'YOUR_PASSWORD'

# create an instance of the API class
api_instance = swaggyjenkins.BlueOceanApi(swaggyjenkins.ApiClient(configuration))
organization = 'organization_example' # str | Name of the organization
pipeline = 'pipeline_example' # str | Name of the pipeline

try: 
    api_response = api_instance.get_pipeline_runs(organization, pipeline)
    pprint(api_response)
except ApiException as e:
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_pipelines**
> Pipelines get_pipelines(organization)



Retrieve all pipelines details for an organization

### Example 
```python
from __future__ import print_function
import time
import swaggyjenkins
from swaggyjenkins.rest import ApiException
from pprint import pprint

# Configure HTTP basic authorization: jenkins_auth
configuration = swaggyjenkins.Configuration()
configuration.username = 'YOUR_USERNAME'
configuration.password = 'YOUR_PASSWORD'

# create an instance of the API class
api_instance = swaggyjenkins.BlueOceanApi(swaggyjenkins.ApiClient(configuration))
organization = 'organization_example' # str | Name of the organization

try: 
    api_response = api_instance.get_pipelines(organization)
    pprint(api_response)
except ApiException as e:
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_scm**
> GithubScm get_scm(organization, scm)



Retrieve SCM details for an organization

### Example 
```python
from __future__ import print_function
import time
import swaggyjenkins
from swaggyjenkins.rest import ApiException
from pprint import pprint

# Configure HTTP basic authorization: jenkins_auth
configuration = swaggyjenkins.Configuration()
configuration.username = 'YOUR_USERNAME'
configuration.password = 'YOUR_PASSWORD'

# create an instance of the API class
api_instance = swaggyjenkins.BlueOceanApi(swaggyjenkins.ApiClient(configuration))
organization = 'organization_example' # str | Name of the organization
scm = 'scm_example' # str | Name of SCM

try: 
    api_response = api_instance.get_scm(organization, scm)
    pprint(api_response)
except ApiException as e:
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_scm_organisation_repositories**
> ScmOrganisations get_scm_organisation_repositories(organization, scm, scm_organisation, credential_id=credential_id, page_size=page_size, page_number=page_number)



Retrieve SCM organization repositories details for an organization

### Example 
```python
from __future__ import print_function
import time
import swaggyjenkins
from swaggyjenkins.rest import ApiException
from pprint import pprint

# Configure HTTP basic authorization: jenkins_auth
configuration = swaggyjenkins.Configuration()
configuration.username = 'YOUR_USERNAME'
configuration.password = 'YOUR_PASSWORD'

# create an instance of the API class
api_instance = swaggyjenkins.BlueOceanApi(swaggyjenkins.ApiClient(configuration))
organization = 'organization_example' # str | Name of the organization
scm = 'scm_example' # str | Name of SCM
scm_organisation = 'scm_organisation_example' # str | Name of the SCM organization
credential_id = 'credential_id_example' # str | Credential ID (optional)
page_size = 56 # int | Number of items in a page (optional)
page_number = 56 # int | Page number (optional)

try: 
    api_response = api_instance.get_scm_organisation_repositories(organization, scm, scm_organisation, credential_id=credential_id, page_size=page_size, page_number=page_number)
    pprint(api_response)
except ApiException as e:
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_scm_organisation_repository**
> ScmOrganisations get_scm_organisation_repository(organization, scm, scm_organisation, repository, credential_id=credential_id)



Retrieve SCM organization repository details for an organization

### Example 
```python
from __future__ import print_function
import time
import swaggyjenkins
from swaggyjenkins.rest import ApiException
from pprint import pprint

# Configure HTTP basic authorization: jenkins_auth
configuration = swaggyjenkins.Configuration()
configuration.username = 'YOUR_USERNAME'
configuration.password = 'YOUR_PASSWORD'

# create an instance of the API class
api_instance = swaggyjenkins.BlueOceanApi(swaggyjenkins.ApiClient(configuration))
organization = 'organization_example' # str | Name of the organization
scm = 'scm_example' # str | Name of SCM
scm_organisation = 'scm_organisation_example' # str | Name of the SCM organization
repository = 'repository_example' # str | Name of the SCM repository
credential_id = 'credential_id_example' # str | Credential ID (optional)

try: 
    api_response = api_instance.get_scm_organisation_repository(organization, scm, scm_organisation, repository, credential_id=credential_id)
    pprint(api_response)
except ApiException as e:
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_scm_organisations**
> ScmOrganisations get_scm_organisations(organization, scm, credential_id=credential_id)



Retrieve SCM organizations details for an organization

### Example 
```python
from __future__ import print_function
import time
import swaggyjenkins
from swaggyjenkins.rest import ApiException
from pprint import pprint

# Configure HTTP basic authorization: jenkins_auth
configuration = swaggyjenkins.Configuration()
configuration.username = 'YOUR_USERNAME'
configuration.password = 'YOUR_PASSWORD'

# create an instance of the API class
api_instance = swaggyjenkins.BlueOceanApi(swaggyjenkins.ApiClient(configuration))
organization = 'organization_example' # str | Name of the organization
scm = 'scm_example' # str | Name of SCM
credential_id = 'credential_id_example' # str | Credential ID (optional)

try: 
    api_response = api_instance.get_scm_organisations(organization, scm, credential_id=credential_id)
    pprint(api_response)
except ApiException as e:
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_user**
> User get_user(organization, user)



Retrieve user details for an organization

### Example 
```python
from __future__ import print_function
import time
import swaggyjenkins
from swaggyjenkins.rest import ApiException
from pprint import pprint

# Configure HTTP basic authorization: jenkins_auth
configuration = swaggyjenkins.Configuration()
configuration.username = 'YOUR_USERNAME'
configuration.password = 'YOUR_PASSWORD'

# create an instance of the API class
api_instance = swaggyjenkins.BlueOceanApi(swaggyjenkins.ApiClient(configuration))
organization = 'organization_example' # str | Name of the organization
user = 'user_example' # str | Name of the user

try: 
    api_response = api_instance.get_user(organization, user)
    pprint(api_response)
except ApiException as e:
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_user_favorites**
> UserFavorites get_user_favorites(user)



Retrieve user favorites details for an organization

### Example 
```python
from __future__ import print_function
import time
import swaggyjenkins
from swaggyjenkins.rest import ApiException
from pprint import pprint

# Configure HTTP basic authorization: jenkins_auth
configuration = swaggyjenkins.Configuration()
configuration.username = 'YOUR_USERNAME'
configuration.password = 'YOUR_PASSWORD'

# create an instance of the API class
api_instance = swaggyjenkins.BlueOceanApi(swaggyjenkins.ApiClient(configuration))
user = 'user_example' # str | Name of the user

try: 
    api_response = api_instance.get_user_favorites(user)
    pprint(api_response)
except ApiException as e:
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_users**
> User get_users(organization)



Retrieve users details for an organization

### Example 
```python
from __future__ import print_function
import time
import swaggyjenkins
from swaggyjenkins.rest import ApiException
from pprint import pprint

# Configure HTTP basic authorization: jenkins_auth
configuration = swaggyjenkins.Configuration()
configuration.username = 'YOUR_USERNAME'
configuration.password = 'YOUR_PASSWORD'

# create an instance of the API class
api_instance = swaggyjenkins.BlueOceanApi(swaggyjenkins.ApiClient(configuration))
organization = 'organization_example' # str | Name of the organization

try: 
    api_response = api_instance.get_users(organization)
    pprint(api_response)
except ApiException as e:
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_pipeline_run**
> QueueItemImpl post_pipeline_run(organization, pipeline, run)



Replay an organization pipeline run

### Example 
```python
from __future__ import print_function
import time
import swaggyjenkins
from swaggyjenkins.rest import ApiException
from pprint import pprint

# Configure HTTP basic authorization: jenkins_auth
configuration = swaggyjenkins.Configuration()
configuration.username = 'YOUR_USERNAME'
configuration.password = 'YOUR_PASSWORD'

# create an instance of the API class
api_instance = swaggyjenkins.BlueOceanApi(swaggyjenkins.ApiClient(configuration))
organization = 'organization_example' # str | Name of the organization
pipeline = 'pipeline_example' # str | Name of the pipeline
run = 'run_example' # str | Name of the run

try: 
    api_response = api_instance.post_pipeline_run(organization, pipeline, run)
    pprint(api_response)
except ApiException as e:
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_pipeline_runs**
> QueueItemImpl post_pipeline_runs(organization, pipeline)



Start a build for an organization pipeline

### Example 
```python
from __future__ import print_function
import time
import swaggyjenkins
from swaggyjenkins.rest import ApiException
from pprint import pprint

# Configure HTTP basic authorization: jenkins_auth
configuration = swaggyjenkins.Configuration()
configuration.username = 'YOUR_USERNAME'
configuration.password = 'YOUR_PASSWORD'

# create an instance of the API class
api_instance = swaggyjenkins.BlueOceanApi(swaggyjenkins.ApiClient(configuration))
organization = 'organization_example' # str | Name of the organization
pipeline = 'pipeline_example' # str | Name of the pipeline

try: 
    api_response = api_instance.post_pipeline_runs(organization, pipeline)
    pprint(api_response)
except ApiException as e:
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **put_pipeline_favorite**
> FavoriteImpl put_pipeline_favorite(organization, pipeline, body)



Favorite/unfavorite a pipeline

### Example 
```python
from __future__ import print_function
import time
import swaggyjenkins
from swaggyjenkins.rest import ApiException
from pprint import pprint

# Configure HTTP basic authorization: jenkins_auth
configuration = swaggyjenkins.Configuration()
configuration.username = 'YOUR_USERNAME'
configuration.password = 'YOUR_PASSWORD'

# create an instance of the API class
api_instance = swaggyjenkins.BlueOceanApi(swaggyjenkins.ApiClient(configuration))
organization = 'organization_example' # str | Name of the organization
pipeline = 'pipeline_example' # str | Name of the pipeline
body = swaggyjenkins.Body() # Body | Set JSON string body to {\"favorite\": true} to favorite, set value to false to unfavorite

try: 
    api_response = api_instance.put_pipeline_favorite(organization, pipeline, body)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling BlueOceanApi->put_pipeline_favorite: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **str**| Name of the organization | 
 **pipeline** | **str**| Name of the pipeline | 
 **body** | [**Body**](Body.md)| Set JSON string body to {\&quot;favorite\&quot;: true} to favorite, set value to false to unfavorite | 

### Return type

[**FavoriteImpl**](FavoriteImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **put_pipeline_run**
> PipelineRun put_pipeline_run(organization, pipeline, run, blocking=blocking, time_out_in_secs=time_out_in_secs)



Stop a build of an organization pipeline

### Example 
```python
from __future__ import print_function
import time
import swaggyjenkins
from swaggyjenkins.rest import ApiException
from pprint import pprint

# Configure HTTP basic authorization: jenkins_auth
configuration = swaggyjenkins.Configuration()
configuration.username = 'YOUR_USERNAME'
configuration.password = 'YOUR_PASSWORD'

# create an instance of the API class
api_instance = swaggyjenkins.BlueOceanApi(swaggyjenkins.ApiClient(configuration))
organization = 'organization_example' # str | Name of the organization
pipeline = 'pipeline_example' # str | Name of the pipeline
run = 'run_example' # str | Name of the run
blocking = 'blocking_example' # str | Set to true to make blocking stop, default: false (optional)
time_out_in_secs = 56 # int | Timeout in seconds, default: 10 seconds (optional)

try: 
    api_response = api_instance.put_pipeline_run(organization, pipeline, run, blocking=blocking, time_out_in_secs=time_out_in_secs)
    pprint(api_response)
except ApiException as e:
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search**
> str search(q)



Search for any resource details

### Example 
```python
from __future__ import print_function
import time
import swaggyjenkins
from swaggyjenkins.rest import ApiException
from pprint import pprint

# Configure HTTP basic authorization: jenkins_auth
configuration = swaggyjenkins.Configuration()
configuration.username = 'YOUR_USERNAME'
configuration.password = 'YOUR_PASSWORD'

# create an instance of the API class
api_instance = swaggyjenkins.BlueOceanApi(swaggyjenkins.ApiClient(configuration))
q = 'q_example' # str | Query string

try: 
    api_response = api_instance.search(q)
    pprint(api_response)
except ApiException as e:
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search_classes**
> str search_classes(q)



Get classes details

### Example 
```python
from __future__ import print_function
import time
import swaggyjenkins
from swaggyjenkins.rest import ApiException
from pprint import pprint

# Configure HTTP basic authorization: jenkins_auth
configuration = swaggyjenkins.Configuration()
configuration.username = 'YOUR_USERNAME'
configuration.password = 'YOUR_PASSWORD'

# create an instance of the API class
api_instance = swaggyjenkins.BlueOceanApi(swaggyjenkins.ApiClient(configuration))
q = 'q_example' # str | Query string containing an array of class names

try: 
    api_response = api_instance.search_classes(q)
    pprint(api_response)
except ApiException as e:
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


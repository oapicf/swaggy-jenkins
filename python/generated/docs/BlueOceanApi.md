# swagger_client.BlueOceanApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_authenticated_user**](BlueOceanApi.md#get_authenticated_user) | **GET** /blue/rest/organizations/{organisation}/user/ | 
[**get_classes**](BlueOceanApi.md#get_classes) | **GET** /blue/rest/classes/{class} | 
[**get_organisation**](BlueOceanApi.md#get_organisation) | **GET** /blue/rest/organizations/{organisation} | 
[**get_organisations**](BlueOceanApi.md#get_organisations) | **GET** /blue/rest/organizations/ | 
[**get_pipeline_branch_by_org**](BlueOceanApi.md#get_pipeline_branch_by_org) | **GET** /blue/rest/organizations/{organisation}/pipelines/{pipeline}/branches/{branch}/ | 
[**get_pipeline_branches_by_org**](BlueOceanApi.md#get_pipeline_branches_by_org) | **GET** /blue/rest/organizations/{organisation}/pipelines/{pipeline}/branches | 
[**get_pipeline_by_org**](BlueOceanApi.md#get_pipeline_by_org) | **GET** /blue/rest/organizations/{organisation}/pipelines/{pipeline} | 
[**get_pipeline_folder_by_org**](BlueOceanApi.md#get_pipeline_folder_by_org) | **GET** /blue/rest/organizations/{organisation}/pipelines/{folder}/ | 
[**get_pipeline_folder_by_org_0**](BlueOceanApi.md#get_pipeline_folder_by_org_0) | **GET** /blue/rest/organizations/{organisation}/pipelines/{folder}/pipelines/{pipeline} | 
[**get_pipelines_by_org**](BlueOceanApi.md#get_pipelines_by_org) | **GET** /blue/rest/organizations/{organisation}/pipelines/ | 
[**get_user**](BlueOceanApi.md#get_user) | **GET** /blue/rest/organizations/{organisation}/users/{user} | 
[**get_users**](BlueOceanApi.md#get_users) | **GET** /blue/rest/organizations/{organisation}/users/ | 
[**search**](BlueOceanApi.md#search) | **GET** /blue/rest/classes/ | 
[**search_0**](BlueOceanApi.md#search_0) | **GET** /blue/rest/search/ | 


# **get_authenticated_user**
> SwaggyjenkinsUser get_authenticated_user(organisation)



Retrieve authenticated user details for an organisation

### Example 
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.BlueOceanApi()
organisation = 'organisation_example' # str | Name of the organisation

try: 
    api_response = api_instance.get_authenticated_user(organisation)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling BlueOceanApi->get_authenticated_user: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **str**| Name of the organisation | 

### Return type

[**SwaggyjenkinsUser**](SwaggyjenkinsUser.md)

### Authorization

No authorization required

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
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.BlueOceanApi()
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

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_organisation**
> SwaggyjenkinsOrganisation get_organisation(organisation)



Retrieve organisation details

### Example 
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.BlueOceanApi()
organisation = 'organisation_example' # str | Name of the organisation

try: 
    api_response = api_instance.get_organisation(organisation)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling BlueOceanApi->get_organisation: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **str**| Name of the organisation | 

### Return type

[**SwaggyjenkinsOrganisation**](SwaggyjenkinsOrganisation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_organisations**
> GetOrganisations get_organisations()



Retrieve all organisations details

### Example 
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.BlueOceanApi()

try: 
    api_response = api_instance.get_organisations()
    pprint(api_response)
except ApiException as e:
    print("Exception when calling BlueOceanApi->get_organisations: %s\n" % e)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetOrganisations**](GetOrganisations.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_pipeline_branch_by_org**
> IojenkinsblueoceanrestimplpipelineBranchImpl get_pipeline_branch_by_org(organisation, pipeline, branch)



Retrieve branch details for an organisation pipeline

### Example 
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.BlueOceanApi()
organisation = 'organisation_example' # str | Name of the organisation
pipeline = 'pipeline_example' # str | Name of the pipeline
branch = 'branch_example' # str | Name of the branch

try: 
    api_response = api_instance.get_pipeline_branch_by_org(organisation, pipeline, branch)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling BlueOceanApi->get_pipeline_branch_by_org: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **str**| Name of the organisation | 
 **pipeline** | **str**| Name of the pipeline | 
 **branch** | **str**| Name of the branch | 

### Return type

[**IojenkinsblueoceanrestimplpipelineBranchImpl**](IojenkinsblueoceanrestimplpipelineBranchImpl.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_pipeline_branches_by_org**
> GetMultibranchPipeline get_pipeline_branches_by_org(organisation, pipeline)



Retrieve all branches details for an organisation pipeline

### Example 
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.BlueOceanApi()
organisation = 'organisation_example' # str | Name of the organisation
pipeline = 'pipeline_example' # str | Name of the pipeline

try: 
    api_response = api_instance.get_pipeline_branches_by_org(organisation, pipeline)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling BlueOceanApi->get_pipeline_branches_by_org: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **str**| Name of the organisation | 
 **pipeline** | **str**| Name of the pipeline | 

### Return type

[**GetMultibranchPipeline**](GetMultibranchPipeline.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_pipeline_by_org**
> SwaggyjenkinsPipeline get_pipeline_by_org(organisation, pipeline)



Retrieve pipeline details for an organisation

### Example 
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.BlueOceanApi()
organisation = 'organisation_example' # str | Name of the organisation
pipeline = 'pipeline_example' # str | Name of the pipeline

try: 
    api_response = api_instance.get_pipeline_by_org(organisation, pipeline)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling BlueOceanApi->get_pipeline_by_org: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **str**| Name of the organisation | 
 **pipeline** | **str**| Name of the pipeline | 

### Return type

[**SwaggyjenkinsPipeline**](SwaggyjenkinsPipeline.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_pipeline_folder_by_org**
> IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl get_pipeline_folder_by_org(organisation, folder)



Retrieve pipeline folder for an organisation

### Example 
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.BlueOceanApi()
organisation = 'organisation_example' # str | Name of the organisation
folder = 'folder_example' # str | Name of the folder

try: 
    api_response = api_instance.get_pipeline_folder_by_org(organisation, folder)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling BlueOceanApi->get_pipeline_folder_by_org: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **str**| Name of the organisation | 
 **folder** | **str**| Name of the folder | 

### Return type

[**IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl**](IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_pipeline_folder_by_org_0**
> IojenkinsblueoceanserviceembeddedrestPipelineImpl get_pipeline_folder_by_org_0(organisation, pipeline, folder)



Retrieve pipeline details for an organisation folder

### Example 
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.BlueOceanApi()
organisation = 'organisation_example' # str | Name of the organisation
pipeline = 'pipeline_example' # str | Name of the pipeline
folder = 'folder_example' # str | Name of the folder

try: 
    api_response = api_instance.get_pipeline_folder_by_org_0(organisation, pipeline, folder)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling BlueOceanApi->get_pipeline_folder_by_org_0: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **str**| Name of the organisation | 
 **pipeline** | **str**| Name of the pipeline | 
 **folder** | **str**| Name of the folder | 

### Return type

[**IojenkinsblueoceanserviceembeddedrestPipelineImpl**](IojenkinsblueoceanserviceembeddedrestPipelineImpl.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_pipelines_by_org**
> GetPipelines get_pipelines_by_org(organisation)



Retrieve all pipelines details for an organisation

### Example 
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.BlueOceanApi()
organisation = 'organisation_example' # str | Name of the organisation

try: 
    api_response = api_instance.get_pipelines_by_org(organisation)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling BlueOceanApi->get_pipelines_by_org: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **str**| Name of the organisation | 

### Return type

[**GetPipelines**](GetPipelines.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_user**
> SwaggyjenkinsUser get_user(organisation, user)



Retrieve user details for an organisation

### Example 
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.BlueOceanApi()
organisation = 'organisation_example' # str | Name of the organisation
user = 'user_example' # str | Name of the user

try: 
    api_response = api_instance.get_user(organisation, user)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling BlueOceanApi->get_user: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **str**| Name of the organisation | 
 **user** | **str**| Name of the user | 

### Return type

[**SwaggyjenkinsUser**](SwaggyjenkinsUser.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_users**
> SwaggyjenkinsUser get_users(organisation)



Retrieve users details for an organisation

### Example 
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.BlueOceanApi()
organisation = 'organisation_example' # str | Name of the organisation

try: 
    api_response = api_instance.get_users(organisation)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling BlueOceanApi->get_users: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **str**| Name of the organisation | 

### Return type

[**SwaggyjenkinsUser**](SwaggyjenkinsUser.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search**
> str search(q)



Get classes details

### Example 
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.BlueOceanApi()
q = 'q_example' # str | Query string containing an array of class names

try: 
    api_response = api_instance.search(q)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling BlueOceanApi->search: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **str**| Query string containing an array of class names | 

### Return type

**str**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search_0**
> str search_0(q)



Search for any resource details

### Example 
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.BlueOceanApi()
q = 'q_example' # str | Query string

try: 
    api_response = api_instance.search_0(q)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling BlueOceanApi->search_0: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **str**| Query string | 

### Return type

**str**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# SwaggyJenkinsClient::BlueOceanApi

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
> SwaggyjenkinsUser get_authenticated_user(organisation, )



Retrieve authenticated user details for an organisation

### Example
```ruby
# load the gem
require 'swaggy_jenkins'

api_instance = SwaggyJenkinsClient::BlueOceanApi.new

organisation = "organisation_example" # String | Name of the organisation


begin
  result = api_instance.get_authenticated_user(organisation, )
  p result
rescue SwaggyJenkinsClient::ApiError => e
  puts "Exception when calling BlueOceanApi->get_authenticated_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **String**| Name of the organisation | 

### Return type

[**SwaggyjenkinsUser**](SwaggyjenkinsUser.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_classes**
> String get_classes(_class)



Get a list of class names supported by a given class

### Example
```ruby
# load the gem
require 'swaggy_jenkins'

api_instance = SwaggyJenkinsClient::BlueOceanApi.new

_class = "_class_example" # String | Name of the class


begin
  result = api_instance.get_classes(_class)
  p result
rescue SwaggyJenkinsClient::ApiError => e
  puts "Exception when calling BlueOceanApi->get_classes: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_class** | **String**| Name of the class | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_organisation**
> SwaggyjenkinsOrganisation get_organisation(organisation, )



Retrieve organisation details

### Example
```ruby
# load the gem
require 'swaggy_jenkins'

api_instance = SwaggyJenkinsClient::BlueOceanApi.new

organisation = "organisation_example" # String | Name of the organisation


begin
  result = api_instance.get_organisation(organisation, )
  p result
rescue SwaggyJenkinsClient::ApiError => e
  puts "Exception when calling BlueOceanApi->get_organisation: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **String**| Name of the organisation | 

### Return type

[**SwaggyjenkinsOrganisation**](SwaggyjenkinsOrganisation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_organisations**
> GetOrganisations get_organisations



Retrieve all organisations details

### Example
```ruby
# load the gem
require 'swaggy_jenkins'

api_instance = SwaggyJenkinsClient::BlueOceanApi.new

begin
  result = api_instance.get_organisations
  p result
rescue SwaggyJenkinsClient::ApiError => e
  puts "Exception when calling BlueOceanApi->get_organisations: #{e}"
end
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



# **get_pipeline_branch_by_org**
> IojenkinsblueoceanrestimplpipelineBranchImpl get_pipeline_branch_by_org(organisation, pipeline, branch)



Retrieve branch details for an organisation pipeline

### Example
```ruby
# load the gem
require 'swaggy_jenkins'

api_instance = SwaggyJenkinsClient::BlueOceanApi.new

organisation = "organisation_example" # String | Name of the organisation

pipeline = "pipeline_example" # String | Name of the pipeline

branch = "branch_example" # String | Name of the branch


begin
  result = api_instance.get_pipeline_branch_by_org(organisation, pipeline, branch)
  p result
rescue SwaggyJenkinsClient::ApiError => e
  puts "Exception when calling BlueOceanApi->get_pipeline_branch_by_org: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **String**| Name of the organisation | 
 **pipeline** | **String**| Name of the pipeline | 
 **branch** | **String**| Name of the branch | 

### Return type

[**IojenkinsblueoceanrestimplpipelineBranchImpl**](IojenkinsblueoceanrestimplpipelineBranchImpl.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_pipeline_branches_by_org**
> GetMultibranchPipeline get_pipeline_branches_by_org(organisation, pipeline, )



Retrieve all branches details for an organisation pipeline

### Example
```ruby
# load the gem
require 'swaggy_jenkins'

api_instance = SwaggyJenkinsClient::BlueOceanApi.new

organisation = "organisation_example" # String | Name of the organisation

pipeline = "pipeline_example" # String | Name of the pipeline


begin
  result = api_instance.get_pipeline_branches_by_org(organisation, pipeline, )
  p result
rescue SwaggyJenkinsClient::ApiError => e
  puts "Exception when calling BlueOceanApi->get_pipeline_branches_by_org: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **String**| Name of the organisation | 
 **pipeline** | **String**| Name of the pipeline | 

### Return type

[**GetMultibranchPipeline**](GetMultibranchPipeline.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_pipeline_by_org**
> SwaggyjenkinsPipeline get_pipeline_by_org(organisation, pipeline, )



Retrieve pipeline details for an organisation

### Example
```ruby
# load the gem
require 'swaggy_jenkins'

api_instance = SwaggyJenkinsClient::BlueOceanApi.new

organisation = "organisation_example" # String | Name of the organisation

pipeline = "pipeline_example" # String | Name of the pipeline


begin
  result = api_instance.get_pipeline_by_org(organisation, pipeline, )
  p result
rescue SwaggyJenkinsClient::ApiError => e
  puts "Exception when calling BlueOceanApi->get_pipeline_by_org: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **String**| Name of the organisation | 
 **pipeline** | **String**| Name of the pipeline | 

### Return type

[**SwaggyjenkinsPipeline**](SwaggyjenkinsPipeline.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_pipeline_folder_by_org**
> IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl get_pipeline_folder_by_org(organisation, folder)



Retrieve pipeline folder for an organisation

### Example
```ruby
# load the gem
require 'swaggy_jenkins'

api_instance = SwaggyJenkinsClient::BlueOceanApi.new

organisation = "organisation_example" # String | Name of the organisation

folder = "folder_example" # String | Name of the folder


begin
  result = api_instance.get_pipeline_folder_by_org(organisation, folder)
  p result
rescue SwaggyJenkinsClient::ApiError => e
  puts "Exception when calling BlueOceanApi->get_pipeline_folder_by_org: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **String**| Name of the organisation | 
 **folder** | **String**| Name of the folder | 

### Return type

[**IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl**](IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_pipeline_folder_by_org_0**
> IojenkinsblueoceanserviceembeddedrestPipelineImpl get_pipeline_folder_by_org_0(organisation, pipeline, folder)



Retrieve pipeline details for an organisation folder

### Example
```ruby
# load the gem
require 'swaggy_jenkins'

api_instance = SwaggyJenkinsClient::BlueOceanApi.new

organisation = "organisation_example" # String | Name of the organisation

pipeline = "pipeline_example" # String | Name of the pipeline

folder = "folder_example" # String | Name of the folder


begin
  result = api_instance.get_pipeline_folder_by_org_0(organisation, pipeline, folder)
  p result
rescue SwaggyJenkinsClient::ApiError => e
  puts "Exception when calling BlueOceanApi->get_pipeline_folder_by_org_0: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **String**| Name of the organisation | 
 **pipeline** | **String**| Name of the pipeline | 
 **folder** | **String**| Name of the folder | 

### Return type

[**IojenkinsblueoceanserviceembeddedrestPipelineImpl**](IojenkinsblueoceanserviceembeddedrestPipelineImpl.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_pipelines_by_org**
> GetPipelines get_pipelines_by_org(organisation, )



Retrieve all pipelines details for an organisation

### Example
```ruby
# load the gem
require 'swaggy_jenkins'

api_instance = SwaggyJenkinsClient::BlueOceanApi.new

organisation = "organisation_example" # String | Name of the organisation


begin
  result = api_instance.get_pipelines_by_org(organisation, )
  p result
rescue SwaggyJenkinsClient::ApiError => e
  puts "Exception when calling BlueOceanApi->get_pipelines_by_org: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **String**| Name of the organisation | 

### Return type

[**GetPipelines**](GetPipelines.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_user**
> SwaggyjenkinsUser get_user(organisation, user)



Retrieve user details for an organisation

### Example
```ruby
# load the gem
require 'swaggy_jenkins'

api_instance = SwaggyJenkinsClient::BlueOceanApi.new

organisation = "organisation_example" # String | Name of the organisation

user = "user_example" # String | Name of the user


begin
  result = api_instance.get_user(organisation, user)
  p result
rescue SwaggyJenkinsClient::ApiError => e
  puts "Exception when calling BlueOceanApi->get_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **String**| Name of the organisation | 
 **user** | **String**| Name of the user | 

### Return type

[**SwaggyjenkinsUser**](SwaggyjenkinsUser.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_users**
> SwaggyjenkinsUser get_users(organisation, )



Retrieve users details for an organisation

### Example
```ruby
# load the gem
require 'swaggy_jenkins'

api_instance = SwaggyJenkinsClient::BlueOceanApi.new

organisation = "organisation_example" # String | Name of the organisation


begin
  result = api_instance.get_users(organisation, )
  p result
rescue SwaggyJenkinsClient::ApiError => e
  puts "Exception when calling BlueOceanApi->get_users: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **String**| Name of the organisation | 

### Return type

[**SwaggyjenkinsUser**](SwaggyjenkinsUser.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **search**
> String search(q)



Get classes details

### Example
```ruby
# load the gem
require 'swaggy_jenkins'

api_instance = SwaggyJenkinsClient::BlueOceanApi.new

q = "q_example" # String | Query string containing an array of class names


begin
  result = api_instance.search(q)
  p result
rescue SwaggyJenkinsClient::ApiError => e
  puts "Exception when calling BlueOceanApi->search: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String**| Query string containing an array of class names | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **search_0**
> String search_0(q)



Search for any resource details

### Example
```ruby
# load the gem
require 'swaggy_jenkins'

api_instance = SwaggyJenkinsClient::BlueOceanApi.new

q = "q_example" # String | Query string


begin
  result = api_instance.search_0(q)
  p result
rescue SwaggyJenkinsClient::ApiError => e
  puts "Exception when calling BlueOceanApi->search_0: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String**| Query string | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json




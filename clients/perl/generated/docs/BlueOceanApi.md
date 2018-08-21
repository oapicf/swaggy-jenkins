# WWW::OpenAPIClient::BlueOceanApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::BlueOceanApi;
```

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
> delete_pipeline_queue_item(organization => $organization, pipeline => $pipeline, queue => $queue)



Delete queue item from an organization pipeline queue

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::BlueOceanApi;
my $api_instance = WWW::OpenAPIClient::BlueOceanApi->new(

    # Configure HTTP basic authorization: jenkins_auth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $organization = "organization_example"; # string | Name of the organization
my $pipeline = "pipeline_example"; # string | Name of the pipeline
my $queue = "queue_example"; # string | Name of the queue item

eval { 
    $api_instance->delete_pipeline_queue_item(organization => $organization, pipeline => $pipeline, queue => $queue);
};
if ($@) {
    warn "Exception when calling BlueOceanApi->delete_pipeline_queue_item: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization | 
 **pipeline** | **string**| Name of the pipeline | 
 **queue** | **string**| Name of the queue item | 

### Return type

void (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_authenticated_user**
> User get_authenticated_user(organization => $organization)



Retrieve authenticated user details for an organization

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::BlueOceanApi;
my $api_instance = WWW::OpenAPIClient::BlueOceanApi->new(

    # Configure HTTP basic authorization: jenkins_auth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $organization = "organization_example"; # string | Name of the organization

eval { 
    my $result = $api_instance->get_authenticated_user(organization => $organization);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BlueOceanApi->get_authenticated_user: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization | 

### Return type

[**User**](User.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_classes**
> string get_classes(class => $class)



Get a list of class names supported by a given class

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::BlueOceanApi;
my $api_instance = WWW::OpenAPIClient::BlueOceanApi->new(

    # Configure HTTP basic authorization: jenkins_auth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $class = "class_example"; # string | Name of the class

eval { 
    my $result = $api_instance->get_classes(class => $class);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BlueOceanApi->get_classes: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **class** | **string**| Name of the class | 

### Return type

**string**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_json_web_key**
> string get_json_web_key(key => $key)



Retrieve JSON Web Key

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::BlueOceanApi;
my $api_instance = WWW::OpenAPIClient::BlueOceanApi->new(
);

my $key = 56; # int | Key ID received as part of JWT header field kid

eval { 
    my $result = $api_instance->get_json_web_key(key => $key);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BlueOceanApi->get_json_web_key: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **int**| Key ID received as part of JWT header field kid | 

### Return type

**string**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_json_web_token**
> string get_json_web_token(expiry_time_in_mins => $expiry_time_in_mins, max_expiry_time_in_mins => $max_expiry_time_in_mins)



Retrieve JSON Web Token

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::BlueOceanApi;
my $api_instance = WWW::OpenAPIClient::BlueOceanApi->new(
);

my $expiry_time_in_mins = 56; # int | Token expiry time in minutes, default: 30 minutes
my $max_expiry_time_in_mins = 56; # int | Maximum token expiry time in minutes, default: 480 minutes

eval { 
    my $result = $api_instance->get_json_web_token(expiry_time_in_mins => $expiry_time_in_mins, max_expiry_time_in_mins => $max_expiry_time_in_mins);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BlueOceanApi->get_json_web_token: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **expiry_time_in_mins** | **int**| Token expiry time in minutes, default: 30 minutes | [optional] 
 **max_expiry_time_in_mins** | **int**| Maximum token expiry time in minutes, default: 480 minutes | [optional] 

### Return type

**string**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_organisation**
> Organisation get_organisation(organization => $organization)



Retrieve organization details

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::BlueOceanApi;
my $api_instance = WWW::OpenAPIClient::BlueOceanApi->new(

    # Configure HTTP basic authorization: jenkins_auth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $organization = "organization_example"; # string | Name of the organization

eval { 
    my $result = $api_instance->get_organisation(organization => $organization);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BlueOceanApi->get_organisation: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization | 

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
```perl
use Data::Dumper;
use WWW::OpenAPIClient::BlueOceanApi;
my $api_instance = WWW::OpenAPIClient::BlueOceanApi->new(

    # Configure HTTP basic authorization: jenkins_auth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);


eval { 
    my $result = $api_instance->get_organisations();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BlueOceanApi->get_organisations: $@\n";
}
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
> Pipeline get_pipeline(organization => $organization, pipeline => $pipeline)



Retrieve pipeline details for an organization

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::BlueOceanApi;
my $api_instance = WWW::OpenAPIClient::BlueOceanApi->new(

    # Configure HTTP basic authorization: jenkins_auth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $organization = "organization_example"; # string | Name of the organization
my $pipeline = "pipeline_example"; # string | Name of the pipeline

eval { 
    my $result = $api_instance->get_pipeline(organization => $organization, pipeline => $pipeline);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BlueOceanApi->get_pipeline: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization | 
 **pipeline** | **string**| Name of the pipeline | 

### Return type

[**Pipeline**](Pipeline.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_pipeline_activities**
> PipelineActivities get_pipeline_activities(organization => $organization, pipeline => $pipeline)



Retrieve all activities details for an organization pipeline

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::BlueOceanApi;
my $api_instance = WWW::OpenAPIClient::BlueOceanApi->new(

    # Configure HTTP basic authorization: jenkins_auth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $organization = "organization_example"; # string | Name of the organization
my $pipeline = "pipeline_example"; # string | Name of the pipeline

eval { 
    my $result = $api_instance->get_pipeline_activities(organization => $organization, pipeline => $pipeline);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BlueOceanApi->get_pipeline_activities: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization | 
 **pipeline** | **string**| Name of the pipeline | 

### Return type

[**PipelineActivities**](PipelineActivities.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_pipeline_branch**
> BranchImpl get_pipeline_branch(organization => $organization, pipeline => $pipeline, branch => $branch)



Retrieve branch details for an organization pipeline

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::BlueOceanApi;
my $api_instance = WWW::OpenAPIClient::BlueOceanApi->new(

    # Configure HTTP basic authorization: jenkins_auth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $organization = "organization_example"; # string | Name of the organization
my $pipeline = "pipeline_example"; # string | Name of the pipeline
my $branch = "branch_example"; # string | Name of the branch

eval { 
    my $result = $api_instance->get_pipeline_branch(organization => $organization, pipeline => $pipeline, branch => $branch);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BlueOceanApi->get_pipeline_branch: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization | 
 **pipeline** | **string**| Name of the pipeline | 
 **branch** | **string**| Name of the branch | 

### Return type

[**BranchImpl**](BranchImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_pipeline_branch_run**
> PipelineRun get_pipeline_branch_run(organization => $organization, pipeline => $pipeline, branch => $branch, run => $run)



Retrieve branch run details for an organization pipeline

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::BlueOceanApi;
my $api_instance = WWW::OpenAPIClient::BlueOceanApi->new(

    # Configure HTTP basic authorization: jenkins_auth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $organization = "organization_example"; # string | Name of the organization
my $pipeline = "pipeline_example"; # string | Name of the pipeline
my $branch = "branch_example"; # string | Name of the branch
my $run = "run_example"; # string | Name of the run

eval { 
    my $result = $api_instance->get_pipeline_branch_run(organization => $organization, pipeline => $pipeline, branch => $branch, run => $run);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BlueOceanApi->get_pipeline_branch_run: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization | 
 **pipeline** | **string**| Name of the pipeline | 
 **branch** | **string**| Name of the branch | 
 **run** | **string**| Name of the run | 

### Return type

[**PipelineRun**](PipelineRun.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_pipeline_branches**
> MultibranchPipeline get_pipeline_branches(organization => $organization, pipeline => $pipeline)



Retrieve all branches details for an organization pipeline

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::BlueOceanApi;
my $api_instance = WWW::OpenAPIClient::BlueOceanApi->new(

    # Configure HTTP basic authorization: jenkins_auth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $organization = "organization_example"; # string | Name of the organization
my $pipeline = "pipeline_example"; # string | Name of the pipeline

eval { 
    my $result = $api_instance->get_pipeline_branches(organization => $organization, pipeline => $pipeline);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BlueOceanApi->get_pipeline_branches: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization | 
 **pipeline** | **string**| Name of the pipeline | 

### Return type

[**MultibranchPipeline**](MultibranchPipeline.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_pipeline_folder**
> PipelineFolderImpl get_pipeline_folder(organization => $organization, folder => $folder)



Retrieve pipeline folder for an organization

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::BlueOceanApi;
my $api_instance = WWW::OpenAPIClient::BlueOceanApi->new(

    # Configure HTTP basic authorization: jenkins_auth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $organization = "organization_example"; # string | Name of the organization
my $folder = "folder_example"; # string | Name of the folder

eval { 
    my $result = $api_instance->get_pipeline_folder(organization => $organization, folder => $folder);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BlueOceanApi->get_pipeline_folder: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization | 
 **folder** | **string**| Name of the folder | 

### Return type

[**PipelineFolderImpl**](PipelineFolderImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_pipeline_folder_pipeline**
> PipelineImpl get_pipeline_folder_pipeline(organization => $organization, pipeline => $pipeline, folder => $folder)



Retrieve pipeline details for an organization folder

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::BlueOceanApi;
my $api_instance = WWW::OpenAPIClient::BlueOceanApi->new(

    # Configure HTTP basic authorization: jenkins_auth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $organization = "organization_example"; # string | Name of the organization
my $pipeline = "pipeline_example"; # string | Name of the pipeline
my $folder = "folder_example"; # string | Name of the folder

eval { 
    my $result = $api_instance->get_pipeline_folder_pipeline(organization => $organization, pipeline => $pipeline, folder => $folder);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BlueOceanApi->get_pipeline_folder_pipeline: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization | 
 **pipeline** | **string**| Name of the pipeline | 
 **folder** | **string**| Name of the folder | 

### Return type

[**PipelineImpl**](PipelineImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_pipeline_queue**
> PipelineQueue get_pipeline_queue(organization => $organization, pipeline => $pipeline)



Retrieve queue details for an organization pipeline

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::BlueOceanApi;
my $api_instance = WWW::OpenAPIClient::BlueOceanApi->new(

    # Configure HTTP basic authorization: jenkins_auth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $organization = "organization_example"; # string | Name of the organization
my $pipeline = "pipeline_example"; # string | Name of the pipeline

eval { 
    my $result = $api_instance->get_pipeline_queue(organization => $organization, pipeline => $pipeline);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BlueOceanApi->get_pipeline_queue: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization | 
 **pipeline** | **string**| Name of the pipeline | 

### Return type

[**PipelineQueue**](PipelineQueue.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_pipeline_run**
> PipelineRun get_pipeline_run(organization => $organization, pipeline => $pipeline, run => $run)



Retrieve run details for an organization pipeline

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::BlueOceanApi;
my $api_instance = WWW::OpenAPIClient::BlueOceanApi->new(

    # Configure HTTP basic authorization: jenkins_auth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $organization = "organization_example"; # string | Name of the organization
my $pipeline = "pipeline_example"; # string | Name of the pipeline
my $run = "run_example"; # string | Name of the run

eval { 
    my $result = $api_instance->get_pipeline_run(organization => $organization, pipeline => $pipeline, run => $run);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BlueOceanApi->get_pipeline_run: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization | 
 **pipeline** | **string**| Name of the pipeline | 
 **run** | **string**| Name of the run | 

### Return type

[**PipelineRun**](PipelineRun.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_pipeline_run_log**
> string get_pipeline_run_log(organization => $organization, pipeline => $pipeline, run => $run, start => $start, download => $download)



Get log for a pipeline run

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::BlueOceanApi;
my $api_instance = WWW::OpenAPIClient::BlueOceanApi->new(

    # Configure HTTP basic authorization: jenkins_auth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $organization = "organization_example"; # string | Name of the organization
my $pipeline = "pipeline_example"; # string | Name of the pipeline
my $run = "run_example"; # string | Name of the run
my $start = 56; # int | Start position of the log
my $download = null; # boolean | Set to true in order to download the file, otherwise it's passed as a response body

eval { 
    my $result = $api_instance->get_pipeline_run_log(organization => $organization, pipeline => $pipeline, run => $run, start => $start, download => $download);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BlueOceanApi->get_pipeline_run_log: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization | 
 **pipeline** | **string**| Name of the pipeline | 
 **run** | **string**| Name of the run | 
 **start** | **int**| Start position of the log | [optional] 
 **download** | **boolean**| Set to true in order to download the file, otherwise it&#39;s passed as a response body | [optional] 

### Return type

**string**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_pipeline_run_node**
> PipelineRunNode get_pipeline_run_node(organization => $organization, pipeline => $pipeline, run => $run, node => $node)



Retrieve run node details for an organization pipeline

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::BlueOceanApi;
my $api_instance = WWW::OpenAPIClient::BlueOceanApi->new(

    # Configure HTTP basic authorization: jenkins_auth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $organization = "organization_example"; # string | Name of the organization
my $pipeline = "pipeline_example"; # string | Name of the pipeline
my $run = "run_example"; # string | Name of the run
my $node = "node_example"; # string | Name of the node

eval { 
    my $result = $api_instance->get_pipeline_run_node(organization => $organization, pipeline => $pipeline, run => $run, node => $node);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BlueOceanApi->get_pipeline_run_node: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization | 
 **pipeline** | **string**| Name of the pipeline | 
 **run** | **string**| Name of the run | 
 **node** | **string**| Name of the node | 

### Return type

[**PipelineRunNode**](PipelineRunNode.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_pipeline_run_node_step**
> PipelineStepImpl get_pipeline_run_node_step(organization => $organization, pipeline => $pipeline, run => $run, node => $node, step => $step)



Retrieve run node details for an organization pipeline

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::BlueOceanApi;
my $api_instance = WWW::OpenAPIClient::BlueOceanApi->new(

    # Configure HTTP basic authorization: jenkins_auth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $organization = "organization_example"; # string | Name of the organization
my $pipeline = "pipeline_example"; # string | Name of the pipeline
my $run = "run_example"; # string | Name of the run
my $node = "node_example"; # string | Name of the node
my $step = "step_example"; # string | Name of the step

eval { 
    my $result = $api_instance->get_pipeline_run_node_step(organization => $organization, pipeline => $pipeline, run => $run, node => $node, step => $step);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BlueOceanApi->get_pipeline_run_node_step: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization | 
 **pipeline** | **string**| Name of the pipeline | 
 **run** | **string**| Name of the run | 
 **node** | **string**| Name of the node | 
 **step** | **string**| Name of the step | 

### Return type

[**PipelineStepImpl**](PipelineStepImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_pipeline_run_node_step_log**
> string get_pipeline_run_node_step_log(organization => $organization, pipeline => $pipeline, run => $run, node => $node, step => $step)



Get log for a pipeline run node step

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::BlueOceanApi;
my $api_instance = WWW::OpenAPIClient::BlueOceanApi->new(

    # Configure HTTP basic authorization: jenkins_auth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $organization = "organization_example"; # string | Name of the organization
my $pipeline = "pipeline_example"; # string | Name of the pipeline
my $run = "run_example"; # string | Name of the run
my $node = "node_example"; # string | Name of the node
my $step = "step_example"; # string | Name of the step

eval { 
    my $result = $api_instance->get_pipeline_run_node_step_log(organization => $organization, pipeline => $pipeline, run => $run, node => $node, step => $step);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BlueOceanApi->get_pipeline_run_node_step_log: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization | 
 **pipeline** | **string**| Name of the pipeline | 
 **run** | **string**| Name of the run | 
 **node** | **string**| Name of the node | 
 **step** | **string**| Name of the step | 

### Return type

**string**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_pipeline_run_node_steps**
> PipelineRunNodeSteps get_pipeline_run_node_steps(organization => $organization, pipeline => $pipeline, run => $run, node => $node)



Retrieve run node steps details for an organization pipeline

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::BlueOceanApi;
my $api_instance = WWW::OpenAPIClient::BlueOceanApi->new(

    # Configure HTTP basic authorization: jenkins_auth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $organization = "organization_example"; # string | Name of the organization
my $pipeline = "pipeline_example"; # string | Name of the pipeline
my $run = "run_example"; # string | Name of the run
my $node = "node_example"; # string | Name of the node

eval { 
    my $result = $api_instance->get_pipeline_run_node_steps(organization => $organization, pipeline => $pipeline, run => $run, node => $node);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BlueOceanApi->get_pipeline_run_node_steps: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization | 
 **pipeline** | **string**| Name of the pipeline | 
 **run** | **string**| Name of the run | 
 **node** | **string**| Name of the node | 

### Return type

[**PipelineRunNodeSteps**](PipelineRunNodeSteps.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_pipeline_run_nodes**
> PipelineRunNodes get_pipeline_run_nodes(organization => $organization, pipeline => $pipeline, run => $run)



Retrieve run nodes details for an organization pipeline

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::BlueOceanApi;
my $api_instance = WWW::OpenAPIClient::BlueOceanApi->new(

    # Configure HTTP basic authorization: jenkins_auth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $organization = "organization_example"; # string | Name of the organization
my $pipeline = "pipeline_example"; # string | Name of the pipeline
my $run = "run_example"; # string | Name of the run

eval { 
    my $result = $api_instance->get_pipeline_run_nodes(organization => $organization, pipeline => $pipeline, run => $run);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BlueOceanApi->get_pipeline_run_nodes: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization | 
 **pipeline** | **string**| Name of the pipeline | 
 **run** | **string**| Name of the run | 

### Return type

[**PipelineRunNodes**](PipelineRunNodes.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_pipeline_runs**
> PipelineRuns get_pipeline_runs(organization => $organization, pipeline => $pipeline)



Retrieve all runs details for an organization pipeline

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::BlueOceanApi;
my $api_instance = WWW::OpenAPIClient::BlueOceanApi->new(

    # Configure HTTP basic authorization: jenkins_auth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $organization = "organization_example"; # string | Name of the organization
my $pipeline = "pipeline_example"; # string | Name of the pipeline

eval { 
    my $result = $api_instance->get_pipeline_runs(organization => $organization, pipeline => $pipeline);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BlueOceanApi->get_pipeline_runs: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization | 
 **pipeline** | **string**| Name of the pipeline | 

### Return type

[**PipelineRuns**](PipelineRuns.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_pipelines**
> Pipelines get_pipelines(organization => $organization)



Retrieve all pipelines details for an organization

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::BlueOceanApi;
my $api_instance = WWW::OpenAPIClient::BlueOceanApi->new(

    # Configure HTTP basic authorization: jenkins_auth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $organization = "organization_example"; # string | Name of the organization

eval { 
    my $result = $api_instance->get_pipelines(organization => $organization);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BlueOceanApi->get_pipelines: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization | 

### Return type

[**Pipelines**](Pipelines.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_scm**
> GithubScm get_scm(organization => $organization, scm => $scm)



Retrieve SCM details for an organization

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::BlueOceanApi;
my $api_instance = WWW::OpenAPIClient::BlueOceanApi->new(

    # Configure HTTP basic authorization: jenkins_auth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $organization = "organization_example"; # string | Name of the organization
my $scm = "scm_example"; # string | Name of SCM

eval { 
    my $result = $api_instance->get_scm(organization => $organization, scm => $scm);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BlueOceanApi->get_scm: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization | 
 **scm** | **string**| Name of SCM | 

### Return type

[**GithubScm**](GithubScm.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_scm_organisation_repositories**
> ScmOrganisations get_scm_organisation_repositories(organization => $organization, scm => $scm, scm_organisation => $scm_organisation, credential_id => $credential_id, page_size => $page_size, page_number => $page_number)



Retrieve SCM organization repositories details for an organization

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::BlueOceanApi;
my $api_instance = WWW::OpenAPIClient::BlueOceanApi->new(

    # Configure HTTP basic authorization: jenkins_auth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $organization = "organization_example"; # string | Name of the organization
my $scm = "scm_example"; # string | Name of SCM
my $scm_organisation = "scm_organisation_example"; # string | Name of the SCM organization
my $credential_id = "credential_id_example"; # string | Credential ID
my $page_size = 56; # int | Number of items in a page
my $page_number = 56; # int | Page number

eval { 
    my $result = $api_instance->get_scm_organisation_repositories(organization => $organization, scm => $scm, scm_organisation => $scm_organisation, credential_id => $credential_id, page_size => $page_size, page_number => $page_number);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BlueOceanApi->get_scm_organisation_repositories: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization | 
 **scm** | **string**| Name of SCM | 
 **scm_organisation** | **string**| Name of the SCM organization | 
 **credential_id** | **string**| Credential ID | [optional] 
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
> ScmOrganisations get_scm_organisation_repository(organization => $organization, scm => $scm, scm_organisation => $scm_organisation, repository => $repository, credential_id => $credential_id)



Retrieve SCM organization repository details for an organization

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::BlueOceanApi;
my $api_instance = WWW::OpenAPIClient::BlueOceanApi->new(

    # Configure HTTP basic authorization: jenkins_auth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $organization = "organization_example"; # string | Name of the organization
my $scm = "scm_example"; # string | Name of SCM
my $scm_organisation = "scm_organisation_example"; # string | Name of the SCM organization
my $repository = "repository_example"; # string | Name of the SCM repository
my $credential_id = "credential_id_example"; # string | Credential ID

eval { 
    my $result = $api_instance->get_scm_organisation_repository(organization => $organization, scm => $scm, scm_organisation => $scm_organisation, repository => $repository, credential_id => $credential_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BlueOceanApi->get_scm_organisation_repository: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization | 
 **scm** | **string**| Name of SCM | 
 **scm_organisation** | **string**| Name of the SCM organization | 
 **repository** | **string**| Name of the SCM repository | 
 **credential_id** | **string**| Credential ID | [optional] 

### Return type

[**ScmOrganisations**](ScmOrganisations.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_scm_organisations**
> ScmOrganisations get_scm_organisations(organization => $organization, scm => $scm, credential_id => $credential_id)



Retrieve SCM organizations details for an organization

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::BlueOceanApi;
my $api_instance = WWW::OpenAPIClient::BlueOceanApi->new(

    # Configure HTTP basic authorization: jenkins_auth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $organization = "organization_example"; # string | Name of the organization
my $scm = "scm_example"; # string | Name of SCM
my $credential_id = "credential_id_example"; # string | Credential ID

eval { 
    my $result = $api_instance->get_scm_organisations(organization => $organization, scm => $scm, credential_id => $credential_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BlueOceanApi->get_scm_organisations: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization | 
 **scm** | **string**| Name of SCM | 
 **credential_id** | **string**| Credential ID | [optional] 

### Return type

[**ScmOrganisations**](ScmOrganisations.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_user**
> User get_user(organization => $organization, user => $user)



Retrieve user details for an organization

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::BlueOceanApi;
my $api_instance = WWW::OpenAPIClient::BlueOceanApi->new(

    # Configure HTTP basic authorization: jenkins_auth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $organization = "organization_example"; # string | Name of the organization
my $user = "user_example"; # string | Name of the user

eval { 
    my $result = $api_instance->get_user(organization => $organization, user => $user);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BlueOceanApi->get_user: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization | 
 **user** | **string**| Name of the user | 

### Return type

[**User**](User.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_user_favorites**
> UserFavorites get_user_favorites(user => $user)



Retrieve user favorites details for an organization

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::BlueOceanApi;
my $api_instance = WWW::OpenAPIClient::BlueOceanApi->new(

    # Configure HTTP basic authorization: jenkins_auth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $user = "user_example"; # string | Name of the user

eval { 
    my $result = $api_instance->get_user_favorites(user => $user);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BlueOceanApi->get_user_favorites: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user** | **string**| Name of the user | 

### Return type

[**UserFavorites**](UserFavorites.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_users**
> User get_users(organization => $organization)



Retrieve users details for an organization

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::BlueOceanApi;
my $api_instance = WWW::OpenAPIClient::BlueOceanApi->new(

    # Configure HTTP basic authorization: jenkins_auth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $organization = "organization_example"; # string | Name of the organization

eval { 
    my $result = $api_instance->get_users(organization => $organization);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BlueOceanApi->get_users: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization | 

### Return type

[**User**](User.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_pipeline_run**
> QueueItemImpl post_pipeline_run(organization => $organization, pipeline => $pipeline, run => $run)



Replay an organization pipeline run

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::BlueOceanApi;
my $api_instance = WWW::OpenAPIClient::BlueOceanApi->new(

    # Configure HTTP basic authorization: jenkins_auth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $organization = "organization_example"; # string | Name of the organization
my $pipeline = "pipeline_example"; # string | Name of the pipeline
my $run = "run_example"; # string | Name of the run

eval { 
    my $result = $api_instance->post_pipeline_run(organization => $organization, pipeline => $pipeline, run => $run);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BlueOceanApi->post_pipeline_run: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization | 
 **pipeline** | **string**| Name of the pipeline | 
 **run** | **string**| Name of the run | 

### Return type

[**QueueItemImpl**](QueueItemImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_pipeline_runs**
> QueueItemImpl post_pipeline_runs(organization => $organization, pipeline => $pipeline)



Start a build for an organization pipeline

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::BlueOceanApi;
my $api_instance = WWW::OpenAPIClient::BlueOceanApi->new(

    # Configure HTTP basic authorization: jenkins_auth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $organization = "organization_example"; # string | Name of the organization
my $pipeline = "pipeline_example"; # string | Name of the pipeline

eval { 
    my $result = $api_instance->post_pipeline_runs(organization => $organization, pipeline => $pipeline);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BlueOceanApi->post_pipeline_runs: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization | 
 **pipeline** | **string**| Name of the pipeline | 

### Return type

[**QueueItemImpl**](QueueItemImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **put_pipeline_favorite**
> FavoriteImpl put_pipeline_favorite(organization => $organization, pipeline => $pipeline, body => $body)



Favorite/unfavorite a pipeline

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::BlueOceanApi;
my $api_instance = WWW::OpenAPIClient::BlueOceanApi->new(

    # Configure HTTP basic authorization: jenkins_auth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $organization = "organization_example"; # string | Name of the organization
my $pipeline = "pipeline_example"; # string | Name of the pipeline
my $body = WWW::OpenAPIClient::Object::Body->new(); # Body | Set JSON string body to {"favorite": true} to favorite, set value to false to unfavorite

eval { 
    my $result = $api_instance->put_pipeline_favorite(organization => $organization, pipeline => $pipeline, body => $body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BlueOceanApi->put_pipeline_favorite: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization | 
 **pipeline** | **string**| Name of the pipeline | 
 **body** | [**Body**](Body.md)| Set JSON string body to {&quot;favorite&quot;: true} to favorite, set value to false to unfavorite | 

### Return type

[**FavoriteImpl**](FavoriteImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **put_pipeline_run**
> PipelineRun put_pipeline_run(organization => $organization, pipeline => $pipeline, run => $run, blocking => $blocking, time_out_in_secs => $time_out_in_secs)



Stop a build of an organization pipeline

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::BlueOceanApi;
my $api_instance = WWW::OpenAPIClient::BlueOceanApi->new(

    # Configure HTTP basic authorization: jenkins_auth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $organization = "organization_example"; # string | Name of the organization
my $pipeline = "pipeline_example"; # string | Name of the pipeline
my $run = "run_example"; # string | Name of the run
my $blocking = "blocking_example"; # string | Set to true to make blocking stop, default: false
my $time_out_in_secs = 56; # int | Timeout in seconds, default: 10 seconds

eval { 
    my $result = $api_instance->put_pipeline_run(organization => $organization, pipeline => $pipeline, run => $run, blocking => $blocking, time_out_in_secs => $time_out_in_secs);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BlueOceanApi->put_pipeline_run: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization | 
 **pipeline** | **string**| Name of the pipeline | 
 **run** | **string**| Name of the run | 
 **blocking** | **string**| Set to true to make blocking stop, default: false | [optional] 
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
> string search(q => $q)



Search for any resource details

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::BlueOceanApi;
my $api_instance = WWW::OpenAPIClient::BlueOceanApi->new(

    # Configure HTTP basic authorization: jenkins_auth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $q = "q_example"; # string | Query string

eval { 
    my $result = $api_instance->search(q => $q);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BlueOceanApi->search: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **string**| Query string | 

### Return type

**string**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search_classes**
> string search_classes(q => $q)



Get classes details

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::BlueOceanApi;
my $api_instance = WWW::OpenAPIClient::BlueOceanApi->new(

    # Configure HTTP basic authorization: jenkins_auth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $q = "q_example"; # string | Query string containing an array of class names

eval { 
    my $result = $api_instance->search_classes(q => $q);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BlueOceanApi->search_classes: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **string**| Query string containing an array of class names | 

### Return type

**string**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


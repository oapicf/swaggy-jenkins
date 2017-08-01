# WWW::SwaggerClient::BlueOceanApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::BlueOceanApi;
```

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
> SwaggyjenkinsUser get_authenticated_user(organisation => $organisation)



Retrieve authenticated user details for an organisation

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::BlueOceanApi;

my $api_instance = WWW::SwaggerClient::BlueOceanApi->new();
my $organisation = 'organisation_example'; # string | Name of the organisation

eval { 
    my $result = $api_instance->get_authenticated_user(organisation => $organisation);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BlueOceanApi->get_authenticated_user: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **string**| Name of the organisation | 

### Return type

[**SwaggyjenkinsUser**](SwaggyjenkinsUser.md)

### Authorization

No authorization required

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
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::BlueOceanApi;

my $api_instance = WWW::SwaggerClient::BlueOceanApi->new();
my $class = 'class_example'; # string | Name of the class

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

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_organisation**
> SwaggyjenkinsOrganisation get_organisation(organisation => $organisation)



Retrieve organisation details

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::BlueOceanApi;

my $api_instance = WWW::SwaggerClient::BlueOceanApi->new();
my $organisation = 'organisation_example'; # string | Name of the organisation

eval { 
    my $result = $api_instance->get_organisation(organisation => $organisation);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BlueOceanApi->get_organisation: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **string**| Name of the organisation | 

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
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::BlueOceanApi;

my $api_instance = WWW::SwaggerClient::BlueOceanApi->new();

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

[**GetOrganisations**](GetOrganisations.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_pipeline_branch_by_org**
> IojenkinsblueoceanrestimplpipelineBranchImpl get_pipeline_branch_by_org(organisation => $organisation, pipeline => $pipeline, branch => $branch)



Retrieve branch details for an organisation pipeline

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::BlueOceanApi;

my $api_instance = WWW::SwaggerClient::BlueOceanApi->new();
my $organisation = 'organisation_example'; # string | Name of the organisation
my $pipeline = 'pipeline_example'; # string | Name of the pipeline
my $branch = 'branch_example'; # string | Name of the branch

eval { 
    my $result = $api_instance->get_pipeline_branch_by_org(organisation => $organisation, pipeline => $pipeline, branch => $branch);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BlueOceanApi->get_pipeline_branch_by_org: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **string**| Name of the organisation | 
 **pipeline** | **string**| Name of the pipeline | 
 **branch** | **string**| Name of the branch | 

### Return type

[**IojenkinsblueoceanrestimplpipelineBranchImpl**](IojenkinsblueoceanrestimplpipelineBranchImpl.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_pipeline_branches_by_org**
> GetMultibranchPipeline get_pipeline_branches_by_org(organisation => $organisation, pipeline => $pipeline)



Retrieve all branches details for an organisation pipeline

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::BlueOceanApi;

my $api_instance = WWW::SwaggerClient::BlueOceanApi->new();
my $organisation = 'organisation_example'; # string | Name of the organisation
my $pipeline = 'pipeline_example'; # string | Name of the pipeline

eval { 
    my $result = $api_instance->get_pipeline_branches_by_org(organisation => $organisation, pipeline => $pipeline);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BlueOceanApi->get_pipeline_branches_by_org: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **string**| Name of the organisation | 
 **pipeline** | **string**| Name of the pipeline | 

### Return type

[**GetMultibranchPipeline**](GetMultibranchPipeline.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_pipeline_by_org**
> SwaggyjenkinsPipeline get_pipeline_by_org(organisation => $organisation, pipeline => $pipeline)



Retrieve pipeline details for an organisation

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::BlueOceanApi;

my $api_instance = WWW::SwaggerClient::BlueOceanApi->new();
my $organisation = 'organisation_example'; # string | Name of the organisation
my $pipeline = 'pipeline_example'; # string | Name of the pipeline

eval { 
    my $result = $api_instance->get_pipeline_by_org(organisation => $organisation, pipeline => $pipeline);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BlueOceanApi->get_pipeline_by_org: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **string**| Name of the organisation | 
 **pipeline** | **string**| Name of the pipeline | 

### Return type

[**SwaggyjenkinsPipeline**](SwaggyjenkinsPipeline.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_pipeline_folder_by_org**
> IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl get_pipeline_folder_by_org(organisation => $organisation, folder => $folder)



Retrieve pipeline folder for an organisation

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::BlueOceanApi;

my $api_instance = WWW::SwaggerClient::BlueOceanApi->new();
my $organisation = 'organisation_example'; # string | Name of the organisation
my $folder = 'folder_example'; # string | Name of the folder

eval { 
    my $result = $api_instance->get_pipeline_folder_by_org(organisation => $organisation, folder => $folder);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BlueOceanApi->get_pipeline_folder_by_org: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **string**| Name of the organisation | 
 **folder** | **string**| Name of the folder | 

### Return type

[**IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl**](IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_pipeline_folder_by_org_0**
> IojenkinsblueoceanserviceembeddedrestPipelineImpl get_pipeline_folder_by_org_0(organisation => $organisation, pipeline => $pipeline, folder => $folder)



Retrieve pipeline details for an organisation folder

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::BlueOceanApi;

my $api_instance = WWW::SwaggerClient::BlueOceanApi->new();
my $organisation = 'organisation_example'; # string | Name of the organisation
my $pipeline = 'pipeline_example'; # string | Name of the pipeline
my $folder = 'folder_example'; # string | Name of the folder

eval { 
    my $result = $api_instance->get_pipeline_folder_by_org_0(organisation => $organisation, pipeline => $pipeline, folder => $folder);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BlueOceanApi->get_pipeline_folder_by_org_0: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **string**| Name of the organisation | 
 **pipeline** | **string**| Name of the pipeline | 
 **folder** | **string**| Name of the folder | 

### Return type

[**IojenkinsblueoceanserviceembeddedrestPipelineImpl**](IojenkinsblueoceanserviceembeddedrestPipelineImpl.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_pipelines_by_org**
> GetPipelines get_pipelines_by_org(organisation => $organisation)



Retrieve all pipelines details for an organisation

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::BlueOceanApi;

my $api_instance = WWW::SwaggerClient::BlueOceanApi->new();
my $organisation = 'organisation_example'; # string | Name of the organisation

eval { 
    my $result = $api_instance->get_pipelines_by_org(organisation => $organisation);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BlueOceanApi->get_pipelines_by_org: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **string**| Name of the organisation | 

### Return type

[**GetPipelines**](GetPipelines.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_user**
> SwaggyjenkinsUser get_user(organisation => $organisation, user => $user)



Retrieve user details for an organisation

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::BlueOceanApi;

my $api_instance = WWW::SwaggerClient::BlueOceanApi->new();
my $organisation = 'organisation_example'; # string | Name of the organisation
my $user = 'user_example'; # string | Name of the user

eval { 
    my $result = $api_instance->get_user(organisation => $organisation, user => $user);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BlueOceanApi->get_user: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **string**| Name of the organisation | 
 **user** | **string**| Name of the user | 

### Return type

[**SwaggyjenkinsUser**](SwaggyjenkinsUser.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_users**
> SwaggyjenkinsUser get_users(organisation => $organisation)



Retrieve users details for an organisation

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::BlueOceanApi;

my $api_instance = WWW::SwaggerClient::BlueOceanApi->new();
my $organisation = 'organisation_example'; # string | Name of the organisation

eval { 
    my $result = $api_instance->get_users(organisation => $organisation);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BlueOceanApi->get_users: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **string**| Name of the organisation | 

### Return type

[**SwaggyjenkinsUser**](SwaggyjenkinsUser.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search**
> string search(q => $q)



Get classes details

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::BlueOceanApi;

my $api_instance = WWW::SwaggerClient::BlueOceanApi->new();
my $q = 'q_example'; # string | Query string containing an array of class names

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
 **q** | **string**| Query string containing an array of class names | 

### Return type

**string**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search_0**
> string search_0(q => $q)



Search for any resource details

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::BlueOceanApi;

my $api_instance = WWW::SwaggerClient::BlueOceanApi->new();
my $q = 'q_example'; # string | Query string

eval { 
    my $result = $api_instance->search_0(q => $q);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BlueOceanApi->search_0: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **string**| Query string | 

### Return type

**string**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


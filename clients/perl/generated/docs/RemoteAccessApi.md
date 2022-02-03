# WWW::OpenAPIClient::RemoteAccessApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::RemoteAccessApi;
```

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
> ComputerSet get_computer(depth => $depth)



Retrieve computer details

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::RemoteAccessApi;
my $api_instance = WWW::OpenAPIClient::RemoteAccessApi->new(

    # Configure HTTP basic authorization: jenkins_auth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);

my $depth = 56; # int | Recursion depth in response model

eval {
    my $result = $api_instance->get_computer(depth => $depth);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling RemoteAccessApi->get_computer: $@\n";
}
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_jenkins**
> Hudson get_jenkins()



Retrieve Jenkins details

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::RemoteAccessApi;
my $api_instance = WWW::OpenAPIClient::RemoteAccessApi->new(

    # Configure HTTP basic authorization: jenkins_auth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);


eval {
    my $result = $api_instance->get_jenkins();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling RemoteAccessApi->get_jenkins: $@\n";
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

# **get_job**
> FreeStyleProject get_job(name => $name)



Retrieve job details

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::RemoteAccessApi;
my $api_instance = WWW::OpenAPIClient::RemoteAccessApi->new(

    # Configure HTTP basic authorization: jenkins_auth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);

my $name = "name_example"; # string | Name of the job

eval {
    my $result = $api_instance->get_job(name => $name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling RemoteAccessApi->get_job: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Name of the job | 

### Return type

[**FreeStyleProject**](FreeStyleProject.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_job_config**
> string get_job_config(name => $name)



Retrieve job configuration

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::RemoteAccessApi;
my $api_instance = WWW::OpenAPIClient::RemoteAccessApi->new(

    # Configure HTTP basic authorization: jenkins_auth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);

my $name = "name_example"; # string | Name of the job

eval {
    my $result = $api_instance->get_job_config(name => $name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling RemoteAccessApi->get_job_config: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Name of the job | 

### Return type

**string**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_job_last_build**
> FreeStyleBuild get_job_last_build(name => $name)



Retrieve job's last build details

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::RemoteAccessApi;
my $api_instance = WWW::OpenAPIClient::RemoteAccessApi->new(

    # Configure HTTP basic authorization: jenkins_auth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);

my $name = "name_example"; # string | Name of the job

eval {
    my $result = $api_instance->get_job_last_build(name => $name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling RemoteAccessApi->get_job_last_build: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Name of the job | 

### Return type

[**FreeStyleBuild**](FreeStyleBuild.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_job_progressive_text**
> get_job_progressive_text(name => $name, number => $number, start => $start)



Retrieve job's build progressive text output

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::RemoteAccessApi;
my $api_instance = WWW::OpenAPIClient::RemoteAccessApi->new(

    # Configure HTTP basic authorization: jenkins_auth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);

my $name = "name_example"; # string | Name of the job
my $number = "number_example"; # string | Build number
my $start = "start_example"; # string | Starting point of progressive text output

eval {
    $api_instance->get_job_progressive_text(name => $name, number => $number, start => $start);
};
if ($@) {
    warn "Exception when calling RemoteAccessApi->get_job_progressive_text: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Name of the job | 
 **number** | **string**| Build number | 
 **start** | **string**| Starting point of progressive text output | 

### Return type

void (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_queue**
> Queue get_queue()



Retrieve queue details

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::RemoteAccessApi;
my $api_instance = WWW::OpenAPIClient::RemoteAccessApi->new(

    # Configure HTTP basic authorization: jenkins_auth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);


eval {
    my $result = $api_instance->get_queue();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling RemoteAccessApi->get_queue: $@\n";
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

# **get_queue_item**
> Queue get_queue_item(number => $number)



Retrieve queued item details

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::RemoteAccessApi;
my $api_instance = WWW::OpenAPIClient::RemoteAccessApi->new(

    # Configure HTTP basic authorization: jenkins_auth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);

my $number = "number_example"; # string | Queue number

eval {
    my $result = $api_instance->get_queue_item(number => $number);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling RemoteAccessApi->get_queue_item: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **number** | **string**| Queue number | 

### Return type

[**Queue**](Queue.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_view**
> ListView get_view(name => $name)



Retrieve view details

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::RemoteAccessApi;
my $api_instance = WWW::OpenAPIClient::RemoteAccessApi->new(

    # Configure HTTP basic authorization: jenkins_auth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);

my $name = "name_example"; # string | Name of the view

eval {
    my $result = $api_instance->get_view(name => $name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling RemoteAccessApi->get_view: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Name of the view | 

### Return type

[**ListView**](ListView.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_view_config**
> string get_view_config(name => $name)



Retrieve view configuration

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::RemoteAccessApi;
my $api_instance = WWW::OpenAPIClient::RemoteAccessApi->new(

    # Configure HTTP basic authorization: jenkins_auth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);

my $name = "name_example"; # string | Name of the view

eval {
    my $result = $api_instance->get_view_config(name => $name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling RemoteAccessApi->get_view_config: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Name of the view | 

### Return type

**string**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **head_jenkins**
> head_jenkins()



Retrieve Jenkins headers

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::RemoteAccessApi;
my $api_instance = WWW::OpenAPIClient::RemoteAccessApi->new(

    # Configure HTTP basic authorization: jenkins_auth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);


eval {
    $api_instance->head_jenkins();
};
if ($@) {
    warn "Exception when calling RemoteAccessApi->head_jenkins: $@\n";
}
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_create_item**
> post_create_item(name => $name, from => $from, mode => $mode, jenkins_crumb => $jenkins_crumb, content_type => $content_type, body => $body)



Create a new job using job configuration, or copied from an existing job

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::RemoteAccessApi;
my $api_instance = WWW::OpenAPIClient::RemoteAccessApi->new(

    # Configure HTTP basic authorization: jenkins_auth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);

my $name = "name_example"; # string | Name of the new job
my $from = "from_example"; # string | Existing job to copy from
my $mode = "mode_example"; # string | Set to 'copy' for copying an existing job
my $jenkins_crumb = "jenkins_crumb_example"; # string | CSRF protection token
my $content_type = "content_type_example"; # string | Content type header application/xml
my $body = WWW::OpenAPIClient::Object::string->new(); # string | Job configuration in config.xml format

eval {
    $api_instance->post_create_item(name => $name, from => $from, mode => $mode, jenkins_crumb => $jenkins_crumb, content_type => $content_type, body => $body);
};
if ($@) {
    warn "Exception when calling RemoteAccessApi->post_create_item: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Name of the new job | 
 **from** | **string**| Existing job to copy from | [optional] 
 **mode** | **string**| Set to &#39;copy&#39; for copying an existing job | [optional] 
 **jenkins_crumb** | **string**| CSRF protection token | [optional] 
 **content_type** | **string**| Content type header application/xml | [optional] 
 **body** | **string**| Job configuration in config.xml format | [optional] 

### Return type

void (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_create_view**
> post_create_view(name => $name, jenkins_crumb => $jenkins_crumb, content_type => $content_type, body => $body)



Create a new view using view configuration

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::RemoteAccessApi;
my $api_instance = WWW::OpenAPIClient::RemoteAccessApi->new(

    # Configure HTTP basic authorization: jenkins_auth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);

my $name = "name_example"; # string | Name of the new view
my $jenkins_crumb = "jenkins_crumb_example"; # string | CSRF protection token
my $content_type = "content_type_example"; # string | Content type header application/xml
my $body = WWW::OpenAPIClient::Object::string->new(); # string | View configuration in config.xml format

eval {
    $api_instance->post_create_view(name => $name, jenkins_crumb => $jenkins_crumb, content_type => $content_type, body => $body);
};
if ($@) {
    warn "Exception when calling RemoteAccessApi->post_create_view: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Name of the new view | 
 **jenkins_crumb** | **string**| CSRF protection token | [optional] 
 **content_type** | **string**| Content type header application/xml | [optional] 
 **body** | **string**| View configuration in config.xml format | [optional] 

### Return type

void (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_job_build**
> post_job_build(name => $name, json => $json, token => $token, jenkins_crumb => $jenkins_crumb)



Build a job

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::RemoteAccessApi;
my $api_instance = WWW::OpenAPIClient::RemoteAccessApi->new(

    # Configure HTTP basic authorization: jenkins_auth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);

my $name = "name_example"; # string | Name of the job
my $json = "json_example"; # string | 
my $token = "token_example"; # string | 
my $jenkins_crumb = "jenkins_crumb_example"; # string | CSRF protection token

eval {
    $api_instance->post_job_build(name => $name, json => $json, token => $token, jenkins_crumb => $jenkins_crumb);
};
if ($@) {
    warn "Exception when calling RemoteAccessApi->post_job_build: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Name of the job | 
 **json** | **string**|  | 
 **token** | **string**|  | [optional] 
 **jenkins_crumb** | **string**| CSRF protection token | [optional] 

### Return type

void (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_job_config**
> post_job_config(name => $name, body => $body, jenkins_crumb => $jenkins_crumb)



Update job configuration

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::RemoteAccessApi;
my $api_instance = WWW::OpenAPIClient::RemoteAccessApi->new(

    # Configure HTTP basic authorization: jenkins_auth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);

my $name = "name_example"; # string | Name of the job
my $body = WWW::OpenAPIClient::Object::string->new(); # string | Job configuration in config.xml format
my $jenkins_crumb = "jenkins_crumb_example"; # string | CSRF protection token

eval {
    $api_instance->post_job_config(name => $name, body => $body, jenkins_crumb => $jenkins_crumb);
};
if ($@) {
    warn "Exception when calling RemoteAccessApi->post_job_config: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Name of the job | 
 **body** | **string**| Job configuration in config.xml format | 
 **jenkins_crumb** | **string**| CSRF protection token | [optional] 

### Return type

void (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_job_delete**
> post_job_delete(name => $name, jenkins_crumb => $jenkins_crumb)



Delete a job

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::RemoteAccessApi;
my $api_instance = WWW::OpenAPIClient::RemoteAccessApi->new(

    # Configure HTTP basic authorization: jenkins_auth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);

my $name = "name_example"; # string | Name of the job
my $jenkins_crumb = "jenkins_crumb_example"; # string | CSRF protection token

eval {
    $api_instance->post_job_delete(name => $name, jenkins_crumb => $jenkins_crumb);
};
if ($@) {
    warn "Exception when calling RemoteAccessApi->post_job_delete: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Name of the job | 
 **jenkins_crumb** | **string**| CSRF protection token | [optional] 

### Return type

void (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_job_disable**
> post_job_disable(name => $name, jenkins_crumb => $jenkins_crumb)



Disable a job

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::RemoteAccessApi;
my $api_instance = WWW::OpenAPIClient::RemoteAccessApi->new(

    # Configure HTTP basic authorization: jenkins_auth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);

my $name = "name_example"; # string | Name of the job
my $jenkins_crumb = "jenkins_crumb_example"; # string | CSRF protection token

eval {
    $api_instance->post_job_disable(name => $name, jenkins_crumb => $jenkins_crumb);
};
if ($@) {
    warn "Exception when calling RemoteAccessApi->post_job_disable: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Name of the job | 
 **jenkins_crumb** | **string**| CSRF protection token | [optional] 

### Return type

void (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_job_enable**
> post_job_enable(name => $name, jenkins_crumb => $jenkins_crumb)



Enable a job

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::RemoteAccessApi;
my $api_instance = WWW::OpenAPIClient::RemoteAccessApi->new(

    # Configure HTTP basic authorization: jenkins_auth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);

my $name = "name_example"; # string | Name of the job
my $jenkins_crumb = "jenkins_crumb_example"; # string | CSRF protection token

eval {
    $api_instance->post_job_enable(name => $name, jenkins_crumb => $jenkins_crumb);
};
if ($@) {
    warn "Exception when calling RemoteAccessApi->post_job_enable: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Name of the job | 
 **jenkins_crumb** | **string**| CSRF protection token | [optional] 

### Return type

void (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_job_last_build_stop**
> post_job_last_build_stop(name => $name, jenkins_crumb => $jenkins_crumb)



Stop a job

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::RemoteAccessApi;
my $api_instance = WWW::OpenAPIClient::RemoteAccessApi->new(

    # Configure HTTP basic authorization: jenkins_auth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);

my $name = "name_example"; # string | Name of the job
my $jenkins_crumb = "jenkins_crumb_example"; # string | CSRF protection token

eval {
    $api_instance->post_job_last_build_stop(name => $name, jenkins_crumb => $jenkins_crumb);
};
if ($@) {
    warn "Exception when calling RemoteAccessApi->post_job_last_build_stop: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Name of the job | 
 **jenkins_crumb** | **string**| CSRF protection token | [optional] 

### Return type

void (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_view_config**
> post_view_config(name => $name, body => $body, jenkins_crumb => $jenkins_crumb)



Update view configuration

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::RemoteAccessApi;
my $api_instance = WWW::OpenAPIClient::RemoteAccessApi->new(

    # Configure HTTP basic authorization: jenkins_auth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);

my $name = "name_example"; # string | Name of the view
my $body = WWW::OpenAPIClient::Object::string->new(); # string | View configuration in config.xml format
my $jenkins_crumb = "jenkins_crumb_example"; # string | CSRF protection token

eval {
    $api_instance->post_view_config(name => $name, body => $body, jenkins_crumb => $jenkins_crumb);
};
if ($@) {
    warn "Exception when calling RemoteAccessApi->post_view_config: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Name of the view | 
 **body** | **string**| View configuration in config.xml format | 
 **jenkins_crumb** | **string**| CSRF protection token | [optional] 

### Return type

void (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


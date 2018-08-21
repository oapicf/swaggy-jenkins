# OAIRemoteAccessApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getComputer**](OAIRemoteAccessApi.md#getcomputer) | **GET** /computer/api/json | 
[**getCrumb**](OAIRemoteAccessApi.md#getcrumb) | **GET** /crumbIssuer/api/json | 
[**getJenkins**](OAIRemoteAccessApi.md#getjenkins) | **GET** /api/json | 
[**getJob**](OAIRemoteAccessApi.md#getjob) | **GET** /job/{name}/api/json | 
[**getJobConfig**](OAIRemoteAccessApi.md#getjobconfig) | **GET** /job/{name}/config.xml | 
[**getJobLastBuild**](OAIRemoteAccessApi.md#getjoblastbuild) | **GET** /job/{name}/lastBuild/api/json | 
[**getJobProgressiveText**](OAIRemoteAccessApi.md#getjobprogressivetext) | **GET** /job/{name}/{number}/logText/progressiveText | 
[**getQueue**](OAIRemoteAccessApi.md#getqueue) | **GET** /queue/api/json | 
[**getQueueItem**](OAIRemoteAccessApi.md#getqueueitem) | **GET** /queue/item/{number}/api/json | 
[**getView**](OAIRemoteAccessApi.md#getview) | **GET** /view/{name}/api/json | 
[**getViewConfig**](OAIRemoteAccessApi.md#getviewconfig) | **GET** /view/{name}/config.xml | 
[**headJenkins**](OAIRemoteAccessApi.md#headjenkins) | **HEAD** /api/json | 
[**postCreateItem**](OAIRemoteAccessApi.md#postcreateitem) | **POST** /createItem | 
[**postCreateView**](OAIRemoteAccessApi.md#postcreateview) | **POST** /createView | 
[**postJobBuild**](OAIRemoteAccessApi.md#postjobbuild) | **POST** /job/{name}/build | 
[**postJobConfig**](OAIRemoteAccessApi.md#postjobconfig) | **POST** /job/{name}/config.xml | 
[**postJobDelete**](OAIRemoteAccessApi.md#postjobdelete) | **POST** /job/{name}/doDelete | 
[**postJobDisable**](OAIRemoteAccessApi.md#postjobdisable) | **POST** /job/{name}/disable | 
[**postJobEnable**](OAIRemoteAccessApi.md#postjobenable) | **POST** /job/{name}/enable | 
[**postJobLastBuildStop**](OAIRemoteAccessApi.md#postjoblastbuildstop) | **POST** /job/{name}/lastBuild/stop | 
[**postViewConfig**](OAIRemoteAccessApi.md#postviewconfig) | **POST** /view/{name}/config.xml | 


# **getComputer**
```objc
-(NSURLSessionTask*) getComputerWithDepth: (NSNumber*) depth
        completionHandler: (void (^)(OAIComputerSet* output, NSError* error)) handler;
```



Retrieve computer details

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: jenkins_auth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* depth = @56; // Recursion depth in response model

OAIRemoteAccessApi*apiInstance = [[OAIRemoteAccessApi alloc] init];

[apiInstance getComputerWithDepth:depth
          completionHandler: ^(OAIComputerSet* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIRemoteAccessApi->getComputer: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **depth** | **NSNumber***| Recursion depth in response model | 

### Return type

[**OAIComputerSet***](OAIComputerSet.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCrumb**
```objc
-(NSURLSessionTask*) getCrumbWithCompletionHandler: 
        (void (^)(OAIDefaultCrumbIssuer* output, NSError* error)) handler;
```



Retrieve CSRF protection token

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: jenkins_auth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];



OAIRemoteAccessApi*apiInstance = [[OAIRemoteAccessApi alloc] init];

[apiInstance getCrumbWithCompletionHandler: 
          ^(OAIDefaultCrumbIssuer* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIRemoteAccessApi->getCrumb: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OAIDefaultCrumbIssuer***](OAIDefaultCrumbIssuer.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getJenkins**
```objc
-(NSURLSessionTask*) getJenkinsWithCompletionHandler: 
        (void (^)(OAIHudson* output, NSError* error)) handler;
```



Retrieve Jenkins details

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: jenkins_auth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];



OAIRemoteAccessApi*apiInstance = [[OAIRemoteAccessApi alloc] init];

[apiInstance getJenkinsWithCompletionHandler: 
          ^(OAIHudson* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIRemoteAccessApi->getJenkins: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OAIHudson***](OAIHudson.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getJob**
```objc
-(NSURLSessionTask*) getJobWithName: (NSString*) name
        completionHandler: (void (^)(OAIFreeStyleProject* output, NSError* error)) handler;
```



Retrieve job details

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: jenkins_auth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* name = @"name_example"; // Name of the job

OAIRemoteAccessApi*apiInstance = [[OAIRemoteAccessApi alloc] init];

[apiInstance getJobWithName:name
          completionHandler: ^(OAIFreeStyleProject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIRemoteAccessApi->getJob: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **NSString***| Name of the job | 

### Return type

[**OAIFreeStyleProject***](OAIFreeStyleProject.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getJobConfig**
```objc
-(NSURLSessionTask*) getJobConfigWithName: (NSString*) name
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```



Retrieve job configuration

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: jenkins_auth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* name = @"name_example"; // Name of the job

OAIRemoteAccessApi*apiInstance = [[OAIRemoteAccessApi alloc] init];

[apiInstance getJobConfigWithName:name
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIRemoteAccessApi->getJobConfig: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **NSString***| Name of the job | 

### Return type

**NSString***

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getJobLastBuild**
```objc
-(NSURLSessionTask*) getJobLastBuildWithName: (NSString*) name
        completionHandler: (void (^)(OAIFreeStyleBuild* output, NSError* error)) handler;
```



Retrieve job's last build details

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: jenkins_auth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* name = @"name_example"; // Name of the job

OAIRemoteAccessApi*apiInstance = [[OAIRemoteAccessApi alloc] init];

[apiInstance getJobLastBuildWithName:name
          completionHandler: ^(OAIFreeStyleBuild* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIRemoteAccessApi->getJobLastBuild: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **NSString***| Name of the job | 

### Return type

[**OAIFreeStyleBuild***](OAIFreeStyleBuild.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getJobProgressiveText**
```objc
-(NSURLSessionTask*) getJobProgressiveTextWithName: (NSString*) name
    number: (NSString*) number
    start: (NSString*) start
        completionHandler: (void (^)(NSError* error)) handler;
```



Retrieve job's build progressive text output

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: jenkins_auth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* name = @"name_example"; // Name of the job
NSString* number = @"number_example"; // Build number
NSString* start = @"start_example"; // Starting point of progressive text output

OAIRemoteAccessApi*apiInstance = [[OAIRemoteAccessApi alloc] init];

[apiInstance getJobProgressiveTextWithName:name
              number:number
              start:start
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIRemoteAccessApi->getJobProgressiveText: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **NSString***| Name of the job | 
 **number** | **NSString***| Build number | 
 **start** | **NSString***| Starting point of progressive text output | 

### Return type

void (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getQueue**
```objc
-(NSURLSessionTask*) getQueueWithCompletionHandler: 
        (void (^)(OAIQueue* output, NSError* error)) handler;
```



Retrieve queue details

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: jenkins_auth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];



OAIRemoteAccessApi*apiInstance = [[OAIRemoteAccessApi alloc] init];

[apiInstance getQueueWithCompletionHandler: 
          ^(OAIQueue* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIRemoteAccessApi->getQueue: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OAIQueue***](OAIQueue.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getQueueItem**
```objc
-(NSURLSessionTask*) getQueueItemWithNumber: (NSString*) number
        completionHandler: (void (^)(OAIQueue* output, NSError* error)) handler;
```



Retrieve queued item details

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: jenkins_auth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* number = @"number_example"; // Queue number

OAIRemoteAccessApi*apiInstance = [[OAIRemoteAccessApi alloc] init];

[apiInstance getQueueItemWithNumber:number
          completionHandler: ^(OAIQueue* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIRemoteAccessApi->getQueueItem: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **number** | **NSString***| Queue number | 

### Return type

[**OAIQueue***](OAIQueue.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getView**
```objc
-(NSURLSessionTask*) getViewWithName: (NSString*) name
        completionHandler: (void (^)(OAIListView* output, NSError* error)) handler;
```



Retrieve view details

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: jenkins_auth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* name = @"name_example"; // Name of the view

OAIRemoteAccessApi*apiInstance = [[OAIRemoteAccessApi alloc] init];

[apiInstance getViewWithName:name
          completionHandler: ^(OAIListView* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIRemoteAccessApi->getView: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **NSString***| Name of the view | 

### Return type

[**OAIListView***](OAIListView.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getViewConfig**
```objc
-(NSURLSessionTask*) getViewConfigWithName: (NSString*) name
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```



Retrieve view configuration

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: jenkins_auth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* name = @"name_example"; // Name of the view

OAIRemoteAccessApi*apiInstance = [[OAIRemoteAccessApi alloc] init];

[apiInstance getViewConfigWithName:name
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIRemoteAccessApi->getViewConfig: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **NSString***| Name of the view | 

### Return type

**NSString***

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **headJenkins**
```objc
-(NSURLSessionTask*) headJenkinsWithCompletionHandler: 
        (void (^)(NSError* error)) handler;
```



Retrieve Jenkins headers

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: jenkins_auth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];



OAIRemoteAccessApi*apiInstance = [[OAIRemoteAccessApi alloc] init];

[apiInstance headJenkinsWithCompletionHandler: 
          ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIRemoteAccessApi->headJenkins: %@", error);
                        }
                    }];
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

# **postCreateItem**
```objc
-(NSURLSessionTask*) postCreateItemWithName: (NSString*) name
    from: (NSString*) from
    mode: (NSString*) mode
    jenkinsCrumb: (NSString*) jenkinsCrumb
    contentType: (NSString*) contentType
    body: (NSString*) body
        completionHandler: (void (^)(NSError* error)) handler;
```



Create a new job using job configuration, or copied from an existing job

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: jenkins_auth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* name = @"name_example"; // Name of the new job
NSString* from = @"from_example"; // Existing job to copy from (optional)
NSString* mode = @"mode_example"; // Set to 'copy' for copying an existing job (optional)
NSString* jenkinsCrumb = @"jenkinsCrumb_example"; // CSRF protection token (optional)
NSString* contentType = @"contentType_example"; // Content type header application/xml (optional)
NSString* body = @"body_example"; // Job configuration in config.xml format (optional)

OAIRemoteAccessApi*apiInstance = [[OAIRemoteAccessApi alloc] init];

[apiInstance postCreateItemWithName:name
              from:from
              mode:mode
              jenkinsCrumb:jenkinsCrumb
              contentType:contentType
              body:body
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIRemoteAccessApi->postCreateItem: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **NSString***| Name of the new job | 
 **from** | **NSString***| Existing job to copy from | [optional] 
 **mode** | **NSString***| Set to &#39;copy&#39; for copying an existing job | [optional] 
 **jenkinsCrumb** | **NSString***| CSRF protection token | [optional] 
 **contentType** | **NSString***| Content type header application/xml | [optional] 
 **body** | **NSString***| Job configuration in config.xml format | [optional] 

### Return type

void (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postCreateView**
```objc
-(NSURLSessionTask*) postCreateViewWithName: (NSString*) name
    jenkinsCrumb: (NSString*) jenkinsCrumb
    contentType: (NSString*) contentType
    body: (NSString*) body
        completionHandler: (void (^)(NSError* error)) handler;
```



Create a new view using view configuration

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: jenkins_auth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* name = @"name_example"; // Name of the new view
NSString* jenkinsCrumb = @"jenkinsCrumb_example"; // CSRF protection token (optional)
NSString* contentType = @"contentType_example"; // Content type header application/xml (optional)
NSString* body = @"body_example"; // View configuration in config.xml format (optional)

OAIRemoteAccessApi*apiInstance = [[OAIRemoteAccessApi alloc] init];

[apiInstance postCreateViewWithName:name
              jenkinsCrumb:jenkinsCrumb
              contentType:contentType
              body:body
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIRemoteAccessApi->postCreateView: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **NSString***| Name of the new view | 
 **jenkinsCrumb** | **NSString***| CSRF protection token | [optional] 
 **contentType** | **NSString***| Content type header application/xml | [optional] 
 **body** | **NSString***| View configuration in config.xml format | [optional] 

### Return type

void (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postJobBuild**
```objc
-(NSURLSessionTask*) postJobBuildWithName: (NSString*) name
    json: (NSString*) json
    token: (NSString*) token
    jenkinsCrumb: (NSString*) jenkinsCrumb
        completionHandler: (void (^)(NSError* error)) handler;
```



Build a job

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: jenkins_auth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* name = @"name_example"; // Name of the job
NSString* json = @"json_example"; // 
NSString* token = @"token_example"; //  (optional)
NSString* jenkinsCrumb = @"jenkinsCrumb_example"; // CSRF protection token (optional)

OAIRemoteAccessApi*apiInstance = [[OAIRemoteAccessApi alloc] init];

[apiInstance postJobBuildWithName:name
              json:json
              token:token
              jenkinsCrumb:jenkinsCrumb
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIRemoteAccessApi->postJobBuild: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **NSString***| Name of the job | 
 **json** | **NSString***|  | 
 **token** | **NSString***|  | [optional] 
 **jenkinsCrumb** | **NSString***| CSRF protection token | [optional] 

### Return type

void (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postJobConfig**
```objc
-(NSURLSessionTask*) postJobConfigWithName: (NSString*) name
    body: (NSString*) body
    jenkinsCrumb: (NSString*) jenkinsCrumb
        completionHandler: (void (^)(NSError* error)) handler;
```



Update job configuration

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: jenkins_auth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* name = @"name_example"; // Name of the job
NSString* body = @"body_example"; // Job configuration in config.xml format
NSString* jenkinsCrumb = @"jenkinsCrumb_example"; // CSRF protection token (optional)

OAIRemoteAccessApi*apiInstance = [[OAIRemoteAccessApi alloc] init];

[apiInstance postJobConfigWithName:name
              body:body
              jenkinsCrumb:jenkinsCrumb
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIRemoteAccessApi->postJobConfig: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **NSString***| Name of the job | 
 **body** | **NSString***| Job configuration in config.xml format | 
 **jenkinsCrumb** | **NSString***| CSRF protection token | [optional] 

### Return type

void (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postJobDelete**
```objc
-(NSURLSessionTask*) postJobDeleteWithName: (NSString*) name
    jenkinsCrumb: (NSString*) jenkinsCrumb
        completionHandler: (void (^)(NSError* error)) handler;
```



Delete a job

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: jenkins_auth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* name = @"name_example"; // Name of the job
NSString* jenkinsCrumb = @"jenkinsCrumb_example"; // CSRF protection token (optional)

OAIRemoteAccessApi*apiInstance = [[OAIRemoteAccessApi alloc] init];

[apiInstance postJobDeleteWithName:name
              jenkinsCrumb:jenkinsCrumb
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIRemoteAccessApi->postJobDelete: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **NSString***| Name of the job | 
 **jenkinsCrumb** | **NSString***| CSRF protection token | [optional] 

### Return type

void (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postJobDisable**
```objc
-(NSURLSessionTask*) postJobDisableWithName: (NSString*) name
    jenkinsCrumb: (NSString*) jenkinsCrumb
        completionHandler: (void (^)(NSError* error)) handler;
```



Disable a job

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: jenkins_auth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* name = @"name_example"; // Name of the job
NSString* jenkinsCrumb = @"jenkinsCrumb_example"; // CSRF protection token (optional)

OAIRemoteAccessApi*apiInstance = [[OAIRemoteAccessApi alloc] init];

[apiInstance postJobDisableWithName:name
              jenkinsCrumb:jenkinsCrumb
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIRemoteAccessApi->postJobDisable: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **NSString***| Name of the job | 
 **jenkinsCrumb** | **NSString***| CSRF protection token | [optional] 

### Return type

void (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postJobEnable**
```objc
-(NSURLSessionTask*) postJobEnableWithName: (NSString*) name
    jenkinsCrumb: (NSString*) jenkinsCrumb
        completionHandler: (void (^)(NSError* error)) handler;
```



Enable a job

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: jenkins_auth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* name = @"name_example"; // Name of the job
NSString* jenkinsCrumb = @"jenkinsCrumb_example"; // CSRF protection token (optional)

OAIRemoteAccessApi*apiInstance = [[OAIRemoteAccessApi alloc] init];

[apiInstance postJobEnableWithName:name
              jenkinsCrumb:jenkinsCrumb
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIRemoteAccessApi->postJobEnable: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **NSString***| Name of the job | 
 **jenkinsCrumb** | **NSString***| CSRF protection token | [optional] 

### Return type

void (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postJobLastBuildStop**
```objc
-(NSURLSessionTask*) postJobLastBuildStopWithName: (NSString*) name
    jenkinsCrumb: (NSString*) jenkinsCrumb
        completionHandler: (void (^)(NSError* error)) handler;
```



Stop a job

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: jenkins_auth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* name = @"name_example"; // Name of the job
NSString* jenkinsCrumb = @"jenkinsCrumb_example"; // CSRF protection token (optional)

OAIRemoteAccessApi*apiInstance = [[OAIRemoteAccessApi alloc] init];

[apiInstance postJobLastBuildStopWithName:name
              jenkinsCrumb:jenkinsCrumb
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIRemoteAccessApi->postJobLastBuildStop: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **NSString***| Name of the job | 
 **jenkinsCrumb** | **NSString***| CSRF protection token | [optional] 

### Return type

void (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postViewConfig**
```objc
-(NSURLSessionTask*) postViewConfigWithName: (NSString*) name
    body: (NSString*) body
    jenkinsCrumb: (NSString*) jenkinsCrumb
        completionHandler: (void (^)(NSError* error)) handler;
```



Update view configuration

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: jenkins_auth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* name = @"name_example"; // Name of the view
NSString* body = @"body_example"; // View configuration in config.xml format
NSString* jenkinsCrumb = @"jenkinsCrumb_example"; // CSRF protection token (optional)

OAIRemoteAccessApi*apiInstance = [[OAIRemoteAccessApi alloc] init];

[apiInstance postViewConfigWithName:name
              body:body
              jenkinsCrumb:jenkinsCrumb
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIRemoteAccessApi->postViewConfig: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **NSString***| Name of the view | 
 **body** | **NSString***| View configuration in config.xml format | 
 **jenkinsCrumb** | **NSString***| CSRF protection token | [optional] 

### Return type

void (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


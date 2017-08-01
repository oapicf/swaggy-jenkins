# SWGRemoteAccessApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getComputer**](SWGRemoteAccessApi.md#getcomputer) | **GET** /computer/api/json?depth&#x3D;1 | 
[**getCrumb**](SWGRemoteAccessApi.md#getcrumb) | **GET** /crumbIssuer/api/json | 
[**getJenkins**](SWGRemoteAccessApi.md#getjenkins) | **GET** /api/json | 
[**getJob**](SWGRemoteAccessApi.md#getjob) | **GET** /job/{name}/api/json | 
[**getJobConfig**](SWGRemoteAccessApi.md#getjobconfig) | **GET** /job/{name}/config.xml | 
[**getJobLastBuild**](SWGRemoteAccessApi.md#getjoblastbuild) | **GET** /job/{name}/lastBuild/api/json | 
[**getJobProgressiveText**](SWGRemoteAccessApi.md#getjobprogressivetext) | **GET** /job/{name}/{number}/logText/progressiveText | 
[**getQueue**](SWGRemoteAccessApi.md#getqueue) | **GET** /queue/api/json | 
[**getQueueItem**](SWGRemoteAccessApi.md#getqueueitem) | **GET** /queue/item/{number}/api/json | 
[**getView**](SWGRemoteAccessApi.md#getview) | **GET** /view/{name}/api/json | 
[**getViewConfig**](SWGRemoteAccessApi.md#getviewconfig) | **GET** /view/{name}/config.xml | 
[**headJenkins**](SWGRemoteAccessApi.md#headjenkins) | **HEAD** /api/json | 
[**postCreateItem**](SWGRemoteAccessApi.md#postcreateitem) | **POST** /createItem | 
[**postCreateView**](SWGRemoteAccessApi.md#postcreateview) | **POST** /createView | 
[**postJobBuild**](SWGRemoteAccessApi.md#postjobbuild) | **POST** /job/{name}/build | 
[**postJobConfig**](SWGRemoteAccessApi.md#postjobconfig) | **POST** /job/{name}/config.xml | 
[**postJobDelete**](SWGRemoteAccessApi.md#postjobdelete) | **POST** /job/{name}/doDelete | 
[**postJobDisable**](SWGRemoteAccessApi.md#postjobdisable) | **POST** /job/{name}/disable | 
[**postJobEnable**](SWGRemoteAccessApi.md#postjobenable) | **POST** /job/{name}/enable | 
[**postJobLastBuildStop**](SWGRemoteAccessApi.md#postjoblastbuildstop) | **POST** /job/{name}/lastBuild/stop | 
[**postViewConfig**](SWGRemoteAccessApi.md#postviewconfig) | **POST** /view/{name}/config.xml | 


# **getComputer**
```objc
-(NSURLSessionTask*) getComputerWithCompletionHandler: 
        (void (^)(SWGHudsonmodelComputerSet* output, NSError* error)) handler;
```



Retrieve computer details

### Example 
```objc


SWGRemoteAccessApi*apiInstance = [[SWGRemoteAccessApi alloc] init];

[apiInstance getComputerWithCompletionHandler: 
          ^(SWGHudsonmodelComputerSet* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGRemoteAccessApi->getComputer: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SWGHudsonmodelComputerSet***](SWGHudsonmodelComputerSet.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCrumb**
```objc
-(NSURLSessionTask*) getCrumbWithCompletionHandler: 
        (void (^)(SWGHudsonsecuritycsrfDefaultCrumbIssuer* output, NSError* error)) handler;
```



Retrieve CSRF protection token

### Example 
```objc


SWGRemoteAccessApi*apiInstance = [[SWGRemoteAccessApi alloc] init];

[apiInstance getCrumbWithCompletionHandler: 
          ^(SWGHudsonsecuritycsrfDefaultCrumbIssuer* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGRemoteAccessApi->getCrumb: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SWGHudsonsecuritycsrfDefaultCrumbIssuer***](SWGHudsonsecuritycsrfDefaultCrumbIssuer.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getJenkins**
```objc
-(NSURLSessionTask*) getJenkinsWithCompletionHandler: 
        (void (^)(SWGHudsonmodelHudson* output, NSError* error)) handler;
```



Retrieve Jenkins details

### Example 
```objc


SWGRemoteAccessApi*apiInstance = [[SWGRemoteAccessApi alloc] init];

[apiInstance getJenkinsWithCompletionHandler: 
          ^(SWGHudsonmodelHudson* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGRemoteAccessApi->getJenkins: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SWGHudsonmodelHudson***](SWGHudsonmodelHudson.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getJob**
```objc
-(NSURLSessionTask*) getJobWithName: (NSString*) name
        completionHandler: (void (^)(SWGHudsonmodelFreeStyleProject* output, NSError* error)) handler;
```



Retrieve job details

### Example 
```objc

NSString* name = @"name_example"; // Name of the job

SWGRemoteAccessApi*apiInstance = [[SWGRemoteAccessApi alloc] init];

[apiInstance getJobWithName:name
          completionHandler: ^(SWGHudsonmodelFreeStyleProject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGRemoteAccessApi->getJob: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **NSString***| Name of the job | 

### Return type

[**SWGHudsonmodelFreeStyleProject***](SWGHudsonmodelFreeStyleProject.md)

### Authorization

No authorization required

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

NSString* name = @"name_example"; // Name of the job

SWGRemoteAccessApi*apiInstance = [[SWGRemoteAccessApi alloc] init];

[apiInstance getJobConfigWithName:name
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGRemoteAccessApi->getJobConfig: %@", error);
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

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getJobLastBuild**
```objc
-(NSURLSessionTask*) getJobLastBuildWithName: (NSString*) name
        completionHandler: (void (^)(SWGHudsonmodelFreeStyleBuild* output, NSError* error)) handler;
```



Retrieve job's last build details

### Example 
```objc

NSString* name = @"name_example"; // Name of the job

SWGRemoteAccessApi*apiInstance = [[SWGRemoteAccessApi alloc] init];

[apiInstance getJobLastBuildWithName:name
          completionHandler: ^(SWGHudsonmodelFreeStyleBuild* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGRemoteAccessApi->getJobLastBuild: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **NSString***| Name of the job | 

### Return type

[**SWGHudsonmodelFreeStyleBuild***](SWGHudsonmodelFreeStyleBuild.md)

### Authorization

No authorization required

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

NSString* name = @"name_example"; // Name of the job
NSString* number = @"number_example"; // Build number
NSString* start = @"start_example"; // Starting point of progressive text output

SWGRemoteAccessApi*apiInstance = [[SWGRemoteAccessApi alloc] init];

[apiInstance getJobProgressiveTextWithName:name
              number:number
              start:start
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling SWGRemoteAccessApi->getJobProgressiveText: %@", error);
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

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getQueue**
```objc
-(NSURLSessionTask*) getQueueWithCompletionHandler: 
        (void (^)(SWGHudsonmodelQueue* output, NSError* error)) handler;
```



Retrieve queue details

### Example 
```objc


SWGRemoteAccessApi*apiInstance = [[SWGRemoteAccessApi alloc] init];

[apiInstance getQueueWithCompletionHandler: 
          ^(SWGHudsonmodelQueue* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGRemoteAccessApi->getQueue: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SWGHudsonmodelQueue***](SWGHudsonmodelQueue.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getQueueItem**
```objc
-(NSURLSessionTask*) getQueueItemWithNumber: (NSString*) number
        completionHandler: (void (^)(SWGHudsonmodelQueue* output, NSError* error)) handler;
```



Retrieve queued item details

### Example 
```objc

NSString* number = @"number_example"; // Queue number

SWGRemoteAccessApi*apiInstance = [[SWGRemoteAccessApi alloc] init];

[apiInstance getQueueItemWithNumber:number
          completionHandler: ^(SWGHudsonmodelQueue* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGRemoteAccessApi->getQueueItem: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **number** | **NSString***| Queue number | 

### Return type

[**SWGHudsonmodelQueue***](SWGHudsonmodelQueue.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getView**
```objc
-(NSURLSessionTask*) getViewWithName: (NSString*) name
        completionHandler: (void (^)(SWGHudsonmodelListView* output, NSError* error)) handler;
```



Retrieve view details

### Example 
```objc

NSString* name = @"name_example"; // Name of the view

SWGRemoteAccessApi*apiInstance = [[SWGRemoteAccessApi alloc] init];

[apiInstance getViewWithName:name
          completionHandler: ^(SWGHudsonmodelListView* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGRemoteAccessApi->getView: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **NSString***| Name of the view | 

### Return type

[**SWGHudsonmodelListView***](SWGHudsonmodelListView.md)

### Authorization

No authorization required

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

NSString* name = @"name_example"; // Name of the view

SWGRemoteAccessApi*apiInstance = [[SWGRemoteAccessApi alloc] init];

[apiInstance getViewConfigWithName:name
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGRemoteAccessApi->getViewConfig: %@", error);
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

No authorization required

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


SWGRemoteAccessApi*apiInstance = [[SWGRemoteAccessApi alloc] init];

[apiInstance headJenkinsWithCompletionHandler: 
          ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling SWGRemoteAccessApi->headJenkins: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postCreateItem**
```objc
-(NSURLSessionTask*) postCreateItemWithName: (NSString*) name
    from: (NSString*) from
    mode: (NSString*) mode
    body: (NSString*) body
    jenkinsCrumb: (NSString*) jenkinsCrumb
    contentType: (NSString*) contentType
        completionHandler: (void (^)(NSError* error)) handler;
```



Create a new job using job configuration, or copied from an existing job

### Example 
```objc

NSString* name = @"name_example"; // Name of the new job
NSString* from = @"from_example"; // Existing job to copy from (optional)
NSString* mode = @"mode_example"; // Set to 'copy' for copying an existing job (optional)
NSString* body = body_example; // Job configuration in config.xml format (optional)
NSString* jenkinsCrumb = @"jenkinsCrumb_example"; // CSRF protection token (optional)
NSString* contentType = @"contentType_example"; // Content type header application/xml (optional)

SWGRemoteAccessApi*apiInstance = [[SWGRemoteAccessApi alloc] init];

[apiInstance postCreateItemWithName:name
              from:from
              mode:mode
              body:body
              jenkinsCrumb:jenkinsCrumb
              contentType:contentType
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling SWGRemoteAccessApi->postCreateItem: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **NSString***| Name of the new job | 
 **from** | **NSString***| Existing job to copy from | [optional] 
 **mode** | **NSString***| Set to &#39;copy&#39; for copying an existing job | [optional] 
 **body** | **NSString***| Job configuration in config.xml format | [optional] 
 **jenkinsCrumb** | **NSString***| CSRF protection token | [optional] 
 **contentType** | **NSString***| Content type header application/xml | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postCreateView**
```objc
-(NSURLSessionTask*) postCreateViewWithName: (NSString*) name
    body: (NSString*) body
    jenkinsCrumb: (NSString*) jenkinsCrumb
    contentType: (NSString*) contentType
        completionHandler: (void (^)(NSError* error)) handler;
```



Create a new view using view configuration

### Example 
```objc

NSString* name = @"name_example"; // Name of the new view
NSString* body = body_example; // View configuration in config.xml format (optional)
NSString* jenkinsCrumb = @"jenkinsCrumb_example"; // CSRF protection token (optional)
NSString* contentType = @"contentType_example"; // Content type header application/xml (optional)

SWGRemoteAccessApi*apiInstance = [[SWGRemoteAccessApi alloc] init];

[apiInstance postCreateViewWithName:name
              body:body
              jenkinsCrumb:jenkinsCrumb
              contentType:contentType
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling SWGRemoteAccessApi->postCreateView: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **NSString***| Name of the new view | 
 **body** | **NSString***| View configuration in config.xml format | [optional] 
 **jenkinsCrumb** | **NSString***| CSRF protection token | [optional] 
 **contentType** | **NSString***| Content type header application/xml | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

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

NSString* name = @"name_example"; // Name of the job
NSString* json = @"json_example"; // 
NSString* token = @"token_example"; //  (optional)
NSString* jenkinsCrumb = @"jenkinsCrumb_example"; // CSRF protection token (optional)

SWGRemoteAccessApi*apiInstance = [[SWGRemoteAccessApi alloc] init];

[apiInstance postJobBuildWithName:name
              json:json
              token:token
              jenkinsCrumb:jenkinsCrumb
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling SWGRemoteAccessApi->postJobBuild: %@", error);
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

No authorization required

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

NSString* name = @"name_example"; // Name of the job
NSString* body = body_example; // Job configuration in config.xml format
NSString* jenkinsCrumb = @"jenkinsCrumb_example"; // CSRF protection token (optional)

SWGRemoteAccessApi*apiInstance = [[SWGRemoteAccessApi alloc] init];

[apiInstance postJobConfigWithName:name
              body:body
              jenkinsCrumb:jenkinsCrumb
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling SWGRemoteAccessApi->postJobConfig: %@", error);
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

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/xml

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

NSString* name = @"name_example"; // Name of the job
NSString* jenkinsCrumb = @"jenkinsCrumb_example"; // CSRF protection token (optional)

SWGRemoteAccessApi*apiInstance = [[SWGRemoteAccessApi alloc] init];

[apiInstance postJobDeleteWithName:name
              jenkinsCrumb:jenkinsCrumb
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling SWGRemoteAccessApi->postJobDelete: %@", error);
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

No authorization required

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

NSString* name = @"name_example"; // Name of the job
NSString* jenkinsCrumb = @"jenkinsCrumb_example"; // CSRF protection token (optional)

SWGRemoteAccessApi*apiInstance = [[SWGRemoteAccessApi alloc] init];

[apiInstance postJobDisableWithName:name
              jenkinsCrumb:jenkinsCrumb
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling SWGRemoteAccessApi->postJobDisable: %@", error);
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

No authorization required

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

NSString* name = @"name_example"; // Name of the job
NSString* jenkinsCrumb = @"jenkinsCrumb_example"; // CSRF protection token (optional)

SWGRemoteAccessApi*apiInstance = [[SWGRemoteAccessApi alloc] init];

[apiInstance postJobEnableWithName:name
              jenkinsCrumb:jenkinsCrumb
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling SWGRemoteAccessApi->postJobEnable: %@", error);
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

No authorization required

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

NSString* name = @"name_example"; // Name of the job
NSString* jenkinsCrumb = @"jenkinsCrumb_example"; // CSRF protection token (optional)

SWGRemoteAccessApi*apiInstance = [[SWGRemoteAccessApi alloc] init];

[apiInstance postJobLastBuildStopWithName:name
              jenkinsCrumb:jenkinsCrumb
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling SWGRemoteAccessApi->postJobLastBuildStop: %@", error);
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

No authorization required

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

NSString* name = @"name_example"; // Name of the view
NSString* body = body_example; // View configuration in config.xml format
NSString* jenkinsCrumb = @"jenkinsCrumb_example"; // CSRF protection token (optional)

SWGRemoteAccessApi*apiInstance = [[SWGRemoteAccessApi alloc] init];

[apiInstance postViewConfigWithName:name
              body:body
              jenkinsCrumb:jenkinsCrumb
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling SWGRemoteAccessApi->postViewConfig: %@", error);
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

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


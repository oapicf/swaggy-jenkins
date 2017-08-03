# SWGBlueOceanApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deletePipelineQueueItem**](SWGBlueOceanApi.md#deletepipelinequeueitem) | **DELETE** /blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue} | 
[**getAuthenticatedUser**](SWGBlueOceanApi.md#getauthenticateduser) | **GET** /blue/rest/organizations/{organization}/user/ | 
[**getClasses**](SWGBlueOceanApi.md#getclasses) | **GET** /blue/rest/classes/{class} | 
[**getOrganisation**](SWGBlueOceanApi.md#getorganisation) | **GET** /blue/rest/organizations/{organization} | 
[**getOrganisations**](SWGBlueOceanApi.md#getorganisations) | **GET** /blue/rest/organizations/ | 
[**getPipeline**](SWGBlueOceanApi.md#getpipeline) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline} | 
[**getPipelineActivities**](SWGBlueOceanApi.md#getpipelineactivities) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/activities | 
[**getPipelineBranch**](SWGBlueOceanApi.md#getpipelinebranch) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/ | 
[**getPipelineBranchRun**](SWGBlueOceanApi.md#getpipelinebranchrun) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run} | 
[**getPipelineBranches**](SWGBlueOceanApi.md#getpipelinebranches) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches | 
[**getPipelineFolder**](SWGBlueOceanApi.md#getpipelinefolder) | **GET** /blue/rest/organizations/{organization}/pipelines/{folder}/ | 
[**getPipelineFolderPipeline**](SWGBlueOceanApi.md#getpipelinefolderpipeline) | **GET** /blue/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline} | 
[**getPipelineQueue**](SWGBlueOceanApi.md#getpipelinequeue) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/queue | 
[**getPipelineRun**](SWGBlueOceanApi.md#getpipelinerun) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run} | 
[**getPipelineRunLog**](SWGBlueOceanApi.md#getpipelinerunlog) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log | 
[**getPipelineRunNode**](SWGBlueOceanApi.md#getpipelinerunnode) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node} | 
[**getPipelineRunNodeStep**](SWGBlueOceanApi.md#getpipelinerunnodestep) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step} | 
[**getPipelineRunNodeStepLog**](SWGBlueOceanApi.md#getpipelinerunnodesteplog) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log | 
[**getPipelineRunNodeSteps**](SWGBlueOceanApi.md#getpipelinerunnodesteps) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps | 
[**getPipelineRunNodes**](SWGBlueOceanApi.md#getpipelinerunnodes) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes | 
[**getPipelineRuns**](SWGBlueOceanApi.md#getpipelineruns) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs | 
[**getPipelines**](SWGBlueOceanApi.md#getpipelines) | **GET** /blue/rest/organizations/{organization}/pipelines/ | 
[**getSCM**](SWGBlueOceanApi.md#getscm) | **GET** /blue/rest/organizations/{organization}/scm/{scm} | 
[**getSCMOrganisationRepositories**](SWGBlueOceanApi.md#getscmorganisationrepositories) | **GET** /blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories | 
[**getSCMOrganisationRepository**](SWGBlueOceanApi.md#getscmorganisationrepository) | **GET** /blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository} | 
[**getSCMOrganisations**](SWGBlueOceanApi.md#getscmorganisations) | **GET** /blue/rest/organizations/{organization}/scm/{scm}/organizations | 
[**getUser**](SWGBlueOceanApi.md#getuser) | **GET** /blue/rest/organizations/{organization}/users/{user} | 
[**getUserFavorites**](SWGBlueOceanApi.md#getuserfavorites) | **GET** /blue/rest/users/{user}/favorites | 
[**getUsers**](SWGBlueOceanApi.md#getusers) | **GET** /blue/rest/organizations/{organization}/users/ | 
[**postPipelineRun**](SWGBlueOceanApi.md#postpipelinerun) | **POST** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay | 
[**postPipelineRuns**](SWGBlueOceanApi.md#postpipelineruns) | **POST** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs | 
[**putPipelineFavorite**](SWGBlueOceanApi.md#putpipelinefavorite) | **PUT** /blue/rest/organizations/{organization}/pipelines/{pipeline}/favorite | 
[**putPipelineRun**](SWGBlueOceanApi.md#putpipelinerun) | **PUT** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop | 
[**search**](SWGBlueOceanApi.md#search) | **GET** /blue/rest/search/ | 
[**searchClasses**](SWGBlueOceanApi.md#searchclasses) | **GET** /blue/rest/classes/ | 


# **deletePipelineQueueItem**
```objc
-(NSURLSessionTask*) deletePipelineQueueItemWithOrganization: (NSString*) organization
    pipeline: (NSString*) pipeline
    queue: (NSString*) queue
        completionHandler: (void (^)(NSError* error)) handler;
```



Delete queue item from an organization pipeline queue

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: jenkins_auth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* organization = @"organization_example"; // Name of the organization
NSString* pipeline = @"pipeline_example"; // Name of the pipeline
NSString* queue = @"queue_example"; // Name of the queue item

SWGBlueOceanApi*apiInstance = [[SWGBlueOceanApi alloc] init];

[apiInstance deletePipelineQueueItemWithOrganization:organization
              pipeline:pipeline
              queue:queue
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling SWGBlueOceanApi->deletePipelineQueueItem: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **NSString***| Name of the organization | 
 **pipeline** | **NSString***| Name of the pipeline | 
 **queue** | **NSString***| Name of the queue item | 

### Return type

void (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAuthenticatedUser**
```objc
-(NSURLSessionTask*) getAuthenticatedUserWithOrganization: (NSString*) organization
        completionHandler: (void (^)(SWGUser* output, NSError* error)) handler;
```



Retrieve authenticated user details for an organization

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: jenkins_auth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* organization = @"organization_example"; // Name of the organization

SWGBlueOceanApi*apiInstance = [[SWGBlueOceanApi alloc] init];

[apiInstance getAuthenticatedUserWithOrganization:organization
          completionHandler: ^(SWGUser* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGBlueOceanApi->getAuthenticatedUser: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **NSString***| Name of the organization | 

### Return type

[**SWGUser***](SWGUser.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getClasses**
```objc
-(NSURLSessionTask*) getClassesWithClass: (NSString*) class
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```



Get a list of class names supported by a given class

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: jenkins_auth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* class = @"class_example"; // Name of the class

SWGBlueOceanApi*apiInstance = [[SWGBlueOceanApi alloc] init];

[apiInstance getClassesWithClass:class
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGBlueOceanApi->getClasses: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **class** | **NSString***| Name of the class | 

### Return type

**NSString***

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrganisation**
```objc
-(NSURLSessionTask*) getOrganisationWithOrganization: (NSString*) organization
        completionHandler: (void (^)(SWGOrganisation* output, NSError* error)) handler;
```



Retrieve organization details

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: jenkins_auth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* organization = @"organization_example"; // Name of the organization

SWGBlueOceanApi*apiInstance = [[SWGBlueOceanApi alloc] init];

[apiInstance getOrganisationWithOrganization:organization
          completionHandler: ^(SWGOrganisation* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGBlueOceanApi->getOrganisation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **NSString***| Name of the organization | 

### Return type

[**SWGOrganisation***](SWGOrganisation.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrganisations**
```objc
-(NSURLSessionTask*) getOrganisationsWithCompletionHandler: 
        (void (^)(SWGOrganisations* output, NSError* error)) handler;
```



Retrieve all organizations details

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: jenkins_auth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];



SWGBlueOceanApi*apiInstance = [[SWGBlueOceanApi alloc] init];

[apiInstance getOrganisationsWithCompletionHandler: 
          ^(SWGOrganisations* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGBlueOceanApi->getOrganisations: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SWGOrganisations***](SWGOrganisations.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPipeline**
```objc
-(NSURLSessionTask*) getPipelineWithOrganization: (NSString*) organization
    pipeline: (NSString*) pipeline
        completionHandler: (void (^)(SWGPipeline* output, NSError* error)) handler;
```



Retrieve pipeline details for an organization

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: jenkins_auth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* organization = @"organization_example"; // Name of the organization
NSString* pipeline = @"pipeline_example"; // Name of the pipeline

SWGBlueOceanApi*apiInstance = [[SWGBlueOceanApi alloc] init];

[apiInstance getPipelineWithOrganization:organization
              pipeline:pipeline
          completionHandler: ^(SWGPipeline* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGBlueOceanApi->getPipeline: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **NSString***| Name of the organization | 
 **pipeline** | **NSString***| Name of the pipeline | 

### Return type

[**SWGPipeline***](SWGPipeline.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPipelineActivities**
```objc
-(NSURLSessionTask*) getPipelineActivitiesWithOrganization: (NSString*) organization
    pipeline: (NSString*) pipeline
        completionHandler: (void (^)(SWGPipelineActivities* output, NSError* error)) handler;
```



Retrieve all activities details for an organization pipeline

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: jenkins_auth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* organization = @"organization_example"; // Name of the organization
NSString* pipeline = @"pipeline_example"; // Name of the pipeline

SWGBlueOceanApi*apiInstance = [[SWGBlueOceanApi alloc] init];

[apiInstance getPipelineActivitiesWithOrganization:organization
              pipeline:pipeline
          completionHandler: ^(SWGPipelineActivities* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGBlueOceanApi->getPipelineActivities: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **NSString***| Name of the organization | 
 **pipeline** | **NSString***| Name of the pipeline | 

### Return type

[**SWGPipelineActivities***](SWGPipelineActivities.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPipelineBranch**
```objc
-(NSURLSessionTask*) getPipelineBranchWithOrganization: (NSString*) organization
    pipeline: (NSString*) pipeline
    branch: (NSString*) branch
        completionHandler: (void (^)(SWGBranchImpl* output, NSError* error)) handler;
```



Retrieve branch details for an organization pipeline

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: jenkins_auth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* organization = @"organization_example"; // Name of the organization
NSString* pipeline = @"pipeline_example"; // Name of the pipeline
NSString* branch = @"branch_example"; // Name of the branch

SWGBlueOceanApi*apiInstance = [[SWGBlueOceanApi alloc] init];

[apiInstance getPipelineBranchWithOrganization:organization
              pipeline:pipeline
              branch:branch
          completionHandler: ^(SWGBranchImpl* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGBlueOceanApi->getPipelineBranch: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **NSString***| Name of the organization | 
 **pipeline** | **NSString***| Name of the pipeline | 
 **branch** | **NSString***| Name of the branch | 

### Return type

[**SWGBranchImpl***](SWGBranchImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPipelineBranchRun**
```objc
-(NSURLSessionTask*) getPipelineBranchRunWithOrganization: (NSString*) organization
    pipeline: (NSString*) pipeline
    branch: (NSString*) branch
    run: (NSString*) run
        completionHandler: (void (^)(SWGPipelineRun* output, NSError* error)) handler;
```



Retrieve branch run details for an organization pipeline

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: jenkins_auth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* organization = @"organization_example"; // Name of the organization
NSString* pipeline = @"pipeline_example"; // Name of the pipeline
NSString* branch = @"branch_example"; // Name of the branch
NSString* run = @"run_example"; // Name of the run

SWGBlueOceanApi*apiInstance = [[SWGBlueOceanApi alloc] init];

[apiInstance getPipelineBranchRunWithOrganization:organization
              pipeline:pipeline
              branch:branch
              run:run
          completionHandler: ^(SWGPipelineRun* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGBlueOceanApi->getPipelineBranchRun: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **NSString***| Name of the organization | 
 **pipeline** | **NSString***| Name of the pipeline | 
 **branch** | **NSString***| Name of the branch | 
 **run** | **NSString***| Name of the run | 

### Return type

[**SWGPipelineRun***](SWGPipelineRun.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPipelineBranches**
```objc
-(NSURLSessionTask*) getPipelineBranchesWithOrganization: (NSString*) organization
    pipeline: (NSString*) pipeline
        completionHandler: (void (^)(SWGMultibranchPipeline* output, NSError* error)) handler;
```



Retrieve all branches details for an organization pipeline

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: jenkins_auth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* organization = @"organization_example"; // Name of the organization
NSString* pipeline = @"pipeline_example"; // Name of the pipeline

SWGBlueOceanApi*apiInstance = [[SWGBlueOceanApi alloc] init];

[apiInstance getPipelineBranchesWithOrganization:organization
              pipeline:pipeline
          completionHandler: ^(SWGMultibranchPipeline* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGBlueOceanApi->getPipelineBranches: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **NSString***| Name of the organization | 
 **pipeline** | **NSString***| Name of the pipeline | 

### Return type

[**SWGMultibranchPipeline***](SWGMultibranchPipeline.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPipelineFolder**
```objc
-(NSURLSessionTask*) getPipelineFolderWithOrganization: (NSString*) organization
    folder: (NSString*) folder
        completionHandler: (void (^)(SWGPipelineFolderImpl* output, NSError* error)) handler;
```



Retrieve pipeline folder for an organization

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: jenkins_auth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* organization = @"organization_example"; // Name of the organization
NSString* folder = @"folder_example"; // Name of the folder

SWGBlueOceanApi*apiInstance = [[SWGBlueOceanApi alloc] init];

[apiInstance getPipelineFolderWithOrganization:organization
              folder:folder
          completionHandler: ^(SWGPipelineFolderImpl* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGBlueOceanApi->getPipelineFolder: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **NSString***| Name of the organization | 
 **folder** | **NSString***| Name of the folder | 

### Return type

[**SWGPipelineFolderImpl***](SWGPipelineFolderImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPipelineFolderPipeline**
```objc
-(NSURLSessionTask*) getPipelineFolderPipelineWithOrganization: (NSString*) organization
    pipeline: (NSString*) pipeline
    folder: (NSString*) folder
        completionHandler: (void (^)(SWGPipelineImpl* output, NSError* error)) handler;
```



Retrieve pipeline details for an organization folder

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: jenkins_auth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* organization = @"organization_example"; // Name of the organization
NSString* pipeline = @"pipeline_example"; // Name of the pipeline
NSString* folder = @"folder_example"; // Name of the folder

SWGBlueOceanApi*apiInstance = [[SWGBlueOceanApi alloc] init];

[apiInstance getPipelineFolderPipelineWithOrganization:organization
              pipeline:pipeline
              folder:folder
          completionHandler: ^(SWGPipelineImpl* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGBlueOceanApi->getPipelineFolderPipeline: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **NSString***| Name of the organization | 
 **pipeline** | **NSString***| Name of the pipeline | 
 **folder** | **NSString***| Name of the folder | 

### Return type

[**SWGPipelineImpl***](SWGPipelineImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPipelineQueue**
```objc
-(NSURLSessionTask*) getPipelineQueueWithOrganization: (NSString*) organization
    pipeline: (NSString*) pipeline
        completionHandler: (void (^)(SWGPipelineQueue* output, NSError* error)) handler;
```



Retrieve queue details for an organization pipeline

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: jenkins_auth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* organization = @"organization_example"; // Name of the organization
NSString* pipeline = @"pipeline_example"; // Name of the pipeline

SWGBlueOceanApi*apiInstance = [[SWGBlueOceanApi alloc] init];

[apiInstance getPipelineQueueWithOrganization:organization
              pipeline:pipeline
          completionHandler: ^(SWGPipelineQueue* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGBlueOceanApi->getPipelineQueue: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **NSString***| Name of the organization | 
 **pipeline** | **NSString***| Name of the pipeline | 

### Return type

[**SWGPipelineQueue***](SWGPipelineQueue.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPipelineRun**
```objc
-(NSURLSessionTask*) getPipelineRunWithOrganization: (NSString*) organization
    pipeline: (NSString*) pipeline
    run: (NSString*) run
        completionHandler: (void (^)(SWGPipelineRun* output, NSError* error)) handler;
```



Retrieve run details for an organization pipeline

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: jenkins_auth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* organization = @"organization_example"; // Name of the organization
NSString* pipeline = @"pipeline_example"; // Name of the pipeline
NSString* run = @"run_example"; // Name of the run

SWGBlueOceanApi*apiInstance = [[SWGBlueOceanApi alloc] init];

[apiInstance getPipelineRunWithOrganization:organization
              pipeline:pipeline
              run:run
          completionHandler: ^(SWGPipelineRun* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGBlueOceanApi->getPipelineRun: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **NSString***| Name of the organization | 
 **pipeline** | **NSString***| Name of the pipeline | 
 **run** | **NSString***| Name of the run | 

### Return type

[**SWGPipelineRun***](SWGPipelineRun.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPipelineRunLog**
```objc
-(NSURLSessionTask*) getPipelineRunLogWithOrganization: (NSString*) organization
    pipeline: (NSString*) pipeline
    run: (NSString*) run
    start: (NSNumber*) start
    download: (NSNumber*) download
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```



Get log for a pipeline run

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: jenkins_auth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* organization = @"organization_example"; // Name of the organization
NSString* pipeline = @"pipeline_example"; // Name of the pipeline
NSString* run = @"run_example"; // Name of the run
NSNumber* start = @56; // Start position of the log (optional)
NSNumber* download = @true; // Set to true in order to download the file, otherwise it's passed as a response body (optional)

SWGBlueOceanApi*apiInstance = [[SWGBlueOceanApi alloc] init];

[apiInstance getPipelineRunLogWithOrganization:organization
              pipeline:pipeline
              run:run
              start:start
              download:download
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGBlueOceanApi->getPipelineRunLog: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **NSString***| Name of the organization | 
 **pipeline** | **NSString***| Name of the pipeline | 
 **run** | **NSString***| Name of the run | 
 **start** | **NSNumber***| Start position of the log | [optional] 
 **download** | **NSNumber***| Set to true in order to download the file, otherwise it&#39;s passed as a response body | [optional] 

### Return type

**NSString***

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPipelineRunNode**
```objc
-(NSURLSessionTask*) getPipelineRunNodeWithOrganization: (NSString*) organization
    pipeline: (NSString*) pipeline
    run: (NSString*) run
    node: (NSString*) node
        completionHandler: (void (^)(SWGPipelineRunNode* output, NSError* error)) handler;
```



Retrieve run node details for an organization pipeline

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: jenkins_auth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* organization = @"organization_example"; // Name of the organization
NSString* pipeline = @"pipeline_example"; // Name of the pipeline
NSString* run = @"run_example"; // Name of the run
NSString* node = @"node_example"; // Name of the node

SWGBlueOceanApi*apiInstance = [[SWGBlueOceanApi alloc] init];

[apiInstance getPipelineRunNodeWithOrganization:organization
              pipeline:pipeline
              run:run
              node:node
          completionHandler: ^(SWGPipelineRunNode* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGBlueOceanApi->getPipelineRunNode: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **NSString***| Name of the organization | 
 **pipeline** | **NSString***| Name of the pipeline | 
 **run** | **NSString***| Name of the run | 
 **node** | **NSString***| Name of the node | 

### Return type

[**SWGPipelineRunNode***](SWGPipelineRunNode.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPipelineRunNodeStep**
```objc
-(NSURLSessionTask*) getPipelineRunNodeStepWithOrganization: (NSString*) organization
    pipeline: (NSString*) pipeline
    run: (NSString*) run
    node: (NSString*) node
    step: (NSString*) step
        completionHandler: (void (^)(SWGPipelineStepImpl* output, NSError* error)) handler;
```



Retrieve run node details for an organization pipeline

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: jenkins_auth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* organization = @"organization_example"; // Name of the organization
NSString* pipeline = @"pipeline_example"; // Name of the pipeline
NSString* run = @"run_example"; // Name of the run
NSString* node = @"node_example"; // Name of the node
NSString* step = @"step_example"; // Name of the step

SWGBlueOceanApi*apiInstance = [[SWGBlueOceanApi alloc] init];

[apiInstance getPipelineRunNodeStepWithOrganization:organization
              pipeline:pipeline
              run:run
              node:node
              step:step
          completionHandler: ^(SWGPipelineStepImpl* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGBlueOceanApi->getPipelineRunNodeStep: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **NSString***| Name of the organization | 
 **pipeline** | **NSString***| Name of the pipeline | 
 **run** | **NSString***| Name of the run | 
 **node** | **NSString***| Name of the node | 
 **step** | **NSString***| Name of the step | 

### Return type

[**SWGPipelineStepImpl***](SWGPipelineStepImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPipelineRunNodeStepLog**
```objc
-(NSURLSessionTask*) getPipelineRunNodeStepLogWithOrganization: (NSString*) organization
    pipeline: (NSString*) pipeline
    run: (NSString*) run
    node: (NSString*) node
    step: (NSString*) step
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```



Get log for a pipeline run node step

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: jenkins_auth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* organization = @"organization_example"; // Name of the organization
NSString* pipeline = @"pipeline_example"; // Name of the pipeline
NSString* run = @"run_example"; // Name of the run
NSString* node = @"node_example"; // Name of the node
NSString* step = @"step_example"; // Name of the step

SWGBlueOceanApi*apiInstance = [[SWGBlueOceanApi alloc] init];

[apiInstance getPipelineRunNodeStepLogWithOrganization:organization
              pipeline:pipeline
              run:run
              node:node
              step:step
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGBlueOceanApi->getPipelineRunNodeStepLog: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **NSString***| Name of the organization | 
 **pipeline** | **NSString***| Name of the pipeline | 
 **run** | **NSString***| Name of the run | 
 **node** | **NSString***| Name of the node | 
 **step** | **NSString***| Name of the step | 

### Return type

**NSString***

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPipelineRunNodeSteps**
```objc
-(NSURLSessionTask*) getPipelineRunNodeStepsWithOrganization: (NSString*) organization
    pipeline: (NSString*) pipeline
    run: (NSString*) run
    node: (NSString*) node
        completionHandler: (void (^)(SWGPipelineRunNodeSteps* output, NSError* error)) handler;
```



Retrieve run node steps details for an organization pipeline

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: jenkins_auth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* organization = @"organization_example"; // Name of the organization
NSString* pipeline = @"pipeline_example"; // Name of the pipeline
NSString* run = @"run_example"; // Name of the run
NSString* node = @"node_example"; // Name of the node

SWGBlueOceanApi*apiInstance = [[SWGBlueOceanApi alloc] init];

[apiInstance getPipelineRunNodeStepsWithOrganization:organization
              pipeline:pipeline
              run:run
              node:node
          completionHandler: ^(SWGPipelineRunNodeSteps* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGBlueOceanApi->getPipelineRunNodeSteps: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **NSString***| Name of the organization | 
 **pipeline** | **NSString***| Name of the pipeline | 
 **run** | **NSString***| Name of the run | 
 **node** | **NSString***| Name of the node | 

### Return type

[**SWGPipelineRunNodeSteps***](SWGPipelineRunNodeSteps.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPipelineRunNodes**
```objc
-(NSURLSessionTask*) getPipelineRunNodesWithOrganization: (NSString*) organization
    pipeline: (NSString*) pipeline
    run: (NSString*) run
        completionHandler: (void (^)(SWGPipelineRunNodes* output, NSError* error)) handler;
```



Retrieve run nodes details for an organization pipeline

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: jenkins_auth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* organization = @"organization_example"; // Name of the organization
NSString* pipeline = @"pipeline_example"; // Name of the pipeline
NSString* run = @"run_example"; // Name of the run

SWGBlueOceanApi*apiInstance = [[SWGBlueOceanApi alloc] init];

[apiInstance getPipelineRunNodesWithOrganization:organization
              pipeline:pipeline
              run:run
          completionHandler: ^(SWGPipelineRunNodes* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGBlueOceanApi->getPipelineRunNodes: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **NSString***| Name of the organization | 
 **pipeline** | **NSString***| Name of the pipeline | 
 **run** | **NSString***| Name of the run | 

### Return type

[**SWGPipelineRunNodes***](SWGPipelineRunNodes.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPipelineRuns**
```objc
-(NSURLSessionTask*) getPipelineRunsWithOrganization: (NSString*) organization
    pipeline: (NSString*) pipeline
        completionHandler: (void (^)(SWGPipelineRuns* output, NSError* error)) handler;
```



Retrieve all runs details for an organization pipeline

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: jenkins_auth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* organization = @"organization_example"; // Name of the organization
NSString* pipeline = @"pipeline_example"; // Name of the pipeline

SWGBlueOceanApi*apiInstance = [[SWGBlueOceanApi alloc] init];

[apiInstance getPipelineRunsWithOrganization:organization
              pipeline:pipeline
          completionHandler: ^(SWGPipelineRuns* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGBlueOceanApi->getPipelineRuns: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **NSString***| Name of the organization | 
 **pipeline** | **NSString***| Name of the pipeline | 

### Return type

[**SWGPipelineRuns***](SWGPipelineRuns.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPipelines**
```objc
-(NSURLSessionTask*) getPipelinesWithOrganization: (NSString*) organization
        completionHandler: (void (^)(SWGPipelines* output, NSError* error)) handler;
```



Retrieve all pipelines details for an organization

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: jenkins_auth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* organization = @"organization_example"; // Name of the organization

SWGBlueOceanApi*apiInstance = [[SWGBlueOceanApi alloc] init];

[apiInstance getPipelinesWithOrganization:organization
          completionHandler: ^(SWGPipelines* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGBlueOceanApi->getPipelines: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **NSString***| Name of the organization | 

### Return type

[**SWGPipelines***](SWGPipelines.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSCM**
```objc
-(NSURLSessionTask*) getSCMWithOrganization: (NSString*) organization
    scm: (NSString*) scm
        completionHandler: (void (^)(SWGGithubScm* output, NSError* error)) handler;
```



Retrieve SCM details for an organization

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: jenkins_auth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* organization = @"organization_example"; // Name of the organization
NSString* scm = @"scm_example"; // Name of SCM

SWGBlueOceanApi*apiInstance = [[SWGBlueOceanApi alloc] init];

[apiInstance getSCMWithOrganization:organization
              scm:scm
          completionHandler: ^(SWGGithubScm* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGBlueOceanApi->getSCM: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **NSString***| Name of the organization | 
 **scm** | **NSString***| Name of SCM | 

### Return type

[**SWGGithubScm***](SWGGithubScm.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSCMOrganisationRepositories**
```objc
-(NSURLSessionTask*) getSCMOrganisationRepositoriesWithOrganization: (NSString*) organization
    scm: (NSString*) scm
    scmOrganisation: (NSString*) scmOrganisation
    credentialId: (NSString*) credentialId
    pageSize: (NSNumber*) pageSize
    pageNumber: (NSNumber*) pageNumber
        completionHandler: (void (^)(SWGScmOrganisations* output, NSError* error)) handler;
```



Retrieve SCM organization repositories details for an organization

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: jenkins_auth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* organization = @"organization_example"; // Name of the organization
NSString* scm = @"scm_example"; // Name of SCM
NSString* scmOrganisation = @"scmOrganisation_example"; // Name of the SCM organization
NSString* credentialId = @"credentialId_example"; // Credential ID (optional)
NSNumber* pageSize = @56; // Number of items in a page (optional)
NSNumber* pageNumber = @56; // Page number (optional)

SWGBlueOceanApi*apiInstance = [[SWGBlueOceanApi alloc] init];

[apiInstance getSCMOrganisationRepositoriesWithOrganization:organization
              scm:scm
              scmOrganisation:scmOrganisation
              credentialId:credentialId
              pageSize:pageSize
              pageNumber:pageNumber
          completionHandler: ^(SWGScmOrganisations* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGBlueOceanApi->getSCMOrganisationRepositories: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **NSString***| Name of the organization | 
 **scm** | **NSString***| Name of SCM | 
 **scmOrganisation** | **NSString***| Name of the SCM organization | 
 **credentialId** | **NSString***| Credential ID | [optional] 
 **pageSize** | **NSNumber***| Number of items in a page | [optional] 
 **pageNumber** | **NSNumber***| Page number | [optional] 

### Return type

[**SWGScmOrganisations***](SWGScmOrganisations.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSCMOrganisationRepository**
```objc
-(NSURLSessionTask*) getSCMOrganisationRepositoryWithOrganization: (NSString*) organization
    scm: (NSString*) scm
    scmOrganisation: (NSString*) scmOrganisation
    repository: (NSString*) repository
    credentialId: (NSString*) credentialId
        completionHandler: (void (^)(SWGScmOrganisations* output, NSError* error)) handler;
```



Retrieve SCM organization repository details for an organization

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: jenkins_auth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* organization = @"organization_example"; // Name of the organization
NSString* scm = @"scm_example"; // Name of SCM
NSString* scmOrganisation = @"scmOrganisation_example"; // Name of the SCM organization
NSString* repository = @"repository_example"; // Name of the SCM repository
NSString* credentialId = @"credentialId_example"; // Credential ID (optional)

SWGBlueOceanApi*apiInstance = [[SWGBlueOceanApi alloc] init];

[apiInstance getSCMOrganisationRepositoryWithOrganization:organization
              scm:scm
              scmOrganisation:scmOrganisation
              repository:repository
              credentialId:credentialId
          completionHandler: ^(SWGScmOrganisations* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGBlueOceanApi->getSCMOrganisationRepository: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **NSString***| Name of the organization | 
 **scm** | **NSString***| Name of SCM | 
 **scmOrganisation** | **NSString***| Name of the SCM organization | 
 **repository** | **NSString***| Name of the SCM repository | 
 **credentialId** | **NSString***| Credential ID | [optional] 

### Return type

[**SWGScmOrganisations***](SWGScmOrganisations.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSCMOrganisations**
```objc
-(NSURLSessionTask*) getSCMOrganisationsWithOrganization: (NSString*) organization
    scm: (NSString*) scm
    credentialId: (NSString*) credentialId
        completionHandler: (void (^)(SWGScmOrganisations* output, NSError* error)) handler;
```



Retrieve SCM organizations details for an organization

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: jenkins_auth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* organization = @"organization_example"; // Name of the organization
NSString* scm = @"scm_example"; // Name of SCM
NSString* credentialId = @"credentialId_example"; // Credential ID (optional)

SWGBlueOceanApi*apiInstance = [[SWGBlueOceanApi alloc] init];

[apiInstance getSCMOrganisationsWithOrganization:organization
              scm:scm
              credentialId:credentialId
          completionHandler: ^(SWGScmOrganisations* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGBlueOceanApi->getSCMOrganisations: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **NSString***| Name of the organization | 
 **scm** | **NSString***| Name of SCM | 
 **credentialId** | **NSString***| Credential ID | [optional] 

### Return type

[**SWGScmOrganisations***](SWGScmOrganisations.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUser**
```objc
-(NSURLSessionTask*) getUserWithOrganization: (NSString*) organization
    user: (NSString*) user
        completionHandler: (void (^)(SWGUser* output, NSError* error)) handler;
```



Retrieve user details for an organization

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: jenkins_auth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* organization = @"organization_example"; // Name of the organization
NSString* user = @"user_example"; // Name of the user

SWGBlueOceanApi*apiInstance = [[SWGBlueOceanApi alloc] init];

[apiInstance getUserWithOrganization:organization
              user:user
          completionHandler: ^(SWGUser* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGBlueOceanApi->getUser: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **NSString***| Name of the organization | 
 **user** | **NSString***| Name of the user | 

### Return type

[**SWGUser***](SWGUser.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserFavorites**
```objc
-(NSURLSessionTask*) getUserFavoritesWithUser: (NSString*) user
        completionHandler: (void (^)(SWGUserFavorites* output, NSError* error)) handler;
```



Retrieve user favorites details for an organization

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: jenkins_auth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* user = @"user_example"; // Name of the user

SWGBlueOceanApi*apiInstance = [[SWGBlueOceanApi alloc] init];

[apiInstance getUserFavoritesWithUser:user
          completionHandler: ^(SWGUserFavorites* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGBlueOceanApi->getUserFavorites: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user** | **NSString***| Name of the user | 

### Return type

[**SWGUserFavorites***](SWGUserFavorites.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUsers**
```objc
-(NSURLSessionTask*) getUsersWithOrganization: (NSString*) organization
        completionHandler: (void (^)(SWGUser* output, NSError* error)) handler;
```



Retrieve users details for an organization

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: jenkins_auth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* organization = @"organization_example"; // Name of the organization

SWGBlueOceanApi*apiInstance = [[SWGBlueOceanApi alloc] init];

[apiInstance getUsersWithOrganization:organization
          completionHandler: ^(SWGUser* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGBlueOceanApi->getUsers: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **NSString***| Name of the organization | 

### Return type

[**SWGUser***](SWGUser.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postPipelineRun**
```objc
-(NSURLSessionTask*) postPipelineRunWithOrganization: (NSString*) organization
    pipeline: (NSString*) pipeline
    run: (NSString*) run
        completionHandler: (void (^)(SWGQueueItemImpl* output, NSError* error)) handler;
```



Replay an organization pipeline run

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: jenkins_auth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* organization = @"organization_example"; // Name of the organization
NSString* pipeline = @"pipeline_example"; // Name of the pipeline
NSString* run = @"run_example"; // Name of the run

SWGBlueOceanApi*apiInstance = [[SWGBlueOceanApi alloc] init];

[apiInstance postPipelineRunWithOrganization:organization
              pipeline:pipeline
              run:run
          completionHandler: ^(SWGQueueItemImpl* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGBlueOceanApi->postPipelineRun: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **NSString***| Name of the organization | 
 **pipeline** | **NSString***| Name of the pipeline | 
 **run** | **NSString***| Name of the run | 

### Return type

[**SWGQueueItemImpl***](SWGQueueItemImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postPipelineRuns**
```objc
-(NSURLSessionTask*) postPipelineRunsWithOrganization: (NSString*) organization
    pipeline: (NSString*) pipeline
        completionHandler: (void (^)(SWGQueueItemImpl* output, NSError* error)) handler;
```



Start a build for an organization pipeline

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: jenkins_auth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* organization = @"organization_example"; // Name of the organization
NSString* pipeline = @"pipeline_example"; // Name of the pipeline

SWGBlueOceanApi*apiInstance = [[SWGBlueOceanApi alloc] init];

[apiInstance postPipelineRunsWithOrganization:organization
              pipeline:pipeline
          completionHandler: ^(SWGQueueItemImpl* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGBlueOceanApi->postPipelineRuns: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **NSString***| Name of the organization | 
 **pipeline** | **NSString***| Name of the pipeline | 

### Return type

[**SWGQueueItemImpl***](SWGQueueItemImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putPipelineFavorite**
```objc
-(NSURLSessionTask*) putPipelineFavoriteWithOrganization: (NSString*) organization
    pipeline: (NSString*) pipeline
    body: (SWGBody*) body
        completionHandler: (void (^)(SWGFavoriteImpl* output, NSError* error)) handler;
```



Favorite/unfavorite a pipeline

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: jenkins_auth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* organization = @"organization_example"; // Name of the organization
NSString* pipeline = @"pipeline_example"; // Name of the pipeline
SWGBody* body = [[SWGBody alloc] init]; // Set JSON string body to {\"favorite\": true} to favorite, set value to false to unfavorite

SWGBlueOceanApi*apiInstance = [[SWGBlueOceanApi alloc] init];

[apiInstance putPipelineFavoriteWithOrganization:organization
              pipeline:pipeline
              body:body
          completionHandler: ^(SWGFavoriteImpl* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGBlueOceanApi->putPipelineFavorite: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **NSString***| Name of the organization | 
 **pipeline** | **NSString***| Name of the pipeline | 
 **body** | [**SWGBody***](SWGBody.md)| Set JSON string body to {\&quot;favorite\&quot;: true} to favorite, set value to false to unfavorite | 

### Return type

[**SWGFavoriteImpl***](SWGFavoriteImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putPipelineRun**
```objc
-(NSURLSessionTask*) putPipelineRunWithOrganization: (NSString*) organization
    pipeline: (NSString*) pipeline
    run: (NSString*) run
    blocking: (NSString*) blocking
    timeOutInSecs: (NSNumber*) timeOutInSecs
        completionHandler: (void (^)(SWGPipelineRun* output, NSError* error)) handler;
```



Stop a build of an organization pipeline

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: jenkins_auth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* organization = @"organization_example"; // Name of the organization
NSString* pipeline = @"pipeline_example"; // Name of the pipeline
NSString* run = @"run_example"; // Name of the run
NSString* blocking = @"blocking_example"; // Set to true to make blocking stop, default: false (optional)
NSNumber* timeOutInSecs = @56; // Timeout in seconds, default: 10 seconds (optional)

SWGBlueOceanApi*apiInstance = [[SWGBlueOceanApi alloc] init];

[apiInstance putPipelineRunWithOrganization:organization
              pipeline:pipeline
              run:run
              blocking:blocking
              timeOutInSecs:timeOutInSecs
          completionHandler: ^(SWGPipelineRun* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGBlueOceanApi->putPipelineRun: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **NSString***| Name of the organization | 
 **pipeline** | **NSString***| Name of the pipeline | 
 **run** | **NSString***| Name of the run | 
 **blocking** | **NSString***| Set to true to make blocking stop, default: false | [optional] 
 **timeOutInSecs** | **NSNumber***| Timeout in seconds, default: 10 seconds | [optional] 

### Return type

[**SWGPipelineRun***](SWGPipelineRun.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search**
```objc
-(NSURLSessionTask*) searchWithQ: (NSString*) q
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```



Search for any resource details

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: jenkins_auth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* q = @"q_example"; // Query string

SWGBlueOceanApi*apiInstance = [[SWGBlueOceanApi alloc] init];

[apiInstance searchWithQ:q
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGBlueOceanApi->search: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **NSString***| Query string | 

### Return type

**NSString***

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchClasses**
```objc
-(NSURLSessionTask*) searchClassesWithQ: (NSString*) q
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```



Get classes details

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: jenkins_auth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* q = @"q_example"; // Query string containing an array of class names

SWGBlueOceanApi*apiInstance = [[SWGBlueOceanApi alloc] init];

[apiInstance searchClassesWithQ:q
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGBlueOceanApi->searchClasses: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **NSString***| Query string containing an array of class names | 

### Return type

**NSString***

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


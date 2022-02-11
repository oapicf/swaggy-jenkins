# OAIBlueOceanApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deletePipelineQueueItem**](OAIBlueOceanApi.md#deletepipelinequeueitem) | **DELETE** /blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue} | 
[**getAuthenticatedUser**](OAIBlueOceanApi.md#getauthenticateduser) | **GET** /blue/rest/organizations/{organization}/user/ | 
[**getClasses**](OAIBlueOceanApi.md#getclasses) | **GET** /blue/rest/classes/{class} | 
[**getJsonWebKey**](OAIBlueOceanApi.md#getjsonwebkey) | **GET** /jwt-auth/jwks/{key} | 
[**getJsonWebToken**](OAIBlueOceanApi.md#getjsonwebtoken) | **GET** /jwt-auth/token | 
[**getOrganisation**](OAIBlueOceanApi.md#getorganisation) | **GET** /blue/rest/organizations/{organization} | 
[**getOrganisations**](OAIBlueOceanApi.md#getorganisations) | **GET** /blue/rest/organizations/ | 
[**getPipeline**](OAIBlueOceanApi.md#getpipeline) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline} | 
[**getPipelineActivities**](OAIBlueOceanApi.md#getpipelineactivities) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/activities | 
[**getPipelineBranch**](OAIBlueOceanApi.md#getpipelinebranch) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/ | 
[**getPipelineBranchRun**](OAIBlueOceanApi.md#getpipelinebranchrun) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run} | 
[**getPipelineBranches**](OAIBlueOceanApi.md#getpipelinebranches) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches | 
[**getPipelineFolder**](OAIBlueOceanApi.md#getpipelinefolder) | **GET** /blue/rest/organizations/{organization}/pipelines/{folder}/ | 
[**getPipelineFolderPipeline**](OAIBlueOceanApi.md#getpipelinefolderpipeline) | **GET** /blue/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline} | 
[**getPipelineQueue**](OAIBlueOceanApi.md#getpipelinequeue) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/queue | 
[**getPipelineRun**](OAIBlueOceanApi.md#getpipelinerun) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run} | 
[**getPipelineRunLog**](OAIBlueOceanApi.md#getpipelinerunlog) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log | 
[**getPipelineRunNode**](OAIBlueOceanApi.md#getpipelinerunnode) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node} | 
[**getPipelineRunNodeStep**](OAIBlueOceanApi.md#getpipelinerunnodestep) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step} | 
[**getPipelineRunNodeStepLog**](OAIBlueOceanApi.md#getpipelinerunnodesteplog) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log | 
[**getPipelineRunNodeSteps**](OAIBlueOceanApi.md#getpipelinerunnodesteps) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps | 
[**getPipelineRunNodes**](OAIBlueOceanApi.md#getpipelinerunnodes) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes | 
[**getPipelineRuns**](OAIBlueOceanApi.md#getpipelineruns) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs | 
[**getPipelines**](OAIBlueOceanApi.md#getpipelines) | **GET** /blue/rest/organizations/{organization}/pipelines/ | 
[**getSCM**](OAIBlueOceanApi.md#getscm) | **GET** /blue/rest/organizations/{organization}/scm/{scm} | 
[**getSCMOrganisationRepositories**](OAIBlueOceanApi.md#getscmorganisationrepositories) | **GET** /blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories | 
[**getSCMOrganisationRepository**](OAIBlueOceanApi.md#getscmorganisationrepository) | **GET** /blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository} | 
[**getSCMOrganisations**](OAIBlueOceanApi.md#getscmorganisations) | **GET** /blue/rest/organizations/{organization}/scm/{scm}/organizations | 
[**getUser**](OAIBlueOceanApi.md#getuser) | **GET** /blue/rest/organizations/{organization}/users/{user} | 
[**getUserFavorites**](OAIBlueOceanApi.md#getuserfavorites) | **GET** /blue/rest/users/{user}/favorites | 
[**getUsers**](OAIBlueOceanApi.md#getusers) | **GET** /blue/rest/organizations/{organization}/users/ | 
[**postPipelineRun**](OAIBlueOceanApi.md#postpipelinerun) | **POST** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay | 
[**postPipelineRuns**](OAIBlueOceanApi.md#postpipelineruns) | **POST** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs | 
[**putPipelineFavorite**](OAIBlueOceanApi.md#putpipelinefavorite) | **PUT** /blue/rest/organizations/{organization}/pipelines/{pipeline}/favorite | 
[**putPipelineRun**](OAIBlueOceanApi.md#putpipelinerun) | **PUT** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop | 
[**search**](OAIBlueOceanApi.md#search) | **GET** /blue/rest/search/ | 
[**searchClasses**](OAIBlueOceanApi.md#searchclasses) | **GET** /blue/rest/classes/ | 


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
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: jenkins_auth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* organization = @"organization_example"; // Name of the organization
NSString* pipeline = @"pipeline_example"; // Name of the pipeline
NSString* queue = @"queue_example"; // Name of the queue item

OAIBlueOceanApi*apiInstance = [[OAIBlueOceanApi alloc] init];

[apiInstance deletePipelineQueueItemWithOrganization:organization
              pipeline:pipeline
              queue:queue
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIBlueOceanApi->deletePipelineQueueItem: %@", error);
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
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAuthenticatedUser**
```objc
-(NSURLSessionTask*) getAuthenticatedUserWithOrganization: (NSString*) organization
        completionHandler: (void (^)(OAIUser* output, NSError* error)) handler;
```



Retrieve authenticated user details for an organization

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: jenkins_auth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* organization = @"organization_example"; // Name of the organization

OAIBlueOceanApi*apiInstance = [[OAIBlueOceanApi alloc] init];

[apiInstance getAuthenticatedUserWithOrganization:organization
          completionHandler: ^(OAIUser* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIBlueOceanApi->getAuthenticatedUser: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **NSString***| Name of the organization | 

### Return type

[**OAIUser***](OAIUser.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getClasses**
```objc
-(NSURLSessionTask*) getClassesWithClass: (NSString*) _class
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```



Get a list of class names supported by a given class

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: jenkins_auth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* _class = @"_class_example"; // Name of the class

OAIBlueOceanApi*apiInstance = [[OAIBlueOceanApi alloc] init];

[apiInstance getClassesWithClass:_class
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIBlueOceanApi->getClasses: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_class** | **NSString***| Name of the class | 

### Return type

**NSString***

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getJsonWebKey**
```objc
-(NSURLSessionTask*) getJsonWebKeyWithKey: (NSNumber*) key
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```



Retrieve JSON Web Key

### Example
```objc

NSNumber* key = @56; // Key ID received as part of JWT header field kid

OAIBlueOceanApi*apiInstance = [[OAIBlueOceanApi alloc] init];

[apiInstance getJsonWebKeyWithKey:key
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIBlueOceanApi->getJsonWebKey: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **NSNumber***| Key ID received as part of JWT header field kid | 

### Return type

**NSString***

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getJsonWebToken**
```objc
-(NSURLSessionTask*) getJsonWebTokenWithExpiryTimeInMins: (NSNumber*) expiryTimeInMins
    maxExpiryTimeInMins: (NSNumber*) maxExpiryTimeInMins
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```



Retrieve JSON Web Token

### Example
```objc

NSNumber* expiryTimeInMins = @56; // Token expiry time in minutes, default: 30 minutes (optional)
NSNumber* maxExpiryTimeInMins = @56; // Maximum token expiry time in minutes, default: 480 minutes (optional)

OAIBlueOceanApi*apiInstance = [[OAIBlueOceanApi alloc] init];

[apiInstance getJsonWebTokenWithExpiryTimeInMins:expiryTimeInMins
              maxExpiryTimeInMins:maxExpiryTimeInMins
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIBlueOceanApi->getJsonWebToken: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **expiryTimeInMins** | **NSNumber***| Token expiry time in minutes, default: 30 minutes | [optional] 
 **maxExpiryTimeInMins** | **NSNumber***| Maximum token expiry time in minutes, default: 480 minutes | [optional] 

### Return type

**NSString***

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrganisation**
```objc
-(NSURLSessionTask*) getOrganisationWithOrganization: (NSString*) organization
        completionHandler: (void (^)(OAIOrganisation* output, NSError* error)) handler;
```



Retrieve organization details

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: jenkins_auth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* organization = @"organization_example"; // Name of the organization

OAIBlueOceanApi*apiInstance = [[OAIBlueOceanApi alloc] init];

[apiInstance getOrganisationWithOrganization:organization
          completionHandler: ^(OAIOrganisation* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIBlueOceanApi->getOrganisation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **NSString***| Name of the organization | 

### Return type

[**OAIOrganisation***](OAIOrganisation.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrganisations**
```objc
-(NSURLSessionTask*) getOrganisationsWithCompletionHandler: 
        (void (^)(NSArray<OAIOrganisation>* output, NSError* error)) handler;
```



Retrieve all organizations details

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: jenkins_auth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];



OAIBlueOceanApi*apiInstance = [[OAIBlueOceanApi alloc] init];

[apiInstance getOrganisationsWithCompletionHandler: 
          ^(NSArray<OAIOrganisation>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIBlueOceanApi->getOrganisations: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**NSArray<OAIOrganisation>***](OAIOrganisation.md)

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
        completionHandler: (void (^)(OAIPipeline* output, NSError* error)) handler;
```



Retrieve pipeline details for an organization

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: jenkins_auth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* organization = @"organization_example"; // Name of the organization
NSString* pipeline = @"pipeline_example"; // Name of the pipeline

OAIBlueOceanApi*apiInstance = [[OAIBlueOceanApi alloc] init];

[apiInstance getPipelineWithOrganization:organization
              pipeline:pipeline
          completionHandler: ^(OAIPipeline* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIBlueOceanApi->getPipeline: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **NSString***| Name of the organization | 
 **pipeline** | **NSString***| Name of the pipeline | 

### Return type

[**OAIPipeline***](OAIPipeline.md)

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
        completionHandler: (void (^)(NSArray<OAIPipelineActivity>* output, NSError* error)) handler;
```



Retrieve all activities details for an organization pipeline

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: jenkins_auth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* organization = @"organization_example"; // Name of the organization
NSString* pipeline = @"pipeline_example"; // Name of the pipeline

OAIBlueOceanApi*apiInstance = [[OAIBlueOceanApi alloc] init];

[apiInstance getPipelineActivitiesWithOrganization:organization
              pipeline:pipeline
          completionHandler: ^(NSArray<OAIPipelineActivity>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIBlueOceanApi->getPipelineActivities: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **NSString***| Name of the organization | 
 **pipeline** | **NSString***| Name of the pipeline | 

### Return type

[**NSArray<OAIPipelineActivity>***](OAIPipelineActivity.md)

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
        completionHandler: (void (^)(OAIBranchImpl* output, NSError* error)) handler;
```



Retrieve branch details for an organization pipeline

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: jenkins_auth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* organization = @"organization_example"; // Name of the organization
NSString* pipeline = @"pipeline_example"; // Name of the pipeline
NSString* branch = @"branch_example"; // Name of the branch

OAIBlueOceanApi*apiInstance = [[OAIBlueOceanApi alloc] init];

[apiInstance getPipelineBranchWithOrganization:organization
              pipeline:pipeline
              branch:branch
          completionHandler: ^(OAIBranchImpl* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIBlueOceanApi->getPipelineBranch: %@", error);
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

[**OAIBranchImpl***](OAIBranchImpl.md)

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
        completionHandler: (void (^)(OAIPipelineRun* output, NSError* error)) handler;
```



Retrieve branch run details for an organization pipeline

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: jenkins_auth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* organization = @"organization_example"; // Name of the organization
NSString* pipeline = @"pipeline_example"; // Name of the pipeline
NSString* branch = @"branch_example"; // Name of the branch
NSString* run = @"run_example"; // Name of the run

OAIBlueOceanApi*apiInstance = [[OAIBlueOceanApi alloc] init];

[apiInstance getPipelineBranchRunWithOrganization:organization
              pipeline:pipeline
              branch:branch
              run:run
          completionHandler: ^(OAIPipelineRun* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIBlueOceanApi->getPipelineBranchRun: %@", error);
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

[**OAIPipelineRun***](OAIPipelineRun.md)

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
        completionHandler: (void (^)(OAIMultibranchPipeline* output, NSError* error)) handler;
```



Retrieve all branches details for an organization pipeline

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: jenkins_auth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* organization = @"organization_example"; // Name of the organization
NSString* pipeline = @"pipeline_example"; // Name of the pipeline

OAIBlueOceanApi*apiInstance = [[OAIBlueOceanApi alloc] init];

[apiInstance getPipelineBranchesWithOrganization:organization
              pipeline:pipeline
          completionHandler: ^(OAIMultibranchPipeline* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIBlueOceanApi->getPipelineBranches: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **NSString***| Name of the organization | 
 **pipeline** | **NSString***| Name of the pipeline | 

### Return type

[**OAIMultibranchPipeline***](OAIMultibranchPipeline.md)

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
        completionHandler: (void (^)(OAIPipelineFolderImpl* output, NSError* error)) handler;
```



Retrieve pipeline folder for an organization

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: jenkins_auth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* organization = @"organization_example"; // Name of the organization
NSString* folder = @"folder_example"; // Name of the folder

OAIBlueOceanApi*apiInstance = [[OAIBlueOceanApi alloc] init];

[apiInstance getPipelineFolderWithOrganization:organization
              folder:folder
          completionHandler: ^(OAIPipelineFolderImpl* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIBlueOceanApi->getPipelineFolder: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **NSString***| Name of the organization | 
 **folder** | **NSString***| Name of the folder | 

### Return type

[**OAIPipelineFolderImpl***](OAIPipelineFolderImpl.md)

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
        completionHandler: (void (^)(OAIPipelineImpl* output, NSError* error)) handler;
```



Retrieve pipeline details for an organization folder

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: jenkins_auth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* organization = @"organization_example"; // Name of the organization
NSString* pipeline = @"pipeline_example"; // Name of the pipeline
NSString* folder = @"folder_example"; // Name of the folder

OAIBlueOceanApi*apiInstance = [[OAIBlueOceanApi alloc] init];

[apiInstance getPipelineFolderPipelineWithOrganization:organization
              pipeline:pipeline
              folder:folder
          completionHandler: ^(OAIPipelineImpl* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIBlueOceanApi->getPipelineFolderPipeline: %@", error);
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

[**OAIPipelineImpl***](OAIPipelineImpl.md)

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
        completionHandler: (void (^)(NSArray<OAIQueueItemImpl>* output, NSError* error)) handler;
```



Retrieve queue details for an organization pipeline

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: jenkins_auth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* organization = @"organization_example"; // Name of the organization
NSString* pipeline = @"pipeline_example"; // Name of the pipeline

OAIBlueOceanApi*apiInstance = [[OAIBlueOceanApi alloc] init];

[apiInstance getPipelineQueueWithOrganization:organization
              pipeline:pipeline
          completionHandler: ^(NSArray<OAIQueueItemImpl>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIBlueOceanApi->getPipelineQueue: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **NSString***| Name of the organization | 
 **pipeline** | **NSString***| Name of the pipeline | 

### Return type

[**NSArray<OAIQueueItemImpl>***](OAIQueueItemImpl.md)

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
        completionHandler: (void (^)(OAIPipelineRun* output, NSError* error)) handler;
```



Retrieve run details for an organization pipeline

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: jenkins_auth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* organization = @"organization_example"; // Name of the organization
NSString* pipeline = @"pipeline_example"; // Name of the pipeline
NSString* run = @"run_example"; // Name of the run

OAIBlueOceanApi*apiInstance = [[OAIBlueOceanApi alloc] init];

[apiInstance getPipelineRunWithOrganization:organization
              pipeline:pipeline
              run:run
          completionHandler: ^(OAIPipelineRun* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIBlueOceanApi->getPipelineRun: %@", error);
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

[**OAIPipelineRun***](OAIPipelineRun.md)

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
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: jenkins_auth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* organization = @"organization_example"; // Name of the organization
NSString* pipeline = @"pipeline_example"; // Name of the pipeline
NSString* run = @"run_example"; // Name of the run
NSNumber* start = @56; // Start position of the log (optional)
NSNumber* download = @56; // Set to true in order to download the file, otherwise it's passed as a response body (optional)

OAIBlueOceanApi*apiInstance = [[OAIBlueOceanApi alloc] init];

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
                            NSLog(@"Error calling OAIBlueOceanApi->getPipelineRunLog: %@", error);
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
        completionHandler: (void (^)(OAIPipelineRunNode* output, NSError* error)) handler;
```



Retrieve run node details for an organization pipeline

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: jenkins_auth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* organization = @"organization_example"; // Name of the organization
NSString* pipeline = @"pipeline_example"; // Name of the pipeline
NSString* run = @"run_example"; // Name of the run
NSString* node = @"node_example"; // Name of the node

OAIBlueOceanApi*apiInstance = [[OAIBlueOceanApi alloc] init];

[apiInstance getPipelineRunNodeWithOrganization:organization
              pipeline:pipeline
              run:run
              node:node
          completionHandler: ^(OAIPipelineRunNode* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIBlueOceanApi->getPipelineRunNode: %@", error);
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

[**OAIPipelineRunNode***](OAIPipelineRunNode.md)

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
        completionHandler: (void (^)(OAIPipelineStepImpl* output, NSError* error)) handler;
```



Retrieve run node details for an organization pipeline

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: jenkins_auth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* organization = @"organization_example"; // Name of the organization
NSString* pipeline = @"pipeline_example"; // Name of the pipeline
NSString* run = @"run_example"; // Name of the run
NSString* node = @"node_example"; // Name of the node
NSString* step = @"step_example"; // Name of the step

OAIBlueOceanApi*apiInstance = [[OAIBlueOceanApi alloc] init];

[apiInstance getPipelineRunNodeStepWithOrganization:organization
              pipeline:pipeline
              run:run
              node:node
              step:step
          completionHandler: ^(OAIPipelineStepImpl* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIBlueOceanApi->getPipelineRunNodeStep: %@", error);
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

[**OAIPipelineStepImpl***](OAIPipelineStepImpl.md)

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
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: jenkins_auth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* organization = @"organization_example"; // Name of the organization
NSString* pipeline = @"pipeline_example"; // Name of the pipeline
NSString* run = @"run_example"; // Name of the run
NSString* node = @"node_example"; // Name of the node
NSString* step = @"step_example"; // Name of the step

OAIBlueOceanApi*apiInstance = [[OAIBlueOceanApi alloc] init];

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
                            NSLog(@"Error calling OAIBlueOceanApi->getPipelineRunNodeStepLog: %@", error);
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
        completionHandler: (void (^)(NSArray<OAIPipelineStepImpl>* output, NSError* error)) handler;
```



Retrieve run node steps details for an organization pipeline

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: jenkins_auth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* organization = @"organization_example"; // Name of the organization
NSString* pipeline = @"pipeline_example"; // Name of the pipeline
NSString* run = @"run_example"; // Name of the run
NSString* node = @"node_example"; // Name of the node

OAIBlueOceanApi*apiInstance = [[OAIBlueOceanApi alloc] init];

[apiInstance getPipelineRunNodeStepsWithOrganization:organization
              pipeline:pipeline
              run:run
              node:node
          completionHandler: ^(NSArray<OAIPipelineStepImpl>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIBlueOceanApi->getPipelineRunNodeSteps: %@", error);
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

[**NSArray<OAIPipelineStepImpl>***](OAIPipelineStepImpl.md)

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
        completionHandler: (void (^)(NSArray<OAIPipelineRunNode>* output, NSError* error)) handler;
```



Retrieve run nodes details for an organization pipeline

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: jenkins_auth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* organization = @"organization_example"; // Name of the organization
NSString* pipeline = @"pipeline_example"; // Name of the pipeline
NSString* run = @"run_example"; // Name of the run

OAIBlueOceanApi*apiInstance = [[OAIBlueOceanApi alloc] init];

[apiInstance getPipelineRunNodesWithOrganization:organization
              pipeline:pipeline
              run:run
          completionHandler: ^(NSArray<OAIPipelineRunNode>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIBlueOceanApi->getPipelineRunNodes: %@", error);
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

[**NSArray<OAIPipelineRunNode>***](OAIPipelineRunNode.md)

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
        completionHandler: (void (^)(NSArray<OAIPipelineRun>* output, NSError* error)) handler;
```



Retrieve all runs details for an organization pipeline

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: jenkins_auth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* organization = @"organization_example"; // Name of the organization
NSString* pipeline = @"pipeline_example"; // Name of the pipeline

OAIBlueOceanApi*apiInstance = [[OAIBlueOceanApi alloc] init];

[apiInstance getPipelineRunsWithOrganization:organization
              pipeline:pipeline
          completionHandler: ^(NSArray<OAIPipelineRun>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIBlueOceanApi->getPipelineRuns: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **NSString***| Name of the organization | 
 **pipeline** | **NSString***| Name of the pipeline | 

### Return type

[**NSArray<OAIPipelineRun>***](OAIPipelineRun.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPipelines**
```objc
-(NSURLSessionTask*) getPipelinesWithOrganization: (NSString*) organization
        completionHandler: (void (^)(NSArray<OAIPipeline>* output, NSError* error)) handler;
```



Retrieve all pipelines details for an organization

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: jenkins_auth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* organization = @"organization_example"; // Name of the organization

OAIBlueOceanApi*apiInstance = [[OAIBlueOceanApi alloc] init];

[apiInstance getPipelinesWithOrganization:organization
          completionHandler: ^(NSArray<OAIPipeline>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIBlueOceanApi->getPipelines: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **NSString***| Name of the organization | 

### Return type

[**NSArray<OAIPipeline>***](OAIPipeline.md)

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
        completionHandler: (void (^)(OAIGithubScm* output, NSError* error)) handler;
```



Retrieve SCM details for an organization

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: jenkins_auth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* organization = @"organization_example"; // Name of the organization
NSString* scm = @"scm_example"; // Name of SCM

OAIBlueOceanApi*apiInstance = [[OAIBlueOceanApi alloc] init];

[apiInstance getSCMWithOrganization:organization
              scm:scm
          completionHandler: ^(OAIGithubScm* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIBlueOceanApi->getSCM: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **NSString***| Name of the organization | 
 **scm** | **NSString***| Name of SCM | 

### Return type

[**OAIGithubScm***](OAIGithubScm.md)

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
        completionHandler: (void (^)(NSArray<OAIGithubOrganization>* output, NSError* error)) handler;
```



Retrieve SCM organization repositories details for an organization

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: jenkins_auth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* organization = @"organization_example"; // Name of the organization
NSString* scm = @"scm_example"; // Name of SCM
NSString* scmOrganisation = @"scmOrganisation_example"; // Name of the SCM organization
NSString* credentialId = @"credentialId_example"; // Credential ID (optional)
NSNumber* pageSize = @56; // Number of items in a page (optional)
NSNumber* pageNumber = @56; // Page number (optional)

OAIBlueOceanApi*apiInstance = [[OAIBlueOceanApi alloc] init];

[apiInstance getSCMOrganisationRepositoriesWithOrganization:organization
              scm:scm
              scmOrganisation:scmOrganisation
              credentialId:credentialId
              pageSize:pageSize
              pageNumber:pageNumber
          completionHandler: ^(NSArray<OAIGithubOrganization>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIBlueOceanApi->getSCMOrganisationRepositories: %@", error);
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

[**NSArray<OAIGithubOrganization>***](OAIGithubOrganization.md)

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
        completionHandler: (void (^)(NSArray<OAIGithubOrganization>* output, NSError* error)) handler;
```



Retrieve SCM organization repository details for an organization

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: jenkins_auth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* organization = @"organization_example"; // Name of the organization
NSString* scm = @"scm_example"; // Name of SCM
NSString* scmOrganisation = @"scmOrganisation_example"; // Name of the SCM organization
NSString* repository = @"repository_example"; // Name of the SCM repository
NSString* credentialId = @"credentialId_example"; // Credential ID (optional)

OAIBlueOceanApi*apiInstance = [[OAIBlueOceanApi alloc] init];

[apiInstance getSCMOrganisationRepositoryWithOrganization:organization
              scm:scm
              scmOrganisation:scmOrganisation
              repository:repository
              credentialId:credentialId
          completionHandler: ^(NSArray<OAIGithubOrganization>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIBlueOceanApi->getSCMOrganisationRepository: %@", error);
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

[**NSArray<OAIGithubOrganization>***](OAIGithubOrganization.md)

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
        completionHandler: (void (^)(NSArray<OAIGithubOrganization>* output, NSError* error)) handler;
```



Retrieve SCM organizations details for an organization

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: jenkins_auth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* organization = @"organization_example"; // Name of the organization
NSString* scm = @"scm_example"; // Name of SCM
NSString* credentialId = @"credentialId_example"; // Credential ID (optional)

OAIBlueOceanApi*apiInstance = [[OAIBlueOceanApi alloc] init];

[apiInstance getSCMOrganisationsWithOrganization:organization
              scm:scm
              credentialId:credentialId
          completionHandler: ^(NSArray<OAIGithubOrganization>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIBlueOceanApi->getSCMOrganisations: %@", error);
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

[**NSArray<OAIGithubOrganization>***](OAIGithubOrganization.md)

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
        completionHandler: (void (^)(OAIUser* output, NSError* error)) handler;
```



Retrieve user details for an organization

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: jenkins_auth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* organization = @"organization_example"; // Name of the organization
NSString* user = @"user_example"; // Name of the user

OAIBlueOceanApi*apiInstance = [[OAIBlueOceanApi alloc] init];

[apiInstance getUserWithOrganization:organization
              user:user
          completionHandler: ^(OAIUser* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIBlueOceanApi->getUser: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **NSString***| Name of the organization | 
 **user** | **NSString***| Name of the user | 

### Return type

[**OAIUser***](OAIUser.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserFavorites**
```objc
-(NSURLSessionTask*) getUserFavoritesWithUser: (NSString*) user
        completionHandler: (void (^)(NSArray<OAIFavoriteImpl>* output, NSError* error)) handler;
```



Retrieve user favorites details for an organization

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: jenkins_auth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* user = @"user_example"; // Name of the user

OAIBlueOceanApi*apiInstance = [[OAIBlueOceanApi alloc] init];

[apiInstance getUserFavoritesWithUser:user
          completionHandler: ^(NSArray<OAIFavoriteImpl>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIBlueOceanApi->getUserFavorites: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user** | **NSString***| Name of the user | 

### Return type

[**NSArray<OAIFavoriteImpl>***](OAIFavoriteImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUsers**
```objc
-(NSURLSessionTask*) getUsersWithOrganization: (NSString*) organization
        completionHandler: (void (^)(OAIUser* output, NSError* error)) handler;
```



Retrieve users details for an organization

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: jenkins_auth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* organization = @"organization_example"; // Name of the organization

OAIBlueOceanApi*apiInstance = [[OAIBlueOceanApi alloc] init];

[apiInstance getUsersWithOrganization:organization
          completionHandler: ^(OAIUser* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIBlueOceanApi->getUsers: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **NSString***| Name of the organization | 

### Return type

[**OAIUser***](OAIUser.md)

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
        completionHandler: (void (^)(OAIQueueItemImpl* output, NSError* error)) handler;
```



Replay an organization pipeline run

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: jenkins_auth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* organization = @"organization_example"; // Name of the organization
NSString* pipeline = @"pipeline_example"; // Name of the pipeline
NSString* run = @"run_example"; // Name of the run

OAIBlueOceanApi*apiInstance = [[OAIBlueOceanApi alloc] init];

[apiInstance postPipelineRunWithOrganization:organization
              pipeline:pipeline
              run:run
          completionHandler: ^(OAIQueueItemImpl* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIBlueOceanApi->postPipelineRun: %@", error);
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

[**OAIQueueItemImpl***](OAIQueueItemImpl.md)

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
        completionHandler: (void (^)(OAIQueueItemImpl* output, NSError* error)) handler;
```



Start a build for an organization pipeline

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: jenkins_auth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* organization = @"organization_example"; // Name of the organization
NSString* pipeline = @"pipeline_example"; // Name of the pipeline

OAIBlueOceanApi*apiInstance = [[OAIBlueOceanApi alloc] init];

[apiInstance postPipelineRunsWithOrganization:organization
              pipeline:pipeline
          completionHandler: ^(OAIQueueItemImpl* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIBlueOceanApi->postPipelineRuns: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **NSString***| Name of the organization | 
 **pipeline** | **NSString***| Name of the pipeline | 

### Return type

[**OAIQueueItemImpl***](OAIQueueItemImpl.md)

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
    body: (NSNumber*) body
        completionHandler: (void (^)(OAIFavoriteImpl* output, NSError* error)) handler;
```



Favorite/unfavorite a pipeline

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: jenkins_auth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* organization = @"organization_example"; // Name of the organization
NSString* pipeline = @"pipeline_example"; // Name of the pipeline
NSNumber* body = @56; // Set JSON string body to {\"favorite\": true} to favorite, set value to false to unfavorite

OAIBlueOceanApi*apiInstance = [[OAIBlueOceanApi alloc] init];

[apiInstance putPipelineFavoriteWithOrganization:organization
              pipeline:pipeline
              body:body
          completionHandler: ^(OAIFavoriteImpl* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIBlueOceanApi->putPipelineFavorite: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **NSString***| Name of the organization | 
 **pipeline** | **NSString***| Name of the pipeline | 
 **body** | **NSNumber***| Set JSON string body to {\&quot;favorite\&quot;: true} to favorite, set value to false to unfavorite | 

### Return type

[**OAIFavoriteImpl***](OAIFavoriteImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putPipelineRun**
```objc
-(NSURLSessionTask*) putPipelineRunWithOrganization: (NSString*) organization
    pipeline: (NSString*) pipeline
    run: (NSString*) run
    blocking: (NSString*) blocking
    timeOutInSecs: (NSNumber*) timeOutInSecs
        completionHandler: (void (^)(OAIPipelineRun* output, NSError* error)) handler;
```



Stop a build of an organization pipeline

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: jenkins_auth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* organization = @"organization_example"; // Name of the organization
NSString* pipeline = @"pipeline_example"; // Name of the pipeline
NSString* run = @"run_example"; // Name of the run
NSString* blocking = @"blocking_example"; // Set to true to make blocking stop, default: false (optional)
NSNumber* timeOutInSecs = @56; // Timeout in seconds, default: 10 seconds (optional)

OAIBlueOceanApi*apiInstance = [[OAIBlueOceanApi alloc] init];

[apiInstance putPipelineRunWithOrganization:organization
              pipeline:pipeline
              run:run
              blocking:blocking
              timeOutInSecs:timeOutInSecs
          completionHandler: ^(OAIPipelineRun* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIBlueOceanApi->putPipelineRun: %@", error);
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

[**OAIPipelineRun***](OAIPipelineRun.md)

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
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: jenkins_auth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* q = @"q_example"; // Query string

OAIBlueOceanApi*apiInstance = [[OAIBlueOceanApi alloc] init];

[apiInstance searchWithQ:q
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIBlueOceanApi->search: %@", error);
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
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: jenkins_auth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* q = @"q_example"; // Query string containing an array of class names

OAIBlueOceanApi*apiInstance = [[OAIBlueOceanApi alloc] init];

[apiInstance searchClassesWithQ:q
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIBlueOceanApi->searchClasses: %@", error);
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


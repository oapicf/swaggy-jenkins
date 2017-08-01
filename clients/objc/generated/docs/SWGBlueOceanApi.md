# SWGBlueOceanApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAuthenticatedUser**](SWGBlueOceanApi.md#getauthenticateduser) | **GET** /blue/rest/organizations/{organisation}/user/ | 
[**getClasses**](SWGBlueOceanApi.md#getclasses) | **GET** /blue/rest/classes/{class} | 
[**getOrganisation**](SWGBlueOceanApi.md#getorganisation) | **GET** /blue/rest/organizations/{organisation} | 
[**getOrganisations**](SWGBlueOceanApi.md#getorganisations) | **GET** /blue/rest/organizations/ | 
[**getPipelineBranchByOrg**](SWGBlueOceanApi.md#getpipelinebranchbyorg) | **GET** /blue/rest/organizations/{organisation}/pipelines/{pipeline}/branches/{branch}/ | 
[**getPipelineBranchesByOrg**](SWGBlueOceanApi.md#getpipelinebranchesbyorg) | **GET** /blue/rest/organizations/{organisation}/pipelines/{pipeline}/branches | 
[**getPipelineByOrg**](SWGBlueOceanApi.md#getpipelinebyorg) | **GET** /blue/rest/organizations/{organisation}/pipelines/{pipeline} | 
[**getPipelineFolderByOrg**](SWGBlueOceanApi.md#getpipelinefolderbyorg) | **GET** /blue/rest/organizations/{organisation}/pipelines/{folder}/ | 
[**getPipelineFolderByOrg_0**](SWGBlueOceanApi.md#getpipelinefolderbyorg_0) | **GET** /blue/rest/organizations/{organisation}/pipelines/{folder}/pipelines/{pipeline} | 
[**getPipelinesByOrg**](SWGBlueOceanApi.md#getpipelinesbyorg) | **GET** /blue/rest/organizations/{organisation}/pipelines/ | 
[**getUser**](SWGBlueOceanApi.md#getuser) | **GET** /blue/rest/organizations/{organisation}/users/{user} | 
[**getUsers**](SWGBlueOceanApi.md#getusers) | **GET** /blue/rest/organizations/{organisation}/users/ | 
[**search**](SWGBlueOceanApi.md#search) | **GET** /blue/rest/classes/ | 
[**search_0**](SWGBlueOceanApi.md#search_0) | **GET** /blue/rest/search/ | 


# **getAuthenticatedUser**
```objc
-(NSURLSessionTask*) getAuthenticatedUserWithOrganisation: (NSString*) organisation
        completionHandler: (void (^)(SWGSwaggyjenkinsUser* output, NSError* error)) handler;
```



Retrieve authenticated user details for an organisation

### Example 
```objc

NSString* organisation = @"organisation_example"; // Name of the organisation

SWGBlueOceanApi*apiInstance = [[SWGBlueOceanApi alloc] init];

[apiInstance getAuthenticatedUserWithOrganisation:organisation
          completionHandler: ^(SWGSwaggyjenkinsUser* output, NSError* error) {
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
 **organisation** | **NSString***| Name of the organisation | 

### Return type

[**SWGSwaggyjenkinsUser***](SWGSwaggyjenkinsUser.md)

### Authorization

No authorization required

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

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrganisation**
```objc
-(NSURLSessionTask*) getOrganisationWithOrganisation: (NSString*) organisation
        completionHandler: (void (^)(SWGSwaggyjenkinsOrganisation* output, NSError* error)) handler;
```



Retrieve organisation details

### Example 
```objc

NSString* organisation = @"organisation_example"; // Name of the organisation

SWGBlueOceanApi*apiInstance = [[SWGBlueOceanApi alloc] init];

[apiInstance getOrganisationWithOrganisation:organisation
          completionHandler: ^(SWGSwaggyjenkinsOrganisation* output, NSError* error) {
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
 **organisation** | **NSString***| Name of the organisation | 

### Return type

[**SWGSwaggyjenkinsOrganisation***](SWGSwaggyjenkinsOrganisation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrganisations**
```objc
-(NSURLSessionTask*) getOrganisationsWithCompletionHandler: 
        (void (^)(SWGGetOrganisations* output, NSError* error)) handler;
```



Retrieve all organisations details

### Example 
```objc


SWGBlueOceanApi*apiInstance = [[SWGBlueOceanApi alloc] init];

[apiInstance getOrganisationsWithCompletionHandler: 
          ^(SWGGetOrganisations* output, NSError* error) {
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

[**SWGGetOrganisations***](SWGGetOrganisations.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPipelineBranchByOrg**
```objc
-(NSURLSessionTask*) getPipelineBranchByOrgWithOrganisation: (NSString*) organisation
    pipeline: (NSString*) pipeline
    branch: (NSString*) branch
        completionHandler: (void (^)(SWGIojenkinsblueoceanrestimplpipelineBranchImpl* output, NSError* error)) handler;
```



Retrieve branch details for an organisation pipeline

### Example 
```objc

NSString* organisation = @"organisation_example"; // Name of the organisation
NSString* pipeline = @"pipeline_example"; // Name of the pipeline
NSString* branch = @"branch_example"; // Name of the branch

SWGBlueOceanApi*apiInstance = [[SWGBlueOceanApi alloc] init];

[apiInstance getPipelineBranchByOrgWithOrganisation:organisation
              pipeline:pipeline
              branch:branch
          completionHandler: ^(SWGIojenkinsblueoceanrestimplpipelineBranchImpl* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGBlueOceanApi->getPipelineBranchByOrg: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **NSString***| Name of the organisation | 
 **pipeline** | **NSString***| Name of the pipeline | 
 **branch** | **NSString***| Name of the branch | 

### Return type

[**SWGIojenkinsblueoceanrestimplpipelineBranchImpl***](SWGIojenkinsblueoceanrestimplpipelineBranchImpl.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPipelineBranchesByOrg**
```objc
-(NSURLSessionTask*) getPipelineBranchesByOrgWithOrganisation: (NSString*) organisation
    pipeline: (NSString*) pipeline
        completionHandler: (void (^)(SWGGetMultibranchPipeline* output, NSError* error)) handler;
```



Retrieve all branches details for an organisation pipeline

### Example 
```objc

NSString* organisation = @"organisation_example"; // Name of the organisation
NSString* pipeline = @"pipeline_example"; // Name of the pipeline

SWGBlueOceanApi*apiInstance = [[SWGBlueOceanApi alloc] init];

[apiInstance getPipelineBranchesByOrgWithOrganisation:organisation
              pipeline:pipeline
          completionHandler: ^(SWGGetMultibranchPipeline* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGBlueOceanApi->getPipelineBranchesByOrg: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **NSString***| Name of the organisation | 
 **pipeline** | **NSString***| Name of the pipeline | 

### Return type

[**SWGGetMultibranchPipeline***](SWGGetMultibranchPipeline.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPipelineByOrg**
```objc
-(NSURLSessionTask*) getPipelineByOrgWithOrganisation: (NSString*) organisation
    pipeline: (NSString*) pipeline
        completionHandler: (void (^)(SWGSwaggyjenkinsPipeline* output, NSError* error)) handler;
```



Retrieve pipeline details for an organisation

### Example 
```objc

NSString* organisation = @"organisation_example"; // Name of the organisation
NSString* pipeline = @"pipeline_example"; // Name of the pipeline

SWGBlueOceanApi*apiInstance = [[SWGBlueOceanApi alloc] init];

[apiInstance getPipelineByOrgWithOrganisation:organisation
              pipeline:pipeline
          completionHandler: ^(SWGSwaggyjenkinsPipeline* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGBlueOceanApi->getPipelineByOrg: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **NSString***| Name of the organisation | 
 **pipeline** | **NSString***| Name of the pipeline | 

### Return type

[**SWGSwaggyjenkinsPipeline***](SWGSwaggyjenkinsPipeline.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPipelineFolderByOrg**
```objc
-(NSURLSessionTask*) getPipelineFolderByOrgWithOrganisation: (NSString*) organisation
    folder: (NSString*) folder
        completionHandler: (void (^)(SWGIojenkinsblueoceanserviceembeddedrestPipelineFolderImpl* output, NSError* error)) handler;
```



Retrieve pipeline folder for an organisation

### Example 
```objc

NSString* organisation = @"organisation_example"; // Name of the organisation
NSString* folder = @"folder_example"; // Name of the folder

SWGBlueOceanApi*apiInstance = [[SWGBlueOceanApi alloc] init];

[apiInstance getPipelineFolderByOrgWithOrganisation:organisation
              folder:folder
          completionHandler: ^(SWGIojenkinsblueoceanserviceembeddedrestPipelineFolderImpl* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGBlueOceanApi->getPipelineFolderByOrg: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **NSString***| Name of the organisation | 
 **folder** | **NSString***| Name of the folder | 

### Return type

[**SWGIojenkinsblueoceanserviceembeddedrestPipelineFolderImpl***](SWGIojenkinsblueoceanserviceembeddedrestPipelineFolderImpl.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPipelineFolderByOrg_0**
```objc
-(NSURLSessionTask*) getPipelineFolderByOrg_1WithOrganisation: (NSString*) organisation
    pipeline: (NSString*) pipeline
    folder: (NSString*) folder
        completionHandler: (void (^)(SWGIojenkinsblueoceanserviceembeddedrestPipelineImpl* output, NSError* error)) handler;
```



Retrieve pipeline details for an organisation folder

### Example 
```objc

NSString* organisation = @"organisation_example"; // Name of the organisation
NSString* pipeline = @"pipeline_example"; // Name of the pipeline
NSString* folder = @"folder_example"; // Name of the folder

SWGBlueOceanApi*apiInstance = [[SWGBlueOceanApi alloc] init];

[apiInstance getPipelineFolderByOrg_1WithOrganisation:organisation
              pipeline:pipeline
              folder:folder
          completionHandler: ^(SWGIojenkinsblueoceanserviceembeddedrestPipelineImpl* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGBlueOceanApi->getPipelineFolderByOrg_0: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **NSString***| Name of the organisation | 
 **pipeline** | **NSString***| Name of the pipeline | 
 **folder** | **NSString***| Name of the folder | 

### Return type

[**SWGIojenkinsblueoceanserviceembeddedrestPipelineImpl***](SWGIojenkinsblueoceanserviceembeddedrestPipelineImpl.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPipelinesByOrg**
```objc
-(NSURLSessionTask*) getPipelinesByOrgWithOrganisation: (NSString*) organisation
        completionHandler: (void (^)(SWGGetPipelines* output, NSError* error)) handler;
```



Retrieve all pipelines details for an organisation

### Example 
```objc

NSString* organisation = @"organisation_example"; // Name of the organisation

SWGBlueOceanApi*apiInstance = [[SWGBlueOceanApi alloc] init];

[apiInstance getPipelinesByOrgWithOrganisation:organisation
          completionHandler: ^(SWGGetPipelines* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGBlueOceanApi->getPipelinesByOrg: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **NSString***| Name of the organisation | 

### Return type

[**SWGGetPipelines***](SWGGetPipelines.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUser**
```objc
-(NSURLSessionTask*) getUserWithOrganisation: (NSString*) organisation
    user: (NSString*) user
        completionHandler: (void (^)(SWGSwaggyjenkinsUser* output, NSError* error)) handler;
```



Retrieve user details for an organisation

### Example 
```objc

NSString* organisation = @"organisation_example"; // Name of the organisation
NSString* user = @"user_example"; // Name of the user

SWGBlueOceanApi*apiInstance = [[SWGBlueOceanApi alloc] init];

[apiInstance getUserWithOrganisation:organisation
              user:user
          completionHandler: ^(SWGSwaggyjenkinsUser* output, NSError* error) {
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
 **organisation** | **NSString***| Name of the organisation | 
 **user** | **NSString***| Name of the user | 

### Return type

[**SWGSwaggyjenkinsUser***](SWGSwaggyjenkinsUser.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUsers**
```objc
-(NSURLSessionTask*) getUsersWithOrganisation: (NSString*) organisation
        completionHandler: (void (^)(SWGSwaggyjenkinsUser* output, NSError* error)) handler;
```



Retrieve users details for an organisation

### Example 
```objc

NSString* organisation = @"organisation_example"; // Name of the organisation

SWGBlueOceanApi*apiInstance = [[SWGBlueOceanApi alloc] init];

[apiInstance getUsersWithOrganisation:organisation
          completionHandler: ^(SWGSwaggyjenkinsUser* output, NSError* error) {
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
 **organisation** | **NSString***| Name of the organisation | 

### Return type

[**SWGSwaggyjenkinsUser***](SWGSwaggyjenkinsUser.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search**
```objc
-(NSURLSessionTask*) searchWithQ: (NSString*) q
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```



Get classes details

### Example 
```objc

NSString* q = @"q_example"; // Query string containing an array of class names

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
 **q** | **NSString***| Query string containing an array of class names | 

### Return type

**NSString***

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search_0**
```objc
-(NSURLSessionTask*) search_2WithQ: (NSString*) q
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```



Search for any resource details

### Example 
```objc

NSString* q = @"q_example"; // Query string

SWGBlueOceanApi*apiInstance = [[SWGBlueOceanApi alloc] init];

[apiInstance search_2WithQ:q
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGBlueOceanApi->search_0: %@", error);
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

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


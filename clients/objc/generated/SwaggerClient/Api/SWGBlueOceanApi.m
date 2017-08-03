#import "SWGBlueOceanApi.h"
#import "SWGQueryParamCollection.h"
#import "SWGApiClient.h"
#import "SWGBody.h"
#import "SWGBranchImpl.h"
#import "SWGFavoriteImpl.h"
#import "SWGGithubScm.h"
#import "SWGMultibranchPipeline.h"
#import "SWGOrganisation.h"
#import "SWGOrganisations.h"
#import "SWGPipeline.h"
#import "SWGPipelineActivities.h"
#import "SWGPipelineFolderImpl.h"
#import "SWGPipelineImpl.h"
#import "SWGPipelineQueue.h"
#import "SWGPipelineRun.h"
#import "SWGPipelineRunNode.h"
#import "SWGPipelineRunNodeSteps.h"
#import "SWGPipelineRunNodes.h"
#import "SWGPipelineRuns.h"
#import "SWGPipelineStepImpl.h"
#import "SWGPipelines.h"
#import "SWGQueueItemImpl.h"
#import "SWGScmOrganisations.h"
#import "SWGUser.h"
#import "SWGUserFavorites.h"


@interface SWGBlueOceanApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation SWGBlueOceanApi

NSString* kSWGBlueOceanApiErrorDomain = @"SWGBlueOceanApiErrorDomain";
NSInteger kSWGBlueOceanApiMissingParamErrorCode = 234513;

@synthesize apiClient = _apiClient;

#pragma mark - Initialize methods

- (instancetype) init {
    return [self initWithApiClient:[SWGApiClient sharedClient]];
}


-(instancetype) initWithApiClient:(SWGApiClient *)apiClient {
    self = [super init];
    if (self) {
        _apiClient = apiClient;
        _mutableDefaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

#pragma mark -

-(NSString*) defaultHeaderForKey:(NSString*)key {
    return self.mutableDefaultHeaders[key];
}

-(void) setDefaultHeaderValue:(NSString*) value forKey:(NSString*)key {
    [self.mutableDefaultHeaders setValue:value forKey:key];
}

-(NSDictionary *)defaultHeaders {
    return self.mutableDefaultHeaders;
}

#pragma mark - Api Methods

///
/// 
/// Delete queue item from an organization pipeline queue
///  @param organization Name of the organization 
///
///  @param pipeline Name of the pipeline 
///
///  @param queue Name of the queue item 
///
///  @returns void
///
-(NSURLSessionTask*) deletePipelineQueueItemWithOrganization: (NSString*) organization
    pipeline: (NSString*) pipeline
    queue: (NSString*) queue
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'organization' is set
    if (organization == nil) {
        NSParameterAssert(organization);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"organization"] };
            NSError* error = [NSError errorWithDomain:kSWGBlueOceanApiErrorDomain code:kSWGBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'pipeline' is set
    if (pipeline == nil) {
        NSParameterAssert(pipeline);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"pipeline"] };
            NSError* error = [NSError errorWithDomain:kSWGBlueOceanApiErrorDomain code:kSWGBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'queue' is set
    if (queue == nil) {
        NSParameterAssert(queue);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"queue"] };
            NSError* error = [NSError errorWithDomain:kSWGBlueOceanApiErrorDomain code:kSWGBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (organization != nil) {
        pathParams[@"organization"] = organization;
    }
    if (pipeline != nil) {
        pathParams[@"pipeline"] = pipeline;
    }
    if (queue != nil) {
        pathParams[@"queue"] = queue;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"jenkins_auth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"DELETE"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: nil
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler(error);
                                }
                            }];
}

///
/// 
/// Retrieve authenticated user details for an organization
///  @param organization Name of the organization 
///
///  @returns SWGUser*
///
-(NSURLSessionTask*) getAuthenticatedUserWithOrganization: (NSString*) organization
    completionHandler: (void (^)(SWGUser* output, NSError* error)) handler {
    // verify the required parameter 'organization' is set
    if (organization == nil) {
        NSParameterAssert(organization);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"organization"] };
            NSError* error = [NSError errorWithDomain:kSWGBlueOceanApiErrorDomain code:kSWGBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/blue/rest/organizations/{organization}/user/"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (organization != nil) {
        pathParams[@"organization"] = organization;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"jenkins_auth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SWGUser*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGUser*)data, error);
                                }
                            }];
}

///
/// 
/// Get a list of class names supported by a given class
///  @param class Name of the class 
///
///  @returns NSString*
///
-(NSURLSessionTask*) getClassesWithClass: (NSString*) class
    completionHandler: (void (^)(NSString* output, NSError* error)) handler {
    // verify the required parameter 'class' is set
    if (class == nil) {
        NSParameterAssert(class);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"class"] };
            NSError* error = [NSError errorWithDomain:kSWGBlueOceanApiErrorDomain code:kSWGBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/blue/rest/classes/{class}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (class != nil) {
        pathParams[@"class"] = class;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"jenkins_auth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSString*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSString*)data, error);
                                }
                            }];
}

///
/// 
/// Retrieve organization details
///  @param organization Name of the organization 
///
///  @returns SWGOrganisation*
///
-(NSURLSessionTask*) getOrganisationWithOrganization: (NSString*) organization
    completionHandler: (void (^)(SWGOrganisation* output, NSError* error)) handler {
    // verify the required parameter 'organization' is set
    if (organization == nil) {
        NSParameterAssert(organization);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"organization"] };
            NSError* error = [NSError errorWithDomain:kSWGBlueOceanApiErrorDomain code:kSWGBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/blue/rest/organizations/{organization}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (organization != nil) {
        pathParams[@"organization"] = organization;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"jenkins_auth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SWGOrganisation*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGOrganisation*)data, error);
                                }
                            }];
}

///
/// 
/// Retrieve all organizations details
///  @returns SWGOrganisations*
///
-(NSURLSessionTask*) getOrganisationsWithCompletionHandler: 
    (void (^)(SWGOrganisations* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/blue/rest/organizations/"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"jenkins_auth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SWGOrganisations*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGOrganisations*)data, error);
                                }
                            }];
}

///
/// 
/// Retrieve pipeline details for an organization
///  @param organization Name of the organization 
///
///  @param pipeline Name of the pipeline 
///
///  @returns SWGPipeline*
///
-(NSURLSessionTask*) getPipelineWithOrganization: (NSString*) organization
    pipeline: (NSString*) pipeline
    completionHandler: (void (^)(SWGPipeline* output, NSError* error)) handler {
    // verify the required parameter 'organization' is set
    if (organization == nil) {
        NSParameterAssert(organization);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"organization"] };
            NSError* error = [NSError errorWithDomain:kSWGBlueOceanApiErrorDomain code:kSWGBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'pipeline' is set
    if (pipeline == nil) {
        NSParameterAssert(pipeline);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"pipeline"] };
            NSError* error = [NSError errorWithDomain:kSWGBlueOceanApiErrorDomain code:kSWGBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/blue/rest/organizations/{organization}/pipelines/{pipeline}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (organization != nil) {
        pathParams[@"organization"] = organization;
    }
    if (pipeline != nil) {
        pathParams[@"pipeline"] = pipeline;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"jenkins_auth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SWGPipeline*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGPipeline*)data, error);
                                }
                            }];
}

///
/// 
/// Retrieve all activities details for an organization pipeline
///  @param organization Name of the organization 
///
///  @param pipeline Name of the pipeline 
///
///  @returns SWGPipelineActivities*
///
-(NSURLSessionTask*) getPipelineActivitiesWithOrganization: (NSString*) organization
    pipeline: (NSString*) pipeline
    completionHandler: (void (^)(SWGPipelineActivities* output, NSError* error)) handler {
    // verify the required parameter 'organization' is set
    if (organization == nil) {
        NSParameterAssert(organization);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"organization"] };
            NSError* error = [NSError errorWithDomain:kSWGBlueOceanApiErrorDomain code:kSWGBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'pipeline' is set
    if (pipeline == nil) {
        NSParameterAssert(pipeline);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"pipeline"] };
            NSError* error = [NSError errorWithDomain:kSWGBlueOceanApiErrorDomain code:kSWGBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/blue/rest/organizations/{organization}/pipelines/{pipeline}/activities"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (organization != nil) {
        pathParams[@"organization"] = organization;
    }
    if (pipeline != nil) {
        pathParams[@"pipeline"] = pipeline;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"jenkins_auth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SWGPipelineActivities*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGPipelineActivities*)data, error);
                                }
                            }];
}

///
/// 
/// Retrieve branch details for an organization pipeline
///  @param organization Name of the organization 
///
///  @param pipeline Name of the pipeline 
///
///  @param branch Name of the branch 
///
///  @returns SWGBranchImpl*
///
-(NSURLSessionTask*) getPipelineBranchWithOrganization: (NSString*) organization
    pipeline: (NSString*) pipeline
    branch: (NSString*) branch
    completionHandler: (void (^)(SWGBranchImpl* output, NSError* error)) handler {
    // verify the required parameter 'organization' is set
    if (organization == nil) {
        NSParameterAssert(organization);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"organization"] };
            NSError* error = [NSError errorWithDomain:kSWGBlueOceanApiErrorDomain code:kSWGBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'pipeline' is set
    if (pipeline == nil) {
        NSParameterAssert(pipeline);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"pipeline"] };
            NSError* error = [NSError errorWithDomain:kSWGBlueOceanApiErrorDomain code:kSWGBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'branch' is set
    if (branch == nil) {
        NSParameterAssert(branch);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"branch"] };
            NSError* error = [NSError errorWithDomain:kSWGBlueOceanApiErrorDomain code:kSWGBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (organization != nil) {
        pathParams[@"organization"] = organization;
    }
    if (pipeline != nil) {
        pathParams[@"pipeline"] = pipeline;
    }
    if (branch != nil) {
        pathParams[@"branch"] = branch;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"jenkins_auth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SWGBranchImpl*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGBranchImpl*)data, error);
                                }
                            }];
}

///
/// 
/// Retrieve branch run details for an organization pipeline
///  @param organization Name of the organization 
///
///  @param pipeline Name of the pipeline 
///
///  @param branch Name of the branch 
///
///  @param run Name of the run 
///
///  @returns SWGPipelineRun*
///
-(NSURLSessionTask*) getPipelineBranchRunWithOrganization: (NSString*) organization
    pipeline: (NSString*) pipeline
    branch: (NSString*) branch
    run: (NSString*) run
    completionHandler: (void (^)(SWGPipelineRun* output, NSError* error)) handler {
    // verify the required parameter 'organization' is set
    if (organization == nil) {
        NSParameterAssert(organization);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"organization"] };
            NSError* error = [NSError errorWithDomain:kSWGBlueOceanApiErrorDomain code:kSWGBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'pipeline' is set
    if (pipeline == nil) {
        NSParameterAssert(pipeline);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"pipeline"] };
            NSError* error = [NSError errorWithDomain:kSWGBlueOceanApiErrorDomain code:kSWGBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'branch' is set
    if (branch == nil) {
        NSParameterAssert(branch);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"branch"] };
            NSError* error = [NSError errorWithDomain:kSWGBlueOceanApiErrorDomain code:kSWGBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'run' is set
    if (run == nil) {
        NSParameterAssert(run);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"run"] };
            NSError* error = [NSError errorWithDomain:kSWGBlueOceanApiErrorDomain code:kSWGBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (organization != nil) {
        pathParams[@"organization"] = organization;
    }
    if (pipeline != nil) {
        pathParams[@"pipeline"] = pipeline;
    }
    if (branch != nil) {
        pathParams[@"branch"] = branch;
    }
    if (run != nil) {
        pathParams[@"run"] = run;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"jenkins_auth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SWGPipelineRun*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGPipelineRun*)data, error);
                                }
                            }];
}

///
/// 
/// Retrieve all branches details for an organization pipeline
///  @param organization Name of the organization 
///
///  @param pipeline Name of the pipeline 
///
///  @returns SWGMultibranchPipeline*
///
-(NSURLSessionTask*) getPipelineBranchesWithOrganization: (NSString*) organization
    pipeline: (NSString*) pipeline
    completionHandler: (void (^)(SWGMultibranchPipeline* output, NSError* error)) handler {
    // verify the required parameter 'organization' is set
    if (organization == nil) {
        NSParameterAssert(organization);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"organization"] };
            NSError* error = [NSError errorWithDomain:kSWGBlueOceanApiErrorDomain code:kSWGBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'pipeline' is set
    if (pipeline == nil) {
        NSParameterAssert(pipeline);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"pipeline"] };
            NSError* error = [NSError errorWithDomain:kSWGBlueOceanApiErrorDomain code:kSWGBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (organization != nil) {
        pathParams[@"organization"] = organization;
    }
    if (pipeline != nil) {
        pathParams[@"pipeline"] = pipeline;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"jenkins_auth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SWGMultibranchPipeline*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGMultibranchPipeline*)data, error);
                                }
                            }];
}

///
/// 
/// Retrieve pipeline folder for an organization
///  @param organization Name of the organization 
///
///  @param folder Name of the folder 
///
///  @returns SWGPipelineFolderImpl*
///
-(NSURLSessionTask*) getPipelineFolderWithOrganization: (NSString*) organization
    folder: (NSString*) folder
    completionHandler: (void (^)(SWGPipelineFolderImpl* output, NSError* error)) handler {
    // verify the required parameter 'organization' is set
    if (organization == nil) {
        NSParameterAssert(organization);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"organization"] };
            NSError* error = [NSError errorWithDomain:kSWGBlueOceanApiErrorDomain code:kSWGBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'folder' is set
    if (folder == nil) {
        NSParameterAssert(folder);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"folder"] };
            NSError* error = [NSError errorWithDomain:kSWGBlueOceanApiErrorDomain code:kSWGBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/blue/rest/organizations/{organization}/pipelines/{folder}/"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (organization != nil) {
        pathParams[@"organization"] = organization;
    }
    if (folder != nil) {
        pathParams[@"folder"] = folder;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"jenkins_auth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SWGPipelineFolderImpl*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGPipelineFolderImpl*)data, error);
                                }
                            }];
}

///
/// 
/// Retrieve pipeline details for an organization folder
///  @param organization Name of the organization 
///
///  @param pipeline Name of the pipeline 
///
///  @param folder Name of the folder 
///
///  @returns SWGPipelineImpl*
///
-(NSURLSessionTask*) getPipelineFolderPipelineWithOrganization: (NSString*) organization
    pipeline: (NSString*) pipeline
    folder: (NSString*) folder
    completionHandler: (void (^)(SWGPipelineImpl* output, NSError* error)) handler {
    // verify the required parameter 'organization' is set
    if (organization == nil) {
        NSParameterAssert(organization);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"organization"] };
            NSError* error = [NSError errorWithDomain:kSWGBlueOceanApiErrorDomain code:kSWGBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'pipeline' is set
    if (pipeline == nil) {
        NSParameterAssert(pipeline);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"pipeline"] };
            NSError* error = [NSError errorWithDomain:kSWGBlueOceanApiErrorDomain code:kSWGBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'folder' is set
    if (folder == nil) {
        NSParameterAssert(folder);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"folder"] };
            NSError* error = [NSError errorWithDomain:kSWGBlueOceanApiErrorDomain code:kSWGBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/blue/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (organization != nil) {
        pathParams[@"organization"] = organization;
    }
    if (pipeline != nil) {
        pathParams[@"pipeline"] = pipeline;
    }
    if (folder != nil) {
        pathParams[@"folder"] = folder;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"jenkins_auth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SWGPipelineImpl*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGPipelineImpl*)data, error);
                                }
                            }];
}

///
/// 
/// Retrieve queue details for an organization pipeline
///  @param organization Name of the organization 
///
///  @param pipeline Name of the pipeline 
///
///  @returns SWGPipelineQueue*
///
-(NSURLSessionTask*) getPipelineQueueWithOrganization: (NSString*) organization
    pipeline: (NSString*) pipeline
    completionHandler: (void (^)(SWGPipelineQueue* output, NSError* error)) handler {
    // verify the required parameter 'organization' is set
    if (organization == nil) {
        NSParameterAssert(organization);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"organization"] };
            NSError* error = [NSError errorWithDomain:kSWGBlueOceanApiErrorDomain code:kSWGBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'pipeline' is set
    if (pipeline == nil) {
        NSParameterAssert(pipeline);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"pipeline"] };
            NSError* error = [NSError errorWithDomain:kSWGBlueOceanApiErrorDomain code:kSWGBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/blue/rest/organizations/{organization}/pipelines/{pipeline}/queue"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (organization != nil) {
        pathParams[@"organization"] = organization;
    }
    if (pipeline != nil) {
        pathParams[@"pipeline"] = pipeline;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"jenkins_auth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SWGPipelineQueue*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGPipelineQueue*)data, error);
                                }
                            }];
}

///
/// 
/// Retrieve run details for an organization pipeline
///  @param organization Name of the organization 
///
///  @param pipeline Name of the pipeline 
///
///  @param run Name of the run 
///
///  @returns SWGPipelineRun*
///
-(NSURLSessionTask*) getPipelineRunWithOrganization: (NSString*) organization
    pipeline: (NSString*) pipeline
    run: (NSString*) run
    completionHandler: (void (^)(SWGPipelineRun* output, NSError* error)) handler {
    // verify the required parameter 'organization' is set
    if (organization == nil) {
        NSParameterAssert(organization);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"organization"] };
            NSError* error = [NSError errorWithDomain:kSWGBlueOceanApiErrorDomain code:kSWGBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'pipeline' is set
    if (pipeline == nil) {
        NSParameterAssert(pipeline);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"pipeline"] };
            NSError* error = [NSError errorWithDomain:kSWGBlueOceanApiErrorDomain code:kSWGBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'run' is set
    if (run == nil) {
        NSParameterAssert(run);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"run"] };
            NSError* error = [NSError errorWithDomain:kSWGBlueOceanApiErrorDomain code:kSWGBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (organization != nil) {
        pathParams[@"organization"] = organization;
    }
    if (pipeline != nil) {
        pathParams[@"pipeline"] = pipeline;
    }
    if (run != nil) {
        pathParams[@"run"] = run;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"jenkins_auth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SWGPipelineRun*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGPipelineRun*)data, error);
                                }
                            }];
}

///
/// 
/// Get log for a pipeline run
///  @param organization Name of the organization 
///
///  @param pipeline Name of the pipeline 
///
///  @param run Name of the run 
///
///  @param start Start position of the log (optional)
///
///  @param download Set to true in order to download the file, otherwise it's passed as a response body (optional)
///
///  @returns NSString*
///
-(NSURLSessionTask*) getPipelineRunLogWithOrganization: (NSString*) organization
    pipeline: (NSString*) pipeline
    run: (NSString*) run
    start: (NSNumber*) start
    download: (NSNumber*) download
    completionHandler: (void (^)(NSString* output, NSError* error)) handler {
    // verify the required parameter 'organization' is set
    if (organization == nil) {
        NSParameterAssert(organization);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"organization"] };
            NSError* error = [NSError errorWithDomain:kSWGBlueOceanApiErrorDomain code:kSWGBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'pipeline' is set
    if (pipeline == nil) {
        NSParameterAssert(pipeline);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"pipeline"] };
            NSError* error = [NSError errorWithDomain:kSWGBlueOceanApiErrorDomain code:kSWGBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'run' is set
    if (run == nil) {
        NSParameterAssert(run);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"run"] };
            NSError* error = [NSError errorWithDomain:kSWGBlueOceanApiErrorDomain code:kSWGBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (organization != nil) {
        pathParams[@"organization"] = organization;
    }
    if (pipeline != nil) {
        pathParams[@"pipeline"] = pipeline;
    }
    if (run != nil) {
        pathParams[@"run"] = run;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (start != nil) {
        queryParams[@"start"] = start;
    }
    if (download != nil) {
        queryParams[@"download"] = [download isEqual:@(YES)] ? @"true" : @"false";
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"jenkins_auth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSString*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSString*)data, error);
                                }
                            }];
}

///
/// 
/// Retrieve run node details for an organization pipeline
///  @param organization Name of the organization 
///
///  @param pipeline Name of the pipeline 
///
///  @param run Name of the run 
///
///  @param node Name of the node 
///
///  @returns SWGPipelineRunNode*
///
-(NSURLSessionTask*) getPipelineRunNodeWithOrganization: (NSString*) organization
    pipeline: (NSString*) pipeline
    run: (NSString*) run
    node: (NSString*) node
    completionHandler: (void (^)(SWGPipelineRunNode* output, NSError* error)) handler {
    // verify the required parameter 'organization' is set
    if (organization == nil) {
        NSParameterAssert(organization);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"organization"] };
            NSError* error = [NSError errorWithDomain:kSWGBlueOceanApiErrorDomain code:kSWGBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'pipeline' is set
    if (pipeline == nil) {
        NSParameterAssert(pipeline);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"pipeline"] };
            NSError* error = [NSError errorWithDomain:kSWGBlueOceanApiErrorDomain code:kSWGBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'run' is set
    if (run == nil) {
        NSParameterAssert(run);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"run"] };
            NSError* error = [NSError errorWithDomain:kSWGBlueOceanApiErrorDomain code:kSWGBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'node' is set
    if (node == nil) {
        NSParameterAssert(node);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"node"] };
            NSError* error = [NSError errorWithDomain:kSWGBlueOceanApiErrorDomain code:kSWGBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (organization != nil) {
        pathParams[@"organization"] = organization;
    }
    if (pipeline != nil) {
        pathParams[@"pipeline"] = pipeline;
    }
    if (run != nil) {
        pathParams[@"run"] = run;
    }
    if (node != nil) {
        pathParams[@"node"] = node;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"jenkins_auth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SWGPipelineRunNode*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGPipelineRunNode*)data, error);
                                }
                            }];
}

///
/// 
/// Retrieve run node details for an organization pipeline
///  @param organization Name of the organization 
///
///  @param pipeline Name of the pipeline 
///
///  @param run Name of the run 
///
///  @param node Name of the node 
///
///  @param step Name of the step 
///
///  @returns SWGPipelineStepImpl*
///
-(NSURLSessionTask*) getPipelineRunNodeStepWithOrganization: (NSString*) organization
    pipeline: (NSString*) pipeline
    run: (NSString*) run
    node: (NSString*) node
    step: (NSString*) step
    completionHandler: (void (^)(SWGPipelineStepImpl* output, NSError* error)) handler {
    // verify the required parameter 'organization' is set
    if (organization == nil) {
        NSParameterAssert(organization);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"organization"] };
            NSError* error = [NSError errorWithDomain:kSWGBlueOceanApiErrorDomain code:kSWGBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'pipeline' is set
    if (pipeline == nil) {
        NSParameterAssert(pipeline);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"pipeline"] };
            NSError* error = [NSError errorWithDomain:kSWGBlueOceanApiErrorDomain code:kSWGBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'run' is set
    if (run == nil) {
        NSParameterAssert(run);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"run"] };
            NSError* error = [NSError errorWithDomain:kSWGBlueOceanApiErrorDomain code:kSWGBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'node' is set
    if (node == nil) {
        NSParameterAssert(node);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"node"] };
            NSError* error = [NSError errorWithDomain:kSWGBlueOceanApiErrorDomain code:kSWGBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'step' is set
    if (step == nil) {
        NSParameterAssert(step);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"step"] };
            NSError* error = [NSError errorWithDomain:kSWGBlueOceanApiErrorDomain code:kSWGBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (organization != nil) {
        pathParams[@"organization"] = organization;
    }
    if (pipeline != nil) {
        pathParams[@"pipeline"] = pipeline;
    }
    if (run != nil) {
        pathParams[@"run"] = run;
    }
    if (node != nil) {
        pathParams[@"node"] = node;
    }
    if (step != nil) {
        pathParams[@"step"] = step;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"jenkins_auth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SWGPipelineStepImpl*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGPipelineStepImpl*)data, error);
                                }
                            }];
}

///
/// 
/// Get log for a pipeline run node step
///  @param organization Name of the organization 
///
///  @param pipeline Name of the pipeline 
///
///  @param run Name of the run 
///
///  @param node Name of the node 
///
///  @param step Name of the step 
///
///  @returns NSString*
///
-(NSURLSessionTask*) getPipelineRunNodeStepLogWithOrganization: (NSString*) organization
    pipeline: (NSString*) pipeline
    run: (NSString*) run
    node: (NSString*) node
    step: (NSString*) step
    completionHandler: (void (^)(NSString* output, NSError* error)) handler {
    // verify the required parameter 'organization' is set
    if (organization == nil) {
        NSParameterAssert(organization);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"organization"] };
            NSError* error = [NSError errorWithDomain:kSWGBlueOceanApiErrorDomain code:kSWGBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'pipeline' is set
    if (pipeline == nil) {
        NSParameterAssert(pipeline);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"pipeline"] };
            NSError* error = [NSError errorWithDomain:kSWGBlueOceanApiErrorDomain code:kSWGBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'run' is set
    if (run == nil) {
        NSParameterAssert(run);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"run"] };
            NSError* error = [NSError errorWithDomain:kSWGBlueOceanApiErrorDomain code:kSWGBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'node' is set
    if (node == nil) {
        NSParameterAssert(node);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"node"] };
            NSError* error = [NSError errorWithDomain:kSWGBlueOceanApiErrorDomain code:kSWGBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'step' is set
    if (step == nil) {
        NSParameterAssert(step);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"step"] };
            NSError* error = [NSError errorWithDomain:kSWGBlueOceanApiErrorDomain code:kSWGBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (organization != nil) {
        pathParams[@"organization"] = organization;
    }
    if (pipeline != nil) {
        pathParams[@"pipeline"] = pipeline;
    }
    if (run != nil) {
        pathParams[@"run"] = run;
    }
    if (node != nil) {
        pathParams[@"node"] = node;
    }
    if (step != nil) {
        pathParams[@"step"] = step;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"jenkins_auth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSString*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSString*)data, error);
                                }
                            }];
}

///
/// 
/// Retrieve run node steps details for an organization pipeline
///  @param organization Name of the organization 
///
///  @param pipeline Name of the pipeline 
///
///  @param run Name of the run 
///
///  @param node Name of the node 
///
///  @returns SWGPipelineRunNodeSteps*
///
-(NSURLSessionTask*) getPipelineRunNodeStepsWithOrganization: (NSString*) organization
    pipeline: (NSString*) pipeline
    run: (NSString*) run
    node: (NSString*) node
    completionHandler: (void (^)(SWGPipelineRunNodeSteps* output, NSError* error)) handler {
    // verify the required parameter 'organization' is set
    if (organization == nil) {
        NSParameterAssert(organization);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"organization"] };
            NSError* error = [NSError errorWithDomain:kSWGBlueOceanApiErrorDomain code:kSWGBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'pipeline' is set
    if (pipeline == nil) {
        NSParameterAssert(pipeline);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"pipeline"] };
            NSError* error = [NSError errorWithDomain:kSWGBlueOceanApiErrorDomain code:kSWGBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'run' is set
    if (run == nil) {
        NSParameterAssert(run);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"run"] };
            NSError* error = [NSError errorWithDomain:kSWGBlueOceanApiErrorDomain code:kSWGBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'node' is set
    if (node == nil) {
        NSParameterAssert(node);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"node"] };
            NSError* error = [NSError errorWithDomain:kSWGBlueOceanApiErrorDomain code:kSWGBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (organization != nil) {
        pathParams[@"organization"] = organization;
    }
    if (pipeline != nil) {
        pathParams[@"pipeline"] = pipeline;
    }
    if (run != nil) {
        pathParams[@"run"] = run;
    }
    if (node != nil) {
        pathParams[@"node"] = node;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"jenkins_auth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SWGPipelineRunNodeSteps*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGPipelineRunNodeSteps*)data, error);
                                }
                            }];
}

///
/// 
/// Retrieve run nodes details for an organization pipeline
///  @param organization Name of the organization 
///
///  @param pipeline Name of the pipeline 
///
///  @param run Name of the run 
///
///  @returns SWGPipelineRunNodes*
///
-(NSURLSessionTask*) getPipelineRunNodesWithOrganization: (NSString*) organization
    pipeline: (NSString*) pipeline
    run: (NSString*) run
    completionHandler: (void (^)(SWGPipelineRunNodes* output, NSError* error)) handler {
    // verify the required parameter 'organization' is set
    if (organization == nil) {
        NSParameterAssert(organization);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"organization"] };
            NSError* error = [NSError errorWithDomain:kSWGBlueOceanApiErrorDomain code:kSWGBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'pipeline' is set
    if (pipeline == nil) {
        NSParameterAssert(pipeline);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"pipeline"] };
            NSError* error = [NSError errorWithDomain:kSWGBlueOceanApiErrorDomain code:kSWGBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'run' is set
    if (run == nil) {
        NSParameterAssert(run);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"run"] };
            NSError* error = [NSError errorWithDomain:kSWGBlueOceanApiErrorDomain code:kSWGBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (organization != nil) {
        pathParams[@"organization"] = organization;
    }
    if (pipeline != nil) {
        pathParams[@"pipeline"] = pipeline;
    }
    if (run != nil) {
        pathParams[@"run"] = run;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"jenkins_auth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SWGPipelineRunNodes*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGPipelineRunNodes*)data, error);
                                }
                            }];
}

///
/// 
/// Retrieve all runs details for an organization pipeline
///  @param organization Name of the organization 
///
///  @param pipeline Name of the pipeline 
///
///  @returns SWGPipelineRuns*
///
-(NSURLSessionTask*) getPipelineRunsWithOrganization: (NSString*) organization
    pipeline: (NSString*) pipeline
    completionHandler: (void (^)(SWGPipelineRuns* output, NSError* error)) handler {
    // verify the required parameter 'organization' is set
    if (organization == nil) {
        NSParameterAssert(organization);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"organization"] };
            NSError* error = [NSError errorWithDomain:kSWGBlueOceanApiErrorDomain code:kSWGBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'pipeline' is set
    if (pipeline == nil) {
        NSParameterAssert(pipeline);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"pipeline"] };
            NSError* error = [NSError errorWithDomain:kSWGBlueOceanApiErrorDomain code:kSWGBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (organization != nil) {
        pathParams[@"organization"] = organization;
    }
    if (pipeline != nil) {
        pathParams[@"pipeline"] = pipeline;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"jenkins_auth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SWGPipelineRuns*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGPipelineRuns*)data, error);
                                }
                            }];
}

///
/// 
/// Retrieve all pipelines details for an organization
///  @param organization Name of the organization 
///
///  @returns SWGPipelines*
///
-(NSURLSessionTask*) getPipelinesWithOrganization: (NSString*) organization
    completionHandler: (void (^)(SWGPipelines* output, NSError* error)) handler {
    // verify the required parameter 'organization' is set
    if (organization == nil) {
        NSParameterAssert(organization);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"organization"] };
            NSError* error = [NSError errorWithDomain:kSWGBlueOceanApiErrorDomain code:kSWGBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/blue/rest/organizations/{organization}/pipelines/"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (organization != nil) {
        pathParams[@"organization"] = organization;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"jenkins_auth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SWGPipelines*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGPipelines*)data, error);
                                }
                            }];
}

///
/// 
/// Retrieve SCM details for an organization
///  @param organization Name of the organization 
///
///  @param scm Name of SCM 
///
///  @returns SWGGithubScm*
///
-(NSURLSessionTask*) getSCMWithOrganization: (NSString*) organization
    scm: (NSString*) scm
    completionHandler: (void (^)(SWGGithubScm* output, NSError* error)) handler {
    // verify the required parameter 'organization' is set
    if (organization == nil) {
        NSParameterAssert(organization);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"organization"] };
            NSError* error = [NSError errorWithDomain:kSWGBlueOceanApiErrorDomain code:kSWGBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'scm' is set
    if (scm == nil) {
        NSParameterAssert(scm);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"scm"] };
            NSError* error = [NSError errorWithDomain:kSWGBlueOceanApiErrorDomain code:kSWGBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/blue/rest/organizations/{organization}/scm/{scm}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (organization != nil) {
        pathParams[@"organization"] = organization;
    }
    if (scm != nil) {
        pathParams[@"scm"] = scm;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"jenkins_auth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SWGGithubScm*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGGithubScm*)data, error);
                                }
                            }];
}

///
/// 
/// Retrieve SCM organization repositories details for an organization
///  @param organization Name of the organization 
///
///  @param scm Name of SCM 
///
///  @param scmOrganisation Name of the SCM organization 
///
///  @param credentialId Credential ID (optional)
///
///  @param pageSize Number of items in a page (optional)
///
///  @param pageNumber Page number (optional)
///
///  @returns SWGScmOrganisations*
///
-(NSURLSessionTask*) getSCMOrganisationRepositoriesWithOrganization: (NSString*) organization
    scm: (NSString*) scm
    scmOrganisation: (NSString*) scmOrganisation
    credentialId: (NSString*) credentialId
    pageSize: (NSNumber*) pageSize
    pageNumber: (NSNumber*) pageNumber
    completionHandler: (void (^)(SWGScmOrganisations* output, NSError* error)) handler {
    // verify the required parameter 'organization' is set
    if (organization == nil) {
        NSParameterAssert(organization);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"organization"] };
            NSError* error = [NSError errorWithDomain:kSWGBlueOceanApiErrorDomain code:kSWGBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'scm' is set
    if (scm == nil) {
        NSParameterAssert(scm);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"scm"] };
            NSError* error = [NSError errorWithDomain:kSWGBlueOceanApiErrorDomain code:kSWGBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'scmOrganisation' is set
    if (scmOrganisation == nil) {
        NSParameterAssert(scmOrganisation);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"scmOrganisation"] };
            NSError* error = [NSError errorWithDomain:kSWGBlueOceanApiErrorDomain code:kSWGBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (organization != nil) {
        pathParams[@"organization"] = organization;
    }
    if (scm != nil) {
        pathParams[@"scm"] = scm;
    }
    if (scmOrganisation != nil) {
        pathParams[@"scmOrganisation"] = scmOrganisation;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (credentialId != nil) {
        queryParams[@"credentialId"] = credentialId;
    }
    if (pageSize != nil) {
        queryParams[@"pageSize"] = pageSize;
    }
    if (pageNumber != nil) {
        queryParams[@"pageNumber"] = pageNumber;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"jenkins_auth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SWGScmOrganisations*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGScmOrganisations*)data, error);
                                }
                            }];
}

///
/// 
/// Retrieve SCM organization repository details for an organization
///  @param organization Name of the organization 
///
///  @param scm Name of SCM 
///
///  @param scmOrganisation Name of the SCM organization 
///
///  @param repository Name of the SCM repository 
///
///  @param credentialId Credential ID (optional)
///
///  @returns SWGScmOrganisations*
///
-(NSURLSessionTask*) getSCMOrganisationRepositoryWithOrganization: (NSString*) organization
    scm: (NSString*) scm
    scmOrganisation: (NSString*) scmOrganisation
    repository: (NSString*) repository
    credentialId: (NSString*) credentialId
    completionHandler: (void (^)(SWGScmOrganisations* output, NSError* error)) handler {
    // verify the required parameter 'organization' is set
    if (organization == nil) {
        NSParameterAssert(organization);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"organization"] };
            NSError* error = [NSError errorWithDomain:kSWGBlueOceanApiErrorDomain code:kSWGBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'scm' is set
    if (scm == nil) {
        NSParameterAssert(scm);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"scm"] };
            NSError* error = [NSError errorWithDomain:kSWGBlueOceanApiErrorDomain code:kSWGBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'scmOrganisation' is set
    if (scmOrganisation == nil) {
        NSParameterAssert(scmOrganisation);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"scmOrganisation"] };
            NSError* error = [NSError errorWithDomain:kSWGBlueOceanApiErrorDomain code:kSWGBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'repository' is set
    if (repository == nil) {
        NSParameterAssert(repository);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"repository"] };
            NSError* error = [NSError errorWithDomain:kSWGBlueOceanApiErrorDomain code:kSWGBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (organization != nil) {
        pathParams[@"organization"] = organization;
    }
    if (scm != nil) {
        pathParams[@"scm"] = scm;
    }
    if (scmOrganisation != nil) {
        pathParams[@"scmOrganisation"] = scmOrganisation;
    }
    if (repository != nil) {
        pathParams[@"repository"] = repository;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (credentialId != nil) {
        queryParams[@"credentialId"] = credentialId;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"jenkins_auth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SWGScmOrganisations*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGScmOrganisations*)data, error);
                                }
                            }];
}

///
/// 
/// Retrieve SCM organizations details for an organization
///  @param organization Name of the organization 
///
///  @param scm Name of SCM 
///
///  @param credentialId Credential ID (optional)
///
///  @returns SWGScmOrganisations*
///
-(NSURLSessionTask*) getSCMOrganisationsWithOrganization: (NSString*) organization
    scm: (NSString*) scm
    credentialId: (NSString*) credentialId
    completionHandler: (void (^)(SWGScmOrganisations* output, NSError* error)) handler {
    // verify the required parameter 'organization' is set
    if (organization == nil) {
        NSParameterAssert(organization);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"organization"] };
            NSError* error = [NSError errorWithDomain:kSWGBlueOceanApiErrorDomain code:kSWGBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'scm' is set
    if (scm == nil) {
        NSParameterAssert(scm);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"scm"] };
            NSError* error = [NSError errorWithDomain:kSWGBlueOceanApiErrorDomain code:kSWGBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/blue/rest/organizations/{organization}/scm/{scm}/organizations"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (organization != nil) {
        pathParams[@"organization"] = organization;
    }
    if (scm != nil) {
        pathParams[@"scm"] = scm;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (credentialId != nil) {
        queryParams[@"credentialId"] = credentialId;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"jenkins_auth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SWGScmOrganisations*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGScmOrganisations*)data, error);
                                }
                            }];
}

///
/// 
/// Retrieve user details for an organization
///  @param organization Name of the organization 
///
///  @param user Name of the user 
///
///  @returns SWGUser*
///
-(NSURLSessionTask*) getUserWithOrganization: (NSString*) organization
    user: (NSString*) user
    completionHandler: (void (^)(SWGUser* output, NSError* error)) handler {
    // verify the required parameter 'organization' is set
    if (organization == nil) {
        NSParameterAssert(organization);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"organization"] };
            NSError* error = [NSError errorWithDomain:kSWGBlueOceanApiErrorDomain code:kSWGBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'user' is set
    if (user == nil) {
        NSParameterAssert(user);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"user"] };
            NSError* error = [NSError errorWithDomain:kSWGBlueOceanApiErrorDomain code:kSWGBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/blue/rest/organizations/{organization}/users/{user}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (organization != nil) {
        pathParams[@"organization"] = organization;
    }
    if (user != nil) {
        pathParams[@"user"] = user;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"jenkins_auth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SWGUser*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGUser*)data, error);
                                }
                            }];
}

///
/// 
/// Retrieve user favorites details for an organization
///  @param user Name of the user 
///
///  @returns SWGUserFavorites*
///
-(NSURLSessionTask*) getUserFavoritesWithUser: (NSString*) user
    completionHandler: (void (^)(SWGUserFavorites* output, NSError* error)) handler {
    // verify the required parameter 'user' is set
    if (user == nil) {
        NSParameterAssert(user);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"user"] };
            NSError* error = [NSError errorWithDomain:kSWGBlueOceanApiErrorDomain code:kSWGBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/blue/rest/users/{user}/favorites"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (user != nil) {
        pathParams[@"user"] = user;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"jenkins_auth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SWGUserFavorites*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGUserFavorites*)data, error);
                                }
                            }];
}

///
/// 
/// Retrieve users details for an organization
///  @param organization Name of the organization 
///
///  @returns SWGUser*
///
-(NSURLSessionTask*) getUsersWithOrganization: (NSString*) organization
    completionHandler: (void (^)(SWGUser* output, NSError* error)) handler {
    // verify the required parameter 'organization' is set
    if (organization == nil) {
        NSParameterAssert(organization);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"organization"] };
            NSError* error = [NSError errorWithDomain:kSWGBlueOceanApiErrorDomain code:kSWGBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/blue/rest/organizations/{organization}/users/"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (organization != nil) {
        pathParams[@"organization"] = organization;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"jenkins_auth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SWGUser*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGUser*)data, error);
                                }
                            }];
}

///
/// 
/// Replay an organization pipeline run
///  @param organization Name of the organization 
///
///  @param pipeline Name of the pipeline 
///
///  @param run Name of the run 
///
///  @returns SWGQueueItemImpl*
///
-(NSURLSessionTask*) postPipelineRunWithOrganization: (NSString*) organization
    pipeline: (NSString*) pipeline
    run: (NSString*) run
    completionHandler: (void (^)(SWGQueueItemImpl* output, NSError* error)) handler {
    // verify the required parameter 'organization' is set
    if (organization == nil) {
        NSParameterAssert(organization);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"organization"] };
            NSError* error = [NSError errorWithDomain:kSWGBlueOceanApiErrorDomain code:kSWGBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'pipeline' is set
    if (pipeline == nil) {
        NSParameterAssert(pipeline);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"pipeline"] };
            NSError* error = [NSError errorWithDomain:kSWGBlueOceanApiErrorDomain code:kSWGBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'run' is set
    if (run == nil) {
        NSParameterAssert(run);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"run"] };
            NSError* error = [NSError errorWithDomain:kSWGBlueOceanApiErrorDomain code:kSWGBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (organization != nil) {
        pathParams[@"organization"] = organization;
    }
    if (pipeline != nil) {
        pathParams[@"pipeline"] = pipeline;
    }
    if (run != nil) {
        pathParams[@"run"] = run;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"jenkins_auth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SWGQueueItemImpl*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGQueueItemImpl*)data, error);
                                }
                            }];
}

///
/// 
/// Start a build for an organization pipeline
///  @param organization Name of the organization 
///
///  @param pipeline Name of the pipeline 
///
///  @returns SWGQueueItemImpl*
///
-(NSURLSessionTask*) postPipelineRunsWithOrganization: (NSString*) organization
    pipeline: (NSString*) pipeline
    completionHandler: (void (^)(SWGQueueItemImpl* output, NSError* error)) handler {
    // verify the required parameter 'organization' is set
    if (organization == nil) {
        NSParameterAssert(organization);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"organization"] };
            NSError* error = [NSError errorWithDomain:kSWGBlueOceanApiErrorDomain code:kSWGBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'pipeline' is set
    if (pipeline == nil) {
        NSParameterAssert(pipeline);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"pipeline"] };
            NSError* error = [NSError errorWithDomain:kSWGBlueOceanApiErrorDomain code:kSWGBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (organization != nil) {
        pathParams[@"organization"] = organization;
    }
    if (pipeline != nil) {
        pathParams[@"pipeline"] = pipeline;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"jenkins_auth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SWGQueueItemImpl*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGQueueItemImpl*)data, error);
                                }
                            }];
}

///
/// 
/// Favorite/unfavorite a pipeline
///  @param organization Name of the organization 
///
///  @param pipeline Name of the pipeline 
///
///  @param body Set JSON string body to {\"favorite\": true} to favorite, set value to false to unfavorite 
///
///  @returns SWGFavoriteImpl*
///
-(NSURLSessionTask*) putPipelineFavoriteWithOrganization: (NSString*) organization
    pipeline: (NSString*) pipeline
    body: (SWGBody*) body
    completionHandler: (void (^)(SWGFavoriteImpl* output, NSError* error)) handler {
    // verify the required parameter 'organization' is set
    if (organization == nil) {
        NSParameterAssert(organization);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"organization"] };
            NSError* error = [NSError errorWithDomain:kSWGBlueOceanApiErrorDomain code:kSWGBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'pipeline' is set
    if (pipeline == nil) {
        NSParameterAssert(pipeline);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"pipeline"] };
            NSError* error = [NSError errorWithDomain:kSWGBlueOceanApiErrorDomain code:kSWGBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kSWGBlueOceanApiErrorDomain code:kSWGBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/blue/rest/organizations/{organization}/pipelines/{pipeline}/favorite"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (organization != nil) {
        pathParams[@"organization"] = organization;
    }
    if (pipeline != nil) {
        pathParams[@"pipeline"] = pipeline;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"jenkins_auth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = body;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"PUT"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SWGFavoriteImpl*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGFavoriteImpl*)data, error);
                                }
                            }];
}

///
/// 
/// Stop a build of an organization pipeline
///  @param organization Name of the organization 
///
///  @param pipeline Name of the pipeline 
///
///  @param run Name of the run 
///
///  @param blocking Set to true to make blocking stop, default: false (optional)
///
///  @param timeOutInSecs Timeout in seconds, default: 10 seconds (optional)
///
///  @returns SWGPipelineRun*
///
-(NSURLSessionTask*) putPipelineRunWithOrganization: (NSString*) organization
    pipeline: (NSString*) pipeline
    run: (NSString*) run
    blocking: (NSString*) blocking
    timeOutInSecs: (NSNumber*) timeOutInSecs
    completionHandler: (void (^)(SWGPipelineRun* output, NSError* error)) handler {
    // verify the required parameter 'organization' is set
    if (organization == nil) {
        NSParameterAssert(organization);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"organization"] };
            NSError* error = [NSError errorWithDomain:kSWGBlueOceanApiErrorDomain code:kSWGBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'pipeline' is set
    if (pipeline == nil) {
        NSParameterAssert(pipeline);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"pipeline"] };
            NSError* error = [NSError errorWithDomain:kSWGBlueOceanApiErrorDomain code:kSWGBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'run' is set
    if (run == nil) {
        NSParameterAssert(run);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"run"] };
            NSError* error = [NSError errorWithDomain:kSWGBlueOceanApiErrorDomain code:kSWGBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (organization != nil) {
        pathParams[@"organization"] = organization;
    }
    if (pipeline != nil) {
        pathParams[@"pipeline"] = pipeline;
    }
    if (run != nil) {
        pathParams[@"run"] = run;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (blocking != nil) {
        queryParams[@"blocking"] = blocking;
    }
    if (timeOutInSecs != nil) {
        queryParams[@"timeOutInSecs"] = timeOutInSecs;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"jenkins_auth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"PUT"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SWGPipelineRun*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGPipelineRun*)data, error);
                                }
                            }];
}

///
/// 
/// Search for any resource details
///  @param q Query string 
///
///  @returns NSString*
///
-(NSURLSessionTask*) searchWithQ: (NSString*) q
    completionHandler: (void (^)(NSString* output, NSError* error)) handler {
    // verify the required parameter 'q' is set
    if (q == nil) {
        NSParameterAssert(q);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"q"] };
            NSError* error = [NSError errorWithDomain:kSWGBlueOceanApiErrorDomain code:kSWGBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/blue/rest/search/"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (q != nil) {
        queryParams[@"q"] = q;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"jenkins_auth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSString*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSString*)data, error);
                                }
                            }];
}

///
/// 
/// Get classes details
///  @param q Query string containing an array of class names 
///
///  @returns NSString*
///
-(NSURLSessionTask*) searchClassesWithQ: (NSString*) q
    completionHandler: (void (^)(NSString* output, NSError* error)) handler {
    // verify the required parameter 'q' is set
    if (q == nil) {
        NSParameterAssert(q);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"q"] };
            NSError* error = [NSError errorWithDomain:kSWGBlueOceanApiErrorDomain code:kSWGBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/blue/rest/classes/"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (q != nil) {
        queryParams[@"q"] = q;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"jenkins_auth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSString*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSString*)data, error);
                                }
                            }];
}



@end

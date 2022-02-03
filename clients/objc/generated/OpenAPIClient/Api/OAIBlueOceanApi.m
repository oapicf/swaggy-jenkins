#import "OAIBlueOceanApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIBranchImpl.h"
#import "OAIFavoriteImpl.h"
#import "OAIGithubOrganization.h"
#import "OAIGithubScm.h"
#import "OAIMultibranchPipeline.h"
#import "OAIOrganisation.h"
#import "OAIPipeline.h"
#import "OAIPipelineActivity.h"
#import "OAIPipelineFolderImpl.h"
#import "OAIPipelineImpl.h"
#import "OAIPipelineRun.h"
#import "OAIPipelineRunNode.h"
#import "OAIPipelineStepImpl.h"
#import "OAIQueueItemImpl.h"
#import "OAIUser.h"
#import "UNKNOWN_BASE_TYPE.h"


@interface OAIBlueOceanApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIBlueOceanApi

NSString* kOAIBlueOceanApiErrorDomain = @"OAIBlueOceanApiErrorDomain";
NSInteger kOAIBlueOceanApiMissingParamErrorCode = 234513;

@synthesize apiClient = _apiClient;

#pragma mark - Initialize methods

- (instancetype) init {
    return [self initWithApiClient:[OAIApiClient sharedClient]];
}


-(instancetype) initWithApiClient:(OAIApiClient *)apiClient {
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
            NSError* error = [NSError errorWithDomain:kOAIBlueOceanApiErrorDomain code:kOAIBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'pipeline' is set
    if (pipeline == nil) {
        NSParameterAssert(pipeline);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"pipeline"] };
            NSError* error = [NSError errorWithDomain:kOAIBlueOceanApiErrorDomain code:kOAIBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'queue' is set
    if (queue == nil) {
        NSParameterAssert(queue);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"queue"] };
            NSError* error = [NSError errorWithDomain:kOAIBlueOceanApiErrorDomain code:kOAIBlueOceanApiMissingParamErrorCode userInfo:userInfo];
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
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[]];
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
///  @returns OAIUser*
///
-(NSURLSessionTask*) getAuthenticatedUserWithOrganization: (NSString*) organization
    completionHandler: (void (^)(OAIUser* output, NSError* error)) handler {
    // verify the required parameter 'organization' is set
    if (organization == nil) {
        NSParameterAssert(organization);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"organization"] };
            NSError* error = [NSError errorWithDomain:kOAIBlueOceanApiErrorDomain code:kOAIBlueOceanApiMissingParamErrorCode userInfo:userInfo];
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
                              responseType: @"OAIUser*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIUser*)data, error);
                                }
                            }];
}

///
/// 
/// Get a list of class names supported by a given class
///  @param _class Name of the class 
///
///  @returns NSString*
///
-(NSURLSessionTask*) getClassesWithClass: (NSString*) _class
    completionHandler: (void (^)(NSString* output, NSError* error)) handler {
    // verify the required parameter '_class' is set
    if (_class == nil) {
        NSParameterAssert(_class);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_class"] };
            NSError* error = [NSError errorWithDomain:kOAIBlueOceanApiErrorDomain code:kOAIBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/blue/rest/classes/{class}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_class != nil) {
        pathParams[@"class"] = _class;
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
/// Retrieve JSON Web Key
///  @param key Key ID received as part of JWT header field kid 
///
///  @returns NSString*
///
-(NSURLSessionTask*) getJsonWebKeyWithKey: (NSNumber*) key
    completionHandler: (void (^)(NSString* output, NSError* error)) handler {
    // verify the required parameter 'key' is set
    if (key == nil) {
        NSParameterAssert(key);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"key"] };
            NSError* error = [NSError errorWithDomain:kOAIBlueOceanApiErrorDomain code:kOAIBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/jwt-auth/jwks/{key}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (key != nil) {
        pathParams[@"key"] = key;
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
    NSArray *authSettings = @[];

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
/// Retrieve JSON Web Token
///  @param expiryTimeInMins Token expiry time in minutes, default: 30 minutes (optional)
///
///  @param maxExpiryTimeInMins Maximum token expiry time in minutes, default: 480 minutes (optional)
///
///  @returns NSString*
///
-(NSURLSessionTask*) getJsonWebTokenWithExpiryTimeInMins: (NSNumber*) expiryTimeInMins
    maxExpiryTimeInMins: (NSNumber*) maxExpiryTimeInMins
    completionHandler: (void (^)(NSString* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/jwt-auth/token"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (expiryTimeInMins != nil) {
        queryParams[@"expiryTimeInMins"] = expiryTimeInMins;
    }
    if (maxExpiryTimeInMins != nil) {
        queryParams[@"maxExpiryTimeInMins"] = maxExpiryTimeInMins;
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
    NSArray *authSettings = @[];

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
///  @returns OAIOrganisation*
///
-(NSURLSessionTask*) getOrganisationWithOrganization: (NSString*) organization
    completionHandler: (void (^)(OAIOrganisation* output, NSError* error)) handler {
    // verify the required parameter 'organization' is set
    if (organization == nil) {
        NSParameterAssert(organization);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"organization"] };
            NSError* error = [NSError errorWithDomain:kOAIBlueOceanApiErrorDomain code:kOAIBlueOceanApiMissingParamErrorCode userInfo:userInfo];
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
                              responseType: @"OAIOrganisation*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIOrganisation*)data, error);
                                }
                            }];
}

///
/// 
/// Retrieve all organizations details
///  @returns NSArray<OAIOrganisation>*
///
-(NSURLSessionTask*) getOrganisationsWithCompletionHandler: 
    (void (^)(NSArray<OAIOrganisation>* output, NSError* error)) handler {
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
                              responseType: @"NSArray<OAIOrganisation>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAIOrganisation>*)data, error);
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
///  @returns OAIPipeline*
///
-(NSURLSessionTask*) getPipelineWithOrganization: (NSString*) organization
    pipeline: (NSString*) pipeline
    completionHandler: (void (^)(OAIPipeline* output, NSError* error)) handler {
    // verify the required parameter 'organization' is set
    if (organization == nil) {
        NSParameterAssert(organization);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"organization"] };
            NSError* error = [NSError errorWithDomain:kOAIBlueOceanApiErrorDomain code:kOAIBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'pipeline' is set
    if (pipeline == nil) {
        NSParameterAssert(pipeline);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"pipeline"] };
            NSError* error = [NSError errorWithDomain:kOAIBlueOceanApiErrorDomain code:kOAIBlueOceanApiMissingParamErrorCode userInfo:userInfo];
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
                              responseType: @"OAIPipeline*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIPipeline*)data, error);
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
///  @returns NSArray<OAIPipelineActivity>*
///
-(NSURLSessionTask*) getPipelineActivitiesWithOrganization: (NSString*) organization
    pipeline: (NSString*) pipeline
    completionHandler: (void (^)(NSArray<OAIPipelineActivity>* output, NSError* error)) handler {
    // verify the required parameter 'organization' is set
    if (organization == nil) {
        NSParameterAssert(organization);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"organization"] };
            NSError* error = [NSError errorWithDomain:kOAIBlueOceanApiErrorDomain code:kOAIBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'pipeline' is set
    if (pipeline == nil) {
        NSParameterAssert(pipeline);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"pipeline"] };
            NSError* error = [NSError errorWithDomain:kOAIBlueOceanApiErrorDomain code:kOAIBlueOceanApiMissingParamErrorCode userInfo:userInfo];
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
                              responseType: @"NSArray<OAIPipelineActivity>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAIPipelineActivity>*)data, error);
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
///  @returns OAIBranchImpl*
///
-(NSURLSessionTask*) getPipelineBranchWithOrganization: (NSString*) organization
    pipeline: (NSString*) pipeline
    branch: (NSString*) branch
    completionHandler: (void (^)(OAIBranchImpl* output, NSError* error)) handler {
    // verify the required parameter 'organization' is set
    if (organization == nil) {
        NSParameterAssert(organization);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"organization"] };
            NSError* error = [NSError errorWithDomain:kOAIBlueOceanApiErrorDomain code:kOAIBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'pipeline' is set
    if (pipeline == nil) {
        NSParameterAssert(pipeline);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"pipeline"] };
            NSError* error = [NSError errorWithDomain:kOAIBlueOceanApiErrorDomain code:kOAIBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'branch' is set
    if (branch == nil) {
        NSParameterAssert(branch);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"branch"] };
            NSError* error = [NSError errorWithDomain:kOAIBlueOceanApiErrorDomain code:kOAIBlueOceanApiMissingParamErrorCode userInfo:userInfo];
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
                              responseType: @"OAIBranchImpl*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIBranchImpl*)data, error);
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
///  @returns OAIPipelineRun*
///
-(NSURLSessionTask*) getPipelineBranchRunWithOrganization: (NSString*) organization
    pipeline: (NSString*) pipeline
    branch: (NSString*) branch
    run: (NSString*) run
    completionHandler: (void (^)(OAIPipelineRun* output, NSError* error)) handler {
    // verify the required parameter 'organization' is set
    if (organization == nil) {
        NSParameterAssert(organization);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"organization"] };
            NSError* error = [NSError errorWithDomain:kOAIBlueOceanApiErrorDomain code:kOAIBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'pipeline' is set
    if (pipeline == nil) {
        NSParameterAssert(pipeline);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"pipeline"] };
            NSError* error = [NSError errorWithDomain:kOAIBlueOceanApiErrorDomain code:kOAIBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'branch' is set
    if (branch == nil) {
        NSParameterAssert(branch);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"branch"] };
            NSError* error = [NSError errorWithDomain:kOAIBlueOceanApiErrorDomain code:kOAIBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'run' is set
    if (run == nil) {
        NSParameterAssert(run);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"run"] };
            NSError* error = [NSError errorWithDomain:kOAIBlueOceanApiErrorDomain code:kOAIBlueOceanApiMissingParamErrorCode userInfo:userInfo];
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
                              responseType: @"OAIPipelineRun*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIPipelineRun*)data, error);
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
///  @returns OAIMultibranchPipeline*
///
-(NSURLSessionTask*) getPipelineBranchesWithOrganization: (NSString*) organization
    pipeline: (NSString*) pipeline
    completionHandler: (void (^)(OAIMultibranchPipeline* output, NSError* error)) handler {
    // verify the required parameter 'organization' is set
    if (organization == nil) {
        NSParameterAssert(organization);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"organization"] };
            NSError* error = [NSError errorWithDomain:kOAIBlueOceanApiErrorDomain code:kOAIBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'pipeline' is set
    if (pipeline == nil) {
        NSParameterAssert(pipeline);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"pipeline"] };
            NSError* error = [NSError errorWithDomain:kOAIBlueOceanApiErrorDomain code:kOAIBlueOceanApiMissingParamErrorCode userInfo:userInfo];
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
                              responseType: @"OAIMultibranchPipeline*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIMultibranchPipeline*)data, error);
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
///  @returns OAIPipelineFolderImpl*
///
-(NSURLSessionTask*) getPipelineFolderWithOrganization: (NSString*) organization
    folder: (NSString*) folder
    completionHandler: (void (^)(OAIPipelineFolderImpl* output, NSError* error)) handler {
    // verify the required parameter 'organization' is set
    if (organization == nil) {
        NSParameterAssert(organization);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"organization"] };
            NSError* error = [NSError errorWithDomain:kOAIBlueOceanApiErrorDomain code:kOAIBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'folder' is set
    if (folder == nil) {
        NSParameterAssert(folder);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"folder"] };
            NSError* error = [NSError errorWithDomain:kOAIBlueOceanApiErrorDomain code:kOAIBlueOceanApiMissingParamErrorCode userInfo:userInfo];
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
                              responseType: @"OAIPipelineFolderImpl*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIPipelineFolderImpl*)data, error);
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
///  @returns OAIPipelineImpl*
///
-(NSURLSessionTask*) getPipelineFolderPipelineWithOrganization: (NSString*) organization
    pipeline: (NSString*) pipeline
    folder: (NSString*) folder
    completionHandler: (void (^)(OAIPipelineImpl* output, NSError* error)) handler {
    // verify the required parameter 'organization' is set
    if (organization == nil) {
        NSParameterAssert(organization);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"organization"] };
            NSError* error = [NSError errorWithDomain:kOAIBlueOceanApiErrorDomain code:kOAIBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'pipeline' is set
    if (pipeline == nil) {
        NSParameterAssert(pipeline);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"pipeline"] };
            NSError* error = [NSError errorWithDomain:kOAIBlueOceanApiErrorDomain code:kOAIBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'folder' is set
    if (folder == nil) {
        NSParameterAssert(folder);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"folder"] };
            NSError* error = [NSError errorWithDomain:kOAIBlueOceanApiErrorDomain code:kOAIBlueOceanApiMissingParamErrorCode userInfo:userInfo];
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
                              responseType: @"OAIPipelineImpl*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIPipelineImpl*)data, error);
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
///  @returns NSArray<OAIQueueItemImpl>*
///
-(NSURLSessionTask*) getPipelineQueueWithOrganization: (NSString*) organization
    pipeline: (NSString*) pipeline
    completionHandler: (void (^)(NSArray<OAIQueueItemImpl>* output, NSError* error)) handler {
    // verify the required parameter 'organization' is set
    if (organization == nil) {
        NSParameterAssert(organization);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"organization"] };
            NSError* error = [NSError errorWithDomain:kOAIBlueOceanApiErrorDomain code:kOAIBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'pipeline' is set
    if (pipeline == nil) {
        NSParameterAssert(pipeline);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"pipeline"] };
            NSError* error = [NSError errorWithDomain:kOAIBlueOceanApiErrorDomain code:kOAIBlueOceanApiMissingParamErrorCode userInfo:userInfo];
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
                              responseType: @"NSArray<OAIQueueItemImpl>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAIQueueItemImpl>*)data, error);
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
///  @returns OAIPipelineRun*
///
-(NSURLSessionTask*) getPipelineRunWithOrganization: (NSString*) organization
    pipeline: (NSString*) pipeline
    run: (NSString*) run
    completionHandler: (void (^)(OAIPipelineRun* output, NSError* error)) handler {
    // verify the required parameter 'organization' is set
    if (organization == nil) {
        NSParameterAssert(organization);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"organization"] };
            NSError* error = [NSError errorWithDomain:kOAIBlueOceanApiErrorDomain code:kOAIBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'pipeline' is set
    if (pipeline == nil) {
        NSParameterAssert(pipeline);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"pipeline"] };
            NSError* error = [NSError errorWithDomain:kOAIBlueOceanApiErrorDomain code:kOAIBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'run' is set
    if (run == nil) {
        NSParameterAssert(run);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"run"] };
            NSError* error = [NSError errorWithDomain:kOAIBlueOceanApiErrorDomain code:kOAIBlueOceanApiMissingParamErrorCode userInfo:userInfo];
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
                              responseType: @"OAIPipelineRun*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIPipelineRun*)data, error);
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
            NSError* error = [NSError errorWithDomain:kOAIBlueOceanApiErrorDomain code:kOAIBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'pipeline' is set
    if (pipeline == nil) {
        NSParameterAssert(pipeline);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"pipeline"] };
            NSError* error = [NSError errorWithDomain:kOAIBlueOceanApiErrorDomain code:kOAIBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'run' is set
    if (run == nil) {
        NSParameterAssert(run);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"run"] };
            NSError* error = [NSError errorWithDomain:kOAIBlueOceanApiErrorDomain code:kOAIBlueOceanApiMissingParamErrorCode userInfo:userInfo];
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
///  @returns OAIPipelineRunNode*
///
-(NSURLSessionTask*) getPipelineRunNodeWithOrganization: (NSString*) organization
    pipeline: (NSString*) pipeline
    run: (NSString*) run
    node: (NSString*) node
    completionHandler: (void (^)(OAIPipelineRunNode* output, NSError* error)) handler {
    // verify the required parameter 'organization' is set
    if (organization == nil) {
        NSParameterAssert(organization);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"organization"] };
            NSError* error = [NSError errorWithDomain:kOAIBlueOceanApiErrorDomain code:kOAIBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'pipeline' is set
    if (pipeline == nil) {
        NSParameterAssert(pipeline);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"pipeline"] };
            NSError* error = [NSError errorWithDomain:kOAIBlueOceanApiErrorDomain code:kOAIBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'run' is set
    if (run == nil) {
        NSParameterAssert(run);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"run"] };
            NSError* error = [NSError errorWithDomain:kOAIBlueOceanApiErrorDomain code:kOAIBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'node' is set
    if (node == nil) {
        NSParameterAssert(node);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"node"] };
            NSError* error = [NSError errorWithDomain:kOAIBlueOceanApiErrorDomain code:kOAIBlueOceanApiMissingParamErrorCode userInfo:userInfo];
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
                              responseType: @"OAIPipelineRunNode*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIPipelineRunNode*)data, error);
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
///  @returns OAIPipelineStepImpl*
///
-(NSURLSessionTask*) getPipelineRunNodeStepWithOrganization: (NSString*) organization
    pipeline: (NSString*) pipeline
    run: (NSString*) run
    node: (NSString*) node
    step: (NSString*) step
    completionHandler: (void (^)(OAIPipelineStepImpl* output, NSError* error)) handler {
    // verify the required parameter 'organization' is set
    if (organization == nil) {
        NSParameterAssert(organization);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"organization"] };
            NSError* error = [NSError errorWithDomain:kOAIBlueOceanApiErrorDomain code:kOAIBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'pipeline' is set
    if (pipeline == nil) {
        NSParameterAssert(pipeline);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"pipeline"] };
            NSError* error = [NSError errorWithDomain:kOAIBlueOceanApiErrorDomain code:kOAIBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'run' is set
    if (run == nil) {
        NSParameterAssert(run);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"run"] };
            NSError* error = [NSError errorWithDomain:kOAIBlueOceanApiErrorDomain code:kOAIBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'node' is set
    if (node == nil) {
        NSParameterAssert(node);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"node"] };
            NSError* error = [NSError errorWithDomain:kOAIBlueOceanApiErrorDomain code:kOAIBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'step' is set
    if (step == nil) {
        NSParameterAssert(step);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"step"] };
            NSError* error = [NSError errorWithDomain:kOAIBlueOceanApiErrorDomain code:kOAIBlueOceanApiMissingParamErrorCode userInfo:userInfo];
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
                              responseType: @"OAIPipelineStepImpl*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIPipelineStepImpl*)data, error);
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
            NSError* error = [NSError errorWithDomain:kOAIBlueOceanApiErrorDomain code:kOAIBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'pipeline' is set
    if (pipeline == nil) {
        NSParameterAssert(pipeline);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"pipeline"] };
            NSError* error = [NSError errorWithDomain:kOAIBlueOceanApiErrorDomain code:kOAIBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'run' is set
    if (run == nil) {
        NSParameterAssert(run);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"run"] };
            NSError* error = [NSError errorWithDomain:kOAIBlueOceanApiErrorDomain code:kOAIBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'node' is set
    if (node == nil) {
        NSParameterAssert(node);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"node"] };
            NSError* error = [NSError errorWithDomain:kOAIBlueOceanApiErrorDomain code:kOAIBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'step' is set
    if (step == nil) {
        NSParameterAssert(step);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"step"] };
            NSError* error = [NSError errorWithDomain:kOAIBlueOceanApiErrorDomain code:kOAIBlueOceanApiMissingParamErrorCode userInfo:userInfo];
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
///  @returns NSArray<OAIPipelineStepImpl>*
///
-(NSURLSessionTask*) getPipelineRunNodeStepsWithOrganization: (NSString*) organization
    pipeline: (NSString*) pipeline
    run: (NSString*) run
    node: (NSString*) node
    completionHandler: (void (^)(NSArray<OAIPipelineStepImpl>* output, NSError* error)) handler {
    // verify the required parameter 'organization' is set
    if (organization == nil) {
        NSParameterAssert(organization);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"organization"] };
            NSError* error = [NSError errorWithDomain:kOAIBlueOceanApiErrorDomain code:kOAIBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'pipeline' is set
    if (pipeline == nil) {
        NSParameterAssert(pipeline);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"pipeline"] };
            NSError* error = [NSError errorWithDomain:kOAIBlueOceanApiErrorDomain code:kOAIBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'run' is set
    if (run == nil) {
        NSParameterAssert(run);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"run"] };
            NSError* error = [NSError errorWithDomain:kOAIBlueOceanApiErrorDomain code:kOAIBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'node' is set
    if (node == nil) {
        NSParameterAssert(node);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"node"] };
            NSError* error = [NSError errorWithDomain:kOAIBlueOceanApiErrorDomain code:kOAIBlueOceanApiMissingParamErrorCode userInfo:userInfo];
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
                              responseType: @"NSArray<OAIPipelineStepImpl>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAIPipelineStepImpl>*)data, error);
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
///  @returns NSArray<OAIPipelineRunNode>*
///
-(NSURLSessionTask*) getPipelineRunNodesWithOrganization: (NSString*) organization
    pipeline: (NSString*) pipeline
    run: (NSString*) run
    completionHandler: (void (^)(NSArray<OAIPipelineRunNode>* output, NSError* error)) handler {
    // verify the required parameter 'organization' is set
    if (organization == nil) {
        NSParameterAssert(organization);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"organization"] };
            NSError* error = [NSError errorWithDomain:kOAIBlueOceanApiErrorDomain code:kOAIBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'pipeline' is set
    if (pipeline == nil) {
        NSParameterAssert(pipeline);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"pipeline"] };
            NSError* error = [NSError errorWithDomain:kOAIBlueOceanApiErrorDomain code:kOAIBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'run' is set
    if (run == nil) {
        NSParameterAssert(run);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"run"] };
            NSError* error = [NSError errorWithDomain:kOAIBlueOceanApiErrorDomain code:kOAIBlueOceanApiMissingParamErrorCode userInfo:userInfo];
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
                              responseType: @"NSArray<OAIPipelineRunNode>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAIPipelineRunNode>*)data, error);
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
///  @returns NSArray<OAIPipelineRun>*
///
-(NSURLSessionTask*) getPipelineRunsWithOrganization: (NSString*) organization
    pipeline: (NSString*) pipeline
    completionHandler: (void (^)(NSArray<OAIPipelineRun>* output, NSError* error)) handler {
    // verify the required parameter 'organization' is set
    if (organization == nil) {
        NSParameterAssert(organization);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"organization"] };
            NSError* error = [NSError errorWithDomain:kOAIBlueOceanApiErrorDomain code:kOAIBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'pipeline' is set
    if (pipeline == nil) {
        NSParameterAssert(pipeline);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"pipeline"] };
            NSError* error = [NSError errorWithDomain:kOAIBlueOceanApiErrorDomain code:kOAIBlueOceanApiMissingParamErrorCode userInfo:userInfo];
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
                              responseType: @"NSArray<OAIPipelineRun>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAIPipelineRun>*)data, error);
                                }
                            }];
}

///
/// 
/// Retrieve all pipelines details for an organization
///  @param organization Name of the organization 
///
///  @returns NSArray<OAIPipeline>*
///
-(NSURLSessionTask*) getPipelinesWithOrganization: (NSString*) organization
    completionHandler: (void (^)(NSArray<OAIPipeline>* output, NSError* error)) handler {
    // verify the required parameter 'organization' is set
    if (organization == nil) {
        NSParameterAssert(organization);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"organization"] };
            NSError* error = [NSError errorWithDomain:kOAIBlueOceanApiErrorDomain code:kOAIBlueOceanApiMissingParamErrorCode userInfo:userInfo];
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
                              responseType: @"NSArray<OAIPipeline>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAIPipeline>*)data, error);
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
///  @returns OAIGithubScm*
///
-(NSURLSessionTask*) getSCMWithOrganization: (NSString*) organization
    scm: (NSString*) scm
    completionHandler: (void (^)(OAIGithubScm* output, NSError* error)) handler {
    // verify the required parameter 'organization' is set
    if (organization == nil) {
        NSParameterAssert(organization);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"organization"] };
            NSError* error = [NSError errorWithDomain:kOAIBlueOceanApiErrorDomain code:kOAIBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'scm' is set
    if (scm == nil) {
        NSParameterAssert(scm);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"scm"] };
            NSError* error = [NSError errorWithDomain:kOAIBlueOceanApiErrorDomain code:kOAIBlueOceanApiMissingParamErrorCode userInfo:userInfo];
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
                              responseType: @"OAIGithubScm*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIGithubScm*)data, error);
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
///  @returns NSArray<OAIGithubOrganization>*
///
-(NSURLSessionTask*) getSCMOrganisationRepositoriesWithOrganization: (NSString*) organization
    scm: (NSString*) scm
    scmOrganisation: (NSString*) scmOrganisation
    credentialId: (NSString*) credentialId
    pageSize: (NSNumber*) pageSize
    pageNumber: (NSNumber*) pageNumber
    completionHandler: (void (^)(NSArray<OAIGithubOrganization>* output, NSError* error)) handler {
    // verify the required parameter 'organization' is set
    if (organization == nil) {
        NSParameterAssert(organization);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"organization"] };
            NSError* error = [NSError errorWithDomain:kOAIBlueOceanApiErrorDomain code:kOAIBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'scm' is set
    if (scm == nil) {
        NSParameterAssert(scm);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"scm"] };
            NSError* error = [NSError errorWithDomain:kOAIBlueOceanApiErrorDomain code:kOAIBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'scmOrganisation' is set
    if (scmOrganisation == nil) {
        NSParameterAssert(scmOrganisation);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"scmOrganisation"] };
            NSError* error = [NSError errorWithDomain:kOAIBlueOceanApiErrorDomain code:kOAIBlueOceanApiMissingParamErrorCode userInfo:userInfo];
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
                              responseType: @"NSArray<OAIGithubOrganization>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAIGithubOrganization>*)data, error);
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
///  @returns NSArray<OAIGithubOrganization>*
///
-(NSURLSessionTask*) getSCMOrganisationRepositoryWithOrganization: (NSString*) organization
    scm: (NSString*) scm
    scmOrganisation: (NSString*) scmOrganisation
    repository: (NSString*) repository
    credentialId: (NSString*) credentialId
    completionHandler: (void (^)(NSArray<OAIGithubOrganization>* output, NSError* error)) handler {
    // verify the required parameter 'organization' is set
    if (organization == nil) {
        NSParameterAssert(organization);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"organization"] };
            NSError* error = [NSError errorWithDomain:kOAIBlueOceanApiErrorDomain code:kOAIBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'scm' is set
    if (scm == nil) {
        NSParameterAssert(scm);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"scm"] };
            NSError* error = [NSError errorWithDomain:kOAIBlueOceanApiErrorDomain code:kOAIBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'scmOrganisation' is set
    if (scmOrganisation == nil) {
        NSParameterAssert(scmOrganisation);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"scmOrganisation"] };
            NSError* error = [NSError errorWithDomain:kOAIBlueOceanApiErrorDomain code:kOAIBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'repository' is set
    if (repository == nil) {
        NSParameterAssert(repository);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"repository"] };
            NSError* error = [NSError errorWithDomain:kOAIBlueOceanApiErrorDomain code:kOAIBlueOceanApiMissingParamErrorCode userInfo:userInfo];
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
                              responseType: @"NSArray<OAIGithubOrganization>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAIGithubOrganization>*)data, error);
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
///  @returns NSArray<OAIGithubOrganization>*
///
-(NSURLSessionTask*) getSCMOrganisationsWithOrganization: (NSString*) organization
    scm: (NSString*) scm
    credentialId: (NSString*) credentialId
    completionHandler: (void (^)(NSArray<OAIGithubOrganization>* output, NSError* error)) handler {
    // verify the required parameter 'organization' is set
    if (organization == nil) {
        NSParameterAssert(organization);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"organization"] };
            NSError* error = [NSError errorWithDomain:kOAIBlueOceanApiErrorDomain code:kOAIBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'scm' is set
    if (scm == nil) {
        NSParameterAssert(scm);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"scm"] };
            NSError* error = [NSError errorWithDomain:kOAIBlueOceanApiErrorDomain code:kOAIBlueOceanApiMissingParamErrorCode userInfo:userInfo];
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
                              responseType: @"NSArray<OAIGithubOrganization>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAIGithubOrganization>*)data, error);
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
///  @returns OAIUser*
///
-(NSURLSessionTask*) getUserWithOrganization: (NSString*) organization
    user: (NSString*) user
    completionHandler: (void (^)(OAIUser* output, NSError* error)) handler {
    // verify the required parameter 'organization' is set
    if (organization == nil) {
        NSParameterAssert(organization);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"organization"] };
            NSError* error = [NSError errorWithDomain:kOAIBlueOceanApiErrorDomain code:kOAIBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'user' is set
    if (user == nil) {
        NSParameterAssert(user);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"user"] };
            NSError* error = [NSError errorWithDomain:kOAIBlueOceanApiErrorDomain code:kOAIBlueOceanApiMissingParamErrorCode userInfo:userInfo];
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
                              responseType: @"OAIUser*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIUser*)data, error);
                                }
                            }];
}

///
/// 
/// Retrieve user favorites details for an organization
///  @param user Name of the user 
///
///  @returns NSArray<OAIFavoriteImpl>*
///
-(NSURLSessionTask*) getUserFavoritesWithUser: (NSString*) user
    completionHandler: (void (^)(NSArray<OAIFavoriteImpl>* output, NSError* error)) handler {
    // verify the required parameter 'user' is set
    if (user == nil) {
        NSParameterAssert(user);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"user"] };
            NSError* error = [NSError errorWithDomain:kOAIBlueOceanApiErrorDomain code:kOAIBlueOceanApiMissingParamErrorCode userInfo:userInfo];
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
                              responseType: @"NSArray<OAIFavoriteImpl>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAIFavoriteImpl>*)data, error);
                                }
                            }];
}

///
/// 
/// Retrieve users details for an organization
///  @param organization Name of the organization 
///
///  @returns OAIUser*
///
-(NSURLSessionTask*) getUsersWithOrganization: (NSString*) organization
    completionHandler: (void (^)(OAIUser* output, NSError* error)) handler {
    // verify the required parameter 'organization' is set
    if (organization == nil) {
        NSParameterAssert(organization);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"organization"] };
            NSError* error = [NSError errorWithDomain:kOAIBlueOceanApiErrorDomain code:kOAIBlueOceanApiMissingParamErrorCode userInfo:userInfo];
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
                              responseType: @"OAIUser*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIUser*)data, error);
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
///  @returns OAIQueueItemImpl*
///
-(NSURLSessionTask*) postPipelineRunWithOrganization: (NSString*) organization
    pipeline: (NSString*) pipeline
    run: (NSString*) run
    completionHandler: (void (^)(OAIQueueItemImpl* output, NSError* error)) handler {
    // verify the required parameter 'organization' is set
    if (organization == nil) {
        NSParameterAssert(organization);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"organization"] };
            NSError* error = [NSError errorWithDomain:kOAIBlueOceanApiErrorDomain code:kOAIBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'pipeline' is set
    if (pipeline == nil) {
        NSParameterAssert(pipeline);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"pipeline"] };
            NSError* error = [NSError errorWithDomain:kOAIBlueOceanApiErrorDomain code:kOAIBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'run' is set
    if (run == nil) {
        NSParameterAssert(run);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"run"] };
            NSError* error = [NSError errorWithDomain:kOAIBlueOceanApiErrorDomain code:kOAIBlueOceanApiMissingParamErrorCode userInfo:userInfo];
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
                              responseType: @"OAIQueueItemImpl*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIQueueItemImpl*)data, error);
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
///  @returns OAIQueueItemImpl*
///
-(NSURLSessionTask*) postPipelineRunsWithOrganization: (NSString*) organization
    pipeline: (NSString*) pipeline
    completionHandler: (void (^)(OAIQueueItemImpl* output, NSError* error)) handler {
    // verify the required parameter 'organization' is set
    if (organization == nil) {
        NSParameterAssert(organization);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"organization"] };
            NSError* error = [NSError errorWithDomain:kOAIBlueOceanApiErrorDomain code:kOAIBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'pipeline' is set
    if (pipeline == nil) {
        NSParameterAssert(pipeline);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"pipeline"] };
            NSError* error = [NSError errorWithDomain:kOAIBlueOceanApiErrorDomain code:kOAIBlueOceanApiMissingParamErrorCode userInfo:userInfo];
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
                              responseType: @"OAIQueueItemImpl*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIQueueItemImpl*)data, error);
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
///  @param uNKNOWNBASETYPE Set JSON string body to {\"favorite\": true} to favorite, set value to false to unfavorite 
///
///  @returns OAIFavoriteImpl*
///
-(NSURLSessionTask*) putPipelineFavoriteWithOrganization: (NSString*) organization
    pipeline: (NSString*) pipeline
    uNKNOWNBASETYPE: (UNKNOWN_BASE_TYPE*) uNKNOWNBASETYPE
    completionHandler: (void (^)(OAIFavoriteImpl* output, NSError* error)) handler {
    // verify the required parameter 'organization' is set
    if (organization == nil) {
        NSParameterAssert(organization);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"organization"] };
            NSError* error = [NSError errorWithDomain:kOAIBlueOceanApiErrorDomain code:kOAIBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'pipeline' is set
    if (pipeline == nil) {
        NSParameterAssert(pipeline);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"pipeline"] };
            NSError* error = [NSError errorWithDomain:kOAIBlueOceanApiErrorDomain code:kOAIBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'uNKNOWNBASETYPE' is set
    if (uNKNOWNBASETYPE == nil) {
        NSParameterAssert(uNKNOWNBASETYPE);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"uNKNOWNBASETYPE"] };
            NSError* error = [NSError errorWithDomain:kOAIBlueOceanApiErrorDomain code:kOAIBlueOceanApiMissingParamErrorCode userInfo:userInfo];
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
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"jenkins_auth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = uNKNOWNBASETYPE;

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
                              responseType: @"OAIFavoriteImpl*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIFavoriteImpl*)data, error);
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
///  @returns OAIPipelineRun*
///
-(NSURLSessionTask*) putPipelineRunWithOrganization: (NSString*) organization
    pipeline: (NSString*) pipeline
    run: (NSString*) run
    blocking: (NSString*) blocking
    timeOutInSecs: (NSNumber*) timeOutInSecs
    completionHandler: (void (^)(OAIPipelineRun* output, NSError* error)) handler {
    // verify the required parameter 'organization' is set
    if (organization == nil) {
        NSParameterAssert(organization);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"organization"] };
            NSError* error = [NSError errorWithDomain:kOAIBlueOceanApiErrorDomain code:kOAIBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'pipeline' is set
    if (pipeline == nil) {
        NSParameterAssert(pipeline);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"pipeline"] };
            NSError* error = [NSError errorWithDomain:kOAIBlueOceanApiErrorDomain code:kOAIBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'run' is set
    if (run == nil) {
        NSParameterAssert(run);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"run"] };
            NSError* error = [NSError errorWithDomain:kOAIBlueOceanApiErrorDomain code:kOAIBlueOceanApiMissingParamErrorCode userInfo:userInfo];
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
                              responseType: @"OAIPipelineRun*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIPipelineRun*)data, error);
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
            NSError* error = [NSError errorWithDomain:kOAIBlueOceanApiErrorDomain code:kOAIBlueOceanApiMissingParamErrorCode userInfo:userInfo];
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
            NSError* error = [NSError errorWithDomain:kOAIBlueOceanApiErrorDomain code:kOAIBlueOceanApiMissingParamErrorCode userInfo:userInfo];
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

#import "SWGBlueOceanApi.h"
#import "SWGQueryParamCollection.h"
#import "SWGApiClient.h"
#import "SWGGetMultibranchPipeline.h"
#import "SWGGetOrganisations.h"
#import "SWGGetPipelines.h"
#import "SWGIojenkinsblueoceanrestimplpipelineBranchImpl.h"
#import "SWGIojenkinsblueoceanserviceembeddedrestPipelineFolderImpl.h"
#import "SWGIojenkinsblueoceanserviceembeddedrestPipelineImpl.h"
#import "SWGSwaggyjenkinsOrganisation.h"
#import "SWGSwaggyjenkinsPipeline.h"
#import "SWGSwaggyjenkinsUser.h"


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
/// Retrieve authenticated user details for an organisation
///  @param organisation Name of the organisation 
///
///  @returns SWGSwaggyjenkinsUser*
///
-(NSURLSessionTask*) getAuthenticatedUserWithOrganisation: (NSString*) organisation
    completionHandler: (void (^)(SWGSwaggyjenkinsUser* output, NSError* error)) handler {
    // verify the required parameter 'organisation' is set
    if (organisation == nil) {
        NSParameterAssert(organisation);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"organisation"] };
            NSError* error = [NSError errorWithDomain:kSWGBlueOceanApiErrorDomain code:kSWGBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/blue/rest/organizations/{organisation}/user/"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (organisation != nil) {
        pathParams[@"organisation"] = organisation;
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
                              responseType: @"SWGSwaggyjenkinsUser*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGSwaggyjenkinsUser*)data, error);
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
/// Retrieve organisation details
///  @param organisation Name of the organisation 
///
///  @returns SWGSwaggyjenkinsOrganisation*
///
-(NSURLSessionTask*) getOrganisationWithOrganisation: (NSString*) organisation
    completionHandler: (void (^)(SWGSwaggyjenkinsOrganisation* output, NSError* error)) handler {
    // verify the required parameter 'organisation' is set
    if (organisation == nil) {
        NSParameterAssert(organisation);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"organisation"] };
            NSError* error = [NSError errorWithDomain:kSWGBlueOceanApiErrorDomain code:kSWGBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/blue/rest/organizations/{organisation}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (organisation != nil) {
        pathParams[@"organisation"] = organisation;
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
                              responseType: @"SWGSwaggyjenkinsOrganisation*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGSwaggyjenkinsOrganisation*)data, error);
                                }
                            }];
}

///
/// 
/// Retrieve all organisations details
///  @returns SWGGetOrganisations*
///
-(NSURLSessionTask*) getOrganisationsWithCompletionHandler: 
    (void (^)(SWGGetOrganisations* output, NSError* error)) handler {
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
                              responseType: @"SWGGetOrganisations*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGGetOrganisations*)data, error);
                                }
                            }];
}

///
/// 
/// Retrieve branch details for an organisation pipeline
///  @param organisation Name of the organisation 
///
///  @param pipeline Name of the pipeline 
///
///  @param branch Name of the branch 
///
///  @returns SWGIojenkinsblueoceanrestimplpipelineBranchImpl*
///
-(NSURLSessionTask*) getPipelineBranchByOrgWithOrganisation: (NSString*) organisation
    pipeline: (NSString*) pipeline
    branch: (NSString*) branch
    completionHandler: (void (^)(SWGIojenkinsblueoceanrestimplpipelineBranchImpl* output, NSError* error)) handler {
    // verify the required parameter 'organisation' is set
    if (organisation == nil) {
        NSParameterAssert(organisation);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"organisation"] };
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

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/blue/rest/organizations/{organisation}/pipelines/{pipeline}/branches/{branch}/"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (organisation != nil) {
        pathParams[@"organisation"] = organisation;
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
                              responseType: @"SWGIojenkinsblueoceanrestimplpipelineBranchImpl*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGIojenkinsblueoceanrestimplpipelineBranchImpl*)data, error);
                                }
                            }];
}

///
/// 
/// Retrieve all branches details for an organisation pipeline
///  @param organisation Name of the organisation 
///
///  @param pipeline Name of the pipeline 
///
///  @returns SWGGetMultibranchPipeline*
///
-(NSURLSessionTask*) getPipelineBranchesByOrgWithOrganisation: (NSString*) organisation
    pipeline: (NSString*) pipeline
    completionHandler: (void (^)(SWGGetMultibranchPipeline* output, NSError* error)) handler {
    // verify the required parameter 'organisation' is set
    if (organisation == nil) {
        NSParameterAssert(organisation);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"organisation"] };
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

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/blue/rest/organizations/{organisation}/pipelines/{pipeline}/branches"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (organisation != nil) {
        pathParams[@"organisation"] = organisation;
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
                              responseType: @"SWGGetMultibranchPipeline*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGGetMultibranchPipeline*)data, error);
                                }
                            }];
}

///
/// 
/// Retrieve pipeline details for an organisation
///  @param organisation Name of the organisation 
///
///  @param pipeline Name of the pipeline 
///
///  @returns SWGSwaggyjenkinsPipeline*
///
-(NSURLSessionTask*) getPipelineByOrgWithOrganisation: (NSString*) organisation
    pipeline: (NSString*) pipeline
    completionHandler: (void (^)(SWGSwaggyjenkinsPipeline* output, NSError* error)) handler {
    // verify the required parameter 'organisation' is set
    if (organisation == nil) {
        NSParameterAssert(organisation);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"organisation"] };
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

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/blue/rest/organizations/{organisation}/pipelines/{pipeline}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (organisation != nil) {
        pathParams[@"organisation"] = organisation;
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
                              responseType: @"SWGSwaggyjenkinsPipeline*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGSwaggyjenkinsPipeline*)data, error);
                                }
                            }];
}

///
/// 
/// Retrieve pipeline folder for an organisation
///  @param organisation Name of the organisation 
///
///  @param folder Name of the folder 
///
///  @returns SWGIojenkinsblueoceanserviceembeddedrestPipelineFolderImpl*
///
-(NSURLSessionTask*) getPipelineFolderByOrgWithOrganisation: (NSString*) organisation
    folder: (NSString*) folder
    completionHandler: (void (^)(SWGIojenkinsblueoceanserviceembeddedrestPipelineFolderImpl* output, NSError* error)) handler {
    // verify the required parameter 'organisation' is set
    if (organisation == nil) {
        NSParameterAssert(organisation);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"organisation"] };
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

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/blue/rest/organizations/{organisation}/pipelines/{folder}/"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (organisation != nil) {
        pathParams[@"organisation"] = organisation;
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
                              responseType: @"SWGIojenkinsblueoceanserviceembeddedrestPipelineFolderImpl*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGIojenkinsblueoceanserviceembeddedrestPipelineFolderImpl*)data, error);
                                }
                            }];
}

///
/// 
/// Retrieve pipeline details for an organisation folder
///  @param organisation Name of the organisation 
///
///  @param pipeline Name of the pipeline 
///
///  @param folder Name of the folder 
///
///  @returns SWGIojenkinsblueoceanserviceembeddedrestPipelineImpl*
///
-(NSURLSessionTask*) getPipelineFolderByOrg_1WithOrganisation: (NSString*) organisation
    pipeline: (NSString*) pipeline
    folder: (NSString*) folder
    completionHandler: (void (^)(SWGIojenkinsblueoceanserviceembeddedrestPipelineImpl* output, NSError* error)) handler {
    // verify the required parameter 'organisation' is set
    if (organisation == nil) {
        NSParameterAssert(organisation);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"organisation"] };
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

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/blue/rest/organizations/{organisation}/pipelines/{folder}/pipelines/{pipeline}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (organisation != nil) {
        pathParams[@"organisation"] = organisation;
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
                              responseType: @"SWGIojenkinsblueoceanserviceembeddedrestPipelineImpl*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGIojenkinsblueoceanserviceembeddedrestPipelineImpl*)data, error);
                                }
                            }];
}

///
/// 
/// Retrieve all pipelines details for an organisation
///  @param organisation Name of the organisation 
///
///  @returns SWGGetPipelines*
///
-(NSURLSessionTask*) getPipelinesByOrgWithOrganisation: (NSString*) organisation
    completionHandler: (void (^)(SWGGetPipelines* output, NSError* error)) handler {
    // verify the required parameter 'organisation' is set
    if (organisation == nil) {
        NSParameterAssert(organisation);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"organisation"] };
            NSError* error = [NSError errorWithDomain:kSWGBlueOceanApiErrorDomain code:kSWGBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/blue/rest/organizations/{organisation}/pipelines/"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (organisation != nil) {
        pathParams[@"organisation"] = organisation;
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
                              responseType: @"SWGGetPipelines*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGGetPipelines*)data, error);
                                }
                            }];
}

///
/// 
/// Retrieve user details for an organisation
///  @param organisation Name of the organisation 
///
///  @param user Name of the user 
///
///  @returns SWGSwaggyjenkinsUser*
///
-(NSURLSessionTask*) getUserWithOrganisation: (NSString*) organisation
    user: (NSString*) user
    completionHandler: (void (^)(SWGSwaggyjenkinsUser* output, NSError* error)) handler {
    // verify the required parameter 'organisation' is set
    if (organisation == nil) {
        NSParameterAssert(organisation);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"organisation"] };
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

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/blue/rest/organizations/{organisation}/users/{user}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (organisation != nil) {
        pathParams[@"organisation"] = organisation;
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
                              responseType: @"SWGSwaggyjenkinsUser*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGSwaggyjenkinsUser*)data, error);
                                }
                            }];
}

///
/// 
/// Retrieve users details for an organisation
///  @param organisation Name of the organisation 
///
///  @returns SWGSwaggyjenkinsUser*
///
-(NSURLSessionTask*) getUsersWithOrganisation: (NSString*) organisation
    completionHandler: (void (^)(SWGSwaggyjenkinsUser* output, NSError* error)) handler {
    // verify the required parameter 'organisation' is set
    if (organisation == nil) {
        NSParameterAssert(organisation);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"organisation"] };
            NSError* error = [NSError errorWithDomain:kSWGBlueOceanApiErrorDomain code:kSWGBlueOceanApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/blue/rest/organizations/{organisation}/users/"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (organisation != nil) {
        pathParams[@"organisation"] = organisation;
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
                              responseType: @"SWGSwaggyjenkinsUser*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGSwaggyjenkinsUser*)data, error);
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
/// Search for any resource details
///  @param q Query string 
///
///  @returns NSString*
///
-(NSURLSessionTask*) search_2WithQ: (NSString*) q
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



@end

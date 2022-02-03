#import <Foundation/Foundation.h>
#import "OAIComputerSet.h"
#import "OAIFreeStyleBuild.h"
#import "OAIFreeStyleProject.h"
#import "OAIHudson.h"
#import "OAIListView.h"
#import "OAIQueue.h"
#import "OAIApi.h"

/**
* Swaggy Jenkins
* Jenkins API clients generated from Swagger / Open API specification
*
* The version of the OpenAPI document: 1.1.1
* Contact: blah@cliffano.com
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/



@interface OAIRemoteAccessApi: NSObject <OAIApi>

extern NSString* kOAIRemoteAccessApiErrorDomain;
extern NSInteger kOAIRemoteAccessApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(OAIApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// 
/// Retrieve computer details
///
/// @param depth Recursion depth in response model
/// 
///  code:200 message:"Successfully retrieved computer details",
///  code:401 message:"Authentication failed - incorrect username and/or password",
///  code:403 message:"Jenkins requires authentication - please set username and password"
///
/// @return OAIComputerSet*
-(NSURLSessionTask*) getComputerWithDepth: (NSNumber*) depth
    completionHandler: (void (^)(OAIComputerSet* output, NSError* error)) handler;


/// 
/// Retrieve Jenkins details
///
/// 
///  code:200 message:"Successfully retrieved Jenkins details",
///  code:401 message:"Authentication failed - incorrect username and/or password",
///  code:403 message:"Jenkins requires authentication - please set username and password"
///
/// @return OAIHudson*
-(NSURLSessionTask*) getJenkinsWithCompletionHandler: 
    (void (^)(OAIHudson* output, NSError* error)) handler;


/// 
/// Retrieve job details
///
/// @param name Name of the job
/// 
///  code:200 message:"Successfully retrieved job details",
///  code:401 message:"Authentication failed - incorrect username and/or password",
///  code:403 message:"Jenkins requires authentication - please set username and password",
///  code:404 message:"Job cannot be found on Jenkins instance"
///
/// @return OAIFreeStyleProject*
-(NSURLSessionTask*) getJobWithName: (NSString*) name
    completionHandler: (void (^)(OAIFreeStyleProject* output, NSError* error)) handler;


/// 
/// Retrieve job configuration
///
/// @param name Name of the job
/// 
///  code:200 message:"Successfully retrieved job configuration in config.xml format",
///  code:401 message:"Authentication failed - incorrect username and/or password",
///  code:403 message:"Jenkins requires authentication - please set username and password",
///  code:404 message:"Job cannot be found on Jenkins instance"
///
/// @return NSString*
-(NSURLSessionTask*) getJobConfigWithName: (NSString*) name
    completionHandler: (void (^)(NSString* output, NSError* error)) handler;


/// 
/// Retrieve job's last build details
///
/// @param name Name of the job
/// 
///  code:200 message:"Successfully retrieved job's last build details",
///  code:401 message:"Authentication failed - incorrect username and/or password",
///  code:403 message:"Jenkins requires authentication - please set username and password",
///  code:404 message:"Job cannot be found on Jenkins instance"
///
/// @return OAIFreeStyleBuild*
-(NSURLSessionTask*) getJobLastBuildWithName: (NSString*) name
    completionHandler: (void (^)(OAIFreeStyleBuild* output, NSError* error)) handler;


/// 
/// Retrieve job's build progressive text output
///
/// @param name Name of the job
/// @param number Build number
/// @param start Starting point of progressive text output
/// 
///  code:200 message:"Successfully retrieved job's build progressive text output",
///  code:401 message:"Authentication failed - incorrect username and/or password",
///  code:403 message:"Jenkins requires authentication - please set username and password",
///  code:404 message:"Job cannot be found on Jenkins instance"
///
/// @return void
-(NSURLSessionTask*) getJobProgressiveTextWithName: (NSString*) name
    number: (NSString*) number
    start: (NSString*) start
    completionHandler: (void (^)(NSError* error)) handler;


/// 
/// Retrieve queue details
///
/// 
///  code:200 message:"Successfully retrieved queue details",
///  code:401 message:"Authentication failed - incorrect username and/or password",
///  code:403 message:"Jenkins requires authentication - please set username and password"
///
/// @return OAIQueue*
-(NSURLSessionTask*) getQueueWithCompletionHandler: 
    (void (^)(OAIQueue* output, NSError* error)) handler;


/// 
/// Retrieve queued item details
///
/// @param number Queue number
/// 
///  code:200 message:"Successfully retrieved queued item details",
///  code:401 message:"Authentication failed - incorrect username and/or password",
///  code:403 message:"Jenkins requires authentication - please set username and password"
///
/// @return OAIQueue*
-(NSURLSessionTask*) getQueueItemWithNumber: (NSString*) number
    completionHandler: (void (^)(OAIQueue* output, NSError* error)) handler;


/// 
/// Retrieve view details
///
/// @param name Name of the view
/// 
///  code:200 message:"Successfully retrieved view details",
///  code:401 message:"Authentication failed - incorrect username and/or password",
///  code:403 message:"Jenkins requires authentication - please set username and password",
///  code:404 message:"View cannot be found on Jenkins instance"
///
/// @return OAIListView*
-(NSURLSessionTask*) getViewWithName: (NSString*) name
    completionHandler: (void (^)(OAIListView* output, NSError* error)) handler;


/// 
/// Retrieve view configuration
///
/// @param name Name of the view
/// 
///  code:200 message:"Successfully retrieved view configuration in config.xml format",
///  code:401 message:"Authentication failed - incorrect username and/or password",
///  code:403 message:"Jenkins requires authentication - please set username and password",
///  code:404 message:"View cannot be found on Jenkins instance"
///
/// @return NSString*
-(NSURLSessionTask*) getViewConfigWithName: (NSString*) name
    completionHandler: (void (^)(NSString* output, NSError* error)) handler;


/// 
/// Retrieve Jenkins headers
///
/// 
///  code:200 message:"Successfully retrieved Jenkins headers",
///  code:401 message:"Authentication failed - incorrect username and/or password",
///  code:403 message:"Jenkins requires authentication - please set username and password"
///
/// @return void
-(NSURLSessionTask*) headJenkinsWithCompletionHandler: 
    (void (^)(NSError* error)) handler;


/// 
/// Create a new job using job configuration, or copied from an existing job
///
/// @param name Name of the new job
/// @param from Existing job to copy from (optional)
/// @param mode Set to &#39;copy&#39; for copying an existing job (optional)
/// @param jenkinsCrumb CSRF protection token (optional)
/// @param contentType Content type header application/xml (optional)
/// @param body Job configuration in config.xml format (optional)
/// 
///  code:200 message:"Successfully created a new job",
///  code:400 message:"An error has occurred - error message is embedded inside the HTML response",
///  code:401 message:"Authentication failed - incorrect username and/or password",
///  code:403 message:"Jenkins requires authentication - please set username and password"
///
/// @return void
-(NSURLSessionTask*) postCreateItemWithName: (NSString*) name
    from: (NSString*) from
    mode: (NSString*) mode
    jenkinsCrumb: (NSString*) jenkinsCrumb
    contentType: (NSString*) contentType
    body: (NSString*) body
    completionHandler: (void (^)(NSError* error)) handler;


/// 
/// Create a new view using view configuration
///
/// @param name Name of the new view
/// @param jenkinsCrumb CSRF protection token (optional)
/// @param contentType Content type header application/xml (optional)
/// @param body View configuration in config.xml format (optional)
/// 
///  code:200 message:"Successfully created the view",
///  code:400 message:"An error has occurred - error message is embedded inside the HTML response",
///  code:401 message:"Authentication failed - incorrect username and/or password",
///  code:403 message:"Jenkins requires authentication - please set username and password"
///
/// @return void
-(NSURLSessionTask*) postCreateViewWithName: (NSString*) name
    jenkinsCrumb: (NSString*) jenkinsCrumb
    contentType: (NSString*) contentType
    body: (NSString*) body
    completionHandler: (void (^)(NSError* error)) handler;


/// 
/// Build a job
///
/// @param name Name of the job
/// @param json 
/// @param token  (optional)
/// @param jenkinsCrumb CSRF protection token (optional)
/// 
///  code:200 message:"Successfully built the job (backward compatibility for older versions of Jenkins)",
///  code:201 message:"Successfully built the job",
///  code:401 message:"Authentication failed - incorrect username and/or password",
///  code:403 message:"Jenkins requires authentication - please set username and password",
///  code:404 message:"Job cannot be found on Jenkins instance"
///
/// @return void
-(NSURLSessionTask*) postJobBuildWithName: (NSString*) name
    json: (NSString*) json
    token: (NSString*) token
    jenkinsCrumb: (NSString*) jenkinsCrumb
    completionHandler: (void (^)(NSError* error)) handler;


/// 
/// Update job configuration
///
/// @param name Name of the job
/// @param body Job configuration in config.xml format
/// @param jenkinsCrumb CSRF protection token (optional)
/// 
///  code:200 message:"Successfully retrieved job configuration in config.xml format",
///  code:400 message:"An error has occurred - error message is embedded inside the HTML response",
///  code:401 message:"Authentication failed - incorrect username and/or password",
///  code:403 message:"Jenkins requires authentication - please set username and password",
///  code:404 message:"Job cannot be found on Jenkins instance"
///
/// @return void
-(NSURLSessionTask*) postJobConfigWithName: (NSString*) name
    body: (NSString*) body
    jenkinsCrumb: (NSString*) jenkinsCrumb
    completionHandler: (void (^)(NSError* error)) handler;


/// 
/// Delete a job
///
/// @param name Name of the job
/// @param jenkinsCrumb CSRF protection token (optional)
/// 
///  code:200 message:"Successfully deleted the job",
///  code:401 message:"Authentication failed - incorrect username and/or password",
///  code:403 message:"Jenkins requires authentication - please set username and password",
///  code:404 message:"Job cannot be found on Jenkins instance"
///
/// @return void
-(NSURLSessionTask*) postJobDeleteWithName: (NSString*) name
    jenkinsCrumb: (NSString*) jenkinsCrumb
    completionHandler: (void (^)(NSError* error)) handler;


/// 
/// Disable a job
///
/// @param name Name of the job
/// @param jenkinsCrumb CSRF protection token (optional)
/// 
///  code:200 message:"Successfully disabled the job",
///  code:401 message:"Authentication failed - incorrect username and/or password",
///  code:403 message:"Jenkins requires authentication - please set username and password",
///  code:404 message:"Job cannot be found on Jenkins instance"
///
/// @return void
-(NSURLSessionTask*) postJobDisableWithName: (NSString*) name
    jenkinsCrumb: (NSString*) jenkinsCrumb
    completionHandler: (void (^)(NSError* error)) handler;


/// 
/// Enable a job
///
/// @param name Name of the job
/// @param jenkinsCrumb CSRF protection token (optional)
/// 
///  code:200 message:"Successfully enabled the job",
///  code:401 message:"Authentication failed - incorrect username and/or password",
///  code:403 message:"Jenkins requires authentication - please set username and password",
///  code:404 message:"Job cannot be found on Jenkins instance"
///
/// @return void
-(NSURLSessionTask*) postJobEnableWithName: (NSString*) name
    jenkinsCrumb: (NSString*) jenkinsCrumb
    completionHandler: (void (^)(NSError* error)) handler;


/// 
/// Stop a job
///
/// @param name Name of the job
/// @param jenkinsCrumb CSRF protection token (optional)
/// 
///  code:200 message:"Successfully stopped the job",
///  code:401 message:"Authentication failed - incorrect username and/or password",
///  code:403 message:"Jenkins requires authentication - please set username and password",
///  code:404 message:"Job cannot be found on Jenkins instance"
///
/// @return void
-(NSURLSessionTask*) postJobLastBuildStopWithName: (NSString*) name
    jenkinsCrumb: (NSString*) jenkinsCrumb
    completionHandler: (void (^)(NSError* error)) handler;


/// 
/// Update view configuration
///
/// @param name Name of the view
/// @param body View configuration in config.xml format
/// @param jenkinsCrumb CSRF protection token (optional)
/// 
///  code:200 message:"Successfully updated view configuration",
///  code:400 message:"An error has occurred - error message is embedded inside the HTML response",
///  code:401 message:"Authentication failed - incorrect username and/or password",
///  code:403 message:"Jenkins requires authentication - please set username and password",
///  code:404 message:"View cannot be found on Jenkins instance"
///
/// @return void
-(NSURLSessionTask*) postViewConfigWithName: (NSString*) name
    body: (NSString*) body
    jenkinsCrumb: (NSString*) jenkinsCrumb
    completionHandler: (void (^)(NSError* error)) handler;



@end

#import <Foundation/Foundation.h>
#import "OAIObject.h"

/**
* Swaggy Jenkins
* Jenkins API clients generated from Swagger / Open API specification
*
* OpenAPI spec version: 1.1.1
* Contact: blah@cliffano.com
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/


#import "OAIPipelineBranchesitemlatestRun.h"
#import "OAIPipelineBranchesitempullRequest.h"
@protocol OAIPipelineBranchesitemlatestRun;
@class OAIPipelineBranchesitemlatestRun;
@protocol OAIPipelineBranchesitempullRequest;
@class OAIPipelineBranchesitempullRequest;



@protocol OAIPipelineBranchesitem
@end

@interface OAIPipelineBranchesitem : OAIObject


@property(nonatomic) NSString* displayName;

@property(nonatomic) NSNumber* estimatedDurationInMillis;

@property(nonatomic) NSString* name;

@property(nonatomic) NSNumber* weatherScore;

@property(nonatomic) OAIPipelineBranchesitemlatestRun* latestRun;

@property(nonatomic) NSString* organization;

@property(nonatomic) OAIPipelineBranchesitempullRequest* pullRequest;

@property(nonatomic) NSNumber* totalNumberOfPullRequests;

@property(nonatomic) NSString* _class;

@end

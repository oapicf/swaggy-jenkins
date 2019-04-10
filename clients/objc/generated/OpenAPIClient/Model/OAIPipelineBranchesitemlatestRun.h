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





@protocol OAIPipelineBranchesitemlatestRun
@end

@interface OAIPipelineBranchesitemlatestRun : OAIObject


@property(nonatomic) NSNumber* durationInMillis;

@property(nonatomic) NSNumber* estimatedDurationInMillis;

@property(nonatomic) NSString* enQueueTime;

@property(nonatomic) NSString* endTime;

@property(nonatomic) NSString* _id;

@property(nonatomic) NSString* organization;

@property(nonatomic) NSString* pipeline;

@property(nonatomic) NSString* result;

@property(nonatomic) NSString* runSummary;

@property(nonatomic) NSString* startTime;

@property(nonatomic) NSString* state;

@property(nonatomic) NSString* type;

@property(nonatomic) NSString* commitId;

@property(nonatomic) NSString* _class;

@end

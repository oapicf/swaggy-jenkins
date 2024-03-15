#import <Foundation/Foundation.h>
#import "OAIObject.h"

/**
* Swaggy Jenkins
* Jenkins API clients generated from Swagger / Open API specification
*
* The version of the OpenAPI document: 2.0.1-pre.0
* Contact: blah+oapicf@cliffano.com
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/


#import "OAIPipelineActivityartifacts.h"
@protocol OAIPipelineActivityartifacts;
@class OAIPipelineActivityartifacts;



@protocol OAIPipelineActivity
@end

@interface OAIPipelineActivity : OAIObject


@property(nonatomic) NSString* _class;

@property(nonatomic) NSArray<OAIPipelineActivityartifacts>* artifacts;

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

@end

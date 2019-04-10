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


#import "OAICauseAction.h"
#import "OAIEmptyChangeLogSet.h"
@protocol OAICauseAction;
@class OAICauseAction;
@protocol OAIEmptyChangeLogSet;
@class OAIEmptyChangeLogSet;



@protocol OAIFreeStyleBuild
@end

@interface OAIFreeStyleBuild : OAIObject


@property(nonatomic) NSString* _class;

@property(nonatomic) NSNumber* number;

@property(nonatomic) NSString* url;

@property(nonatomic) NSArray<OAICauseAction>* actions;

@property(nonatomic) NSNumber* building;

@property(nonatomic) NSString* _description;

@property(nonatomic) NSString* displayName;

@property(nonatomic) NSNumber* duration;

@property(nonatomic) NSNumber* estimatedDuration;

@property(nonatomic) NSString* executor;

@property(nonatomic) NSString* fullDisplayName;

@property(nonatomic) NSString* _id;

@property(nonatomic) NSNumber* keepLog;

@property(nonatomic) NSNumber* queueId;

@property(nonatomic) NSString* result;

@property(nonatomic) NSNumber* timestamp;

@property(nonatomic) NSString* builtOn;

@property(nonatomic) OAIEmptyChangeLogSet* changeSet;

@end

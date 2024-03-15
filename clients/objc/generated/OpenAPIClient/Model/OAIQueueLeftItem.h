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


#import "OAICauseAction.h"
#import "OAIFreeStyleBuild.h"
#import "OAIFreeStyleProject.h"
@protocol OAICauseAction;
@class OAICauseAction;
@protocol OAIFreeStyleBuild;
@class OAIFreeStyleBuild;
@protocol OAIFreeStyleProject;
@class OAIFreeStyleProject;



@protocol OAIQueueLeftItem
@end

@interface OAIQueueLeftItem : OAIObject


@property(nonatomic) NSString* _class;

@property(nonatomic) NSArray<OAICauseAction>* actions;

@property(nonatomic) NSNumber* blocked;

@property(nonatomic) NSNumber* buildable;

@property(nonatomic) NSNumber* _id;

@property(nonatomic) NSNumber* inQueueSince;

@property(nonatomic) NSString* params;

@property(nonatomic) NSNumber* stuck;

@property(nonatomic) OAIFreeStyleProject* task;

@property(nonatomic) NSString* url;

@property(nonatomic) NSString* why;

@property(nonatomic) NSNumber* cancelled;

@property(nonatomic) OAIFreeStyleBuild* executable;

@end

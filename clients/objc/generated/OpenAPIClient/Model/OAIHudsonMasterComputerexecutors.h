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


#import "OAIFreeStyleBuild.h"
@protocol OAIFreeStyleBuild;
@class OAIFreeStyleBuild;



@protocol OAIHudsonMasterComputerexecutors
@end

@interface OAIHudsonMasterComputerexecutors : OAIObject


@property(nonatomic) OAIFreeStyleBuild* currentExecutable;

@property(nonatomic) NSNumber* idle;

@property(nonatomic) NSNumber* likelyStuck;

@property(nonatomic) NSNumber* number;

@property(nonatomic) NSNumber* progress;

@property(nonatomic) NSString* _class;

@end

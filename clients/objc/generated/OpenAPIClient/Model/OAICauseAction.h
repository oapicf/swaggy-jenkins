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


#import "OAICauseUserIdCause.h"
@protocol OAICauseUserIdCause;
@class OAICauseUserIdCause;



@protocol OAICauseAction
@end

@interface OAICauseAction : OAIObject


@property(nonatomic) NSString* _class;

@property(nonatomic) NSArray<OAICauseUserIdCause>* causes;

@end

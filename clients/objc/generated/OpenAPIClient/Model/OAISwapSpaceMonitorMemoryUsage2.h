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





@protocol OAISwapSpaceMonitorMemoryUsage2
@end

@interface OAISwapSpaceMonitorMemoryUsage2 : OAIObject


@property(nonatomic) NSString* _class;

@property(nonatomic) NSNumber* availablePhysicalMemory;

@property(nonatomic) NSNumber* availableSwapSpace;

@property(nonatomic) NSNumber* totalPhysicalMemory;

@property(nonatomic) NSNumber* totalSwapSpace;

@end

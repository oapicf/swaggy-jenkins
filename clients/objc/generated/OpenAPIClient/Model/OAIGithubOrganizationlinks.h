#import <Foundation/Foundation.h>
#import "OAIObject.h"

/**
* Swaggy Jenkins
* Jenkins API clients generated from Swagger / Open API specification
*
* The version of the OpenAPI document: 1.1.2-pre.0
* Contact: blah@cliffano.com
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/


#import "OAILink.h"
@protocol OAILink;
@class OAILink;



@protocol OAIGithubOrganizationlinks
@end

@interface OAIGithubOrganizationlinks : OAIObject


@property(nonatomic) OAILink* repositories;

@property(nonatomic) OAILink* self;

@property(nonatomic) NSString* _class;

@end

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


#import "OAIGithubRepositorylinks.h"
#import "OAIGithubRepositorypermissions.h"
@protocol OAIGithubRepositorylinks;
@class OAIGithubRepositorylinks;
@protocol OAIGithubRepositorypermissions;
@class OAIGithubRepositorypermissions;



@protocol OAIGithubRepository
@end

@interface OAIGithubRepository : OAIObject


@property(nonatomic) NSString* _class;

@property(nonatomic) OAIGithubRepositorylinks* links;

@property(nonatomic) NSString* defaultBranch;

@property(nonatomic) NSString* _description;

@property(nonatomic) NSString* name;

@property(nonatomic) OAIGithubRepositorypermissions* permissions;

@property(nonatomic) NSNumber* private;

@property(nonatomic) NSString* fullName;

@end

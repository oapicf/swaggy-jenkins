#import "SWGFreeStyleBuild.h"

@implementation SWGFreeStyleBuild

- (instancetype)init {
  self = [super init];
  if (self) {
    // initialize property's default value, if any
    
  }
  return self;
}


/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper {
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"class": @"_class", @"number": @"number", @"url": @"url", @"actions": @"actions", @"building": @"building", @"_description": @"description", @"displayName": @"displayName", @"duration": @"duration", @"estimatedDuration": @"estimatedDuration", @"executor": @"executor", @"fullDisplayName": @"fullDisplayName", @"_id": @"id", @"keepLog": @"keepLog", @"queueId": @"queueId", @"result": @"result", @"timestamp": @"timestamp", @"builtOn": @"builtOn", @"changeSet": @"changeSet" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"class", @"number", @"url", @"actions", @"building", @"_description", @"displayName", @"duration", @"estimatedDuration", @"executor", @"fullDisplayName", @"_id", @"keepLog", @"queueId", @"result", @"timestamp", @"builtOn", @"changeSet"];
  return [optionalProperties containsObject:propertyName];
}

@end

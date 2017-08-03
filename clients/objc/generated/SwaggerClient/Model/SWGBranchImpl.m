#import "SWGBranchImpl.h"

@implementation SWGBranchImpl

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"class": @"_class", @"displayName": @"displayName", @"estimatedDurationInMillis": @"estimatedDurationInMillis", @"fullDisplayName": @"fullDisplayName", @"fullName": @"fullName", @"name": @"name", @"organization": @"organization", @"parameters": @"parameters", @"permissions": @"permissions", @"weatherScore": @"weatherScore", @"pullRequest": @"pullRequest", @"links": @"_links", @"latestRun": @"latestRun" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"class", @"displayName", @"estimatedDurationInMillis", @"fullDisplayName", @"fullName", @"name", @"organization", @"parameters", @"permissions", @"weatherScore", @"pullRequest", @"links", @"latestRun"];
  return [optionalProperties containsObject:propertyName];
}

@end

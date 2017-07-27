#import "SWGGetPipelineBranchesitem.h"

@implementation SWGGetPipelineBranchesitem

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"displayName": @"displayName", @"estimatedDurationInMillis": @"estimatedDurationInMillis", @"name": @"name", @"weatherScore": @"weatherScore", @"latestRun": @"latestRun", @"organization": @"organization", @"pullRequest": @"pullRequest", @"totalNumberOfPullRequests": @"totalNumberOfPullRequests", @"class": @"_class" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"displayName", @"estimatedDurationInMillis", @"name", @"weatherScore", @"latestRun", @"organization", @"pullRequest", @"totalNumberOfPullRequests", @"class"];
  return [optionalProperties containsObject:propertyName];
}

@end

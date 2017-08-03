#import "SWGGithubContent.h"

@implementation SWGGithubContent

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"name": @"name", @"sha": @"sha", @"class": @"_class", @"repo": @"repo", @"size": @"size", @"owner": @"owner", @"path": @"path", @"base64Data": @"base64Data" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"name", @"sha", @"class", @"repo", @"size", @"owner", @"path", @"base64Data"];
  return [optionalProperties containsObject:propertyName];
}

@end

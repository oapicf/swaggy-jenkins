#import "SWGGithubRepository.h"

@implementation SWGGithubRepository

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"class": @"_class", @"links": @"_links", @"defaultBranch": @"defaultBranch", @"_description": @"description", @"name": @"name", @"permissions": @"permissions", @"private": @"private", @"fullName": @"fullName" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"class", @"links", @"defaultBranch", @"_description", @"name", @"permissions", @"private", @"fullName"];
  return [optionalProperties containsObject:propertyName];
}

@end

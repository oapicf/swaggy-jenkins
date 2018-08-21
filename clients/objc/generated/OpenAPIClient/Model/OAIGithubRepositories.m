#import "OAIGithubRepositories.h"

@implementation OAIGithubRepositories

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_class": @"_class", @"links": @"_links", @"items": @"items", @"lastPage": @"lastPage", @"nextPage": @"nextPage", @"pageSize": @"pageSize" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_class", @"links", @"items", @"lastPage", @"nextPage", @"pageSize"];
  return [optionalProperties containsObject:propertyName];
}

@end

#import "OAIPipelineRunNode.h"

@implementation OAIPipelineRunNode

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_class": @"_class", @"displayName": @"displayName", @"durationInMillis": @"durationInMillis", @"edges": @"edges", @"_id": @"id", @"result": @"result", @"startTime": @"startTime", @"state": @"state" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_class", @"displayName", @"durationInMillis", @"edges", @"_id", @"result", @"startTime", @"state"];
  return [optionalProperties containsObject:propertyName];
}

@end

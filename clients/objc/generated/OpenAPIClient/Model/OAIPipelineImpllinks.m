#import "OAIPipelineImpllinks.h"

@implementation OAIPipelineImpllinks

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"runs": @"runs", @"self": @"self", @"queue": @"queue", @"actions": @"actions", @"_class": @"_class" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"runs", @"self", @"queue", @"actions", @"_class"];
  return [optionalProperties containsObject:propertyName];
}

@end

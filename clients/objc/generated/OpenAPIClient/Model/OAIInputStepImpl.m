#import "OAIInputStepImpl.h"

@implementation OAIInputStepImpl

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_class": @"_class", @"links": @"_links", @"_id": @"id", @"message": @"message", @"ok": @"ok", @"parameters": @"parameters", @"submitter": @"submitter" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_class", @"links", @"_id", @"message", @"ok", @"parameters", @"submitter"];
  return [optionalProperties containsObject:propertyName];
}

@end

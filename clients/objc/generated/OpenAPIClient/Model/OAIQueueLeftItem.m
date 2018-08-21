#import "OAIQueueLeftItem.h"

@implementation OAIQueueLeftItem

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_class": @"_class", @"actions": @"actions", @"blocked": @"blocked", @"buildable": @"buildable", @"_id": @"id", @"inQueueSince": @"inQueueSince", @"params": @"params", @"stuck": @"stuck", @"task": @"task", @"url": @"url", @"why": @"why", @"cancelled": @"cancelled", @"executable": @"executable" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_class", @"actions", @"blocked", @"buildable", @"_id", @"inQueueSince", @"params", @"stuck", @"task", @"url", @"why", @"cancelled", @"executable"];
  return [optionalProperties containsObject:propertyName];
}

@end

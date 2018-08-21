#import "OAISwapSpaceMonitorMemoryUsage2.h"

@implementation OAISwapSpaceMonitorMemoryUsage2

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_class": @"_class", @"availablePhysicalMemory": @"availablePhysicalMemory", @"availableSwapSpace": @"availableSwapSpace", @"totalPhysicalMemory": @"totalPhysicalMemory", @"totalSwapSpace": @"totalSwapSpace" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_class", @"availablePhysicalMemory", @"availableSwapSpace", @"totalPhysicalMemory", @"totalSwapSpace"];
  return [optionalProperties containsObject:propertyName];
}

@end

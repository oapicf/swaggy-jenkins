#import "SWGHudsonnodeMonitorsSwapSpaceMonitorMemoryUsage2.h"

@implementation SWGHudsonnodeMonitorsSwapSpaceMonitorMemoryUsage2

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"class": @"_class", @"availablePhysicalMemory": @"availablePhysicalMemory", @"availableSwapSpace": @"availableSwapSpace", @"totalPhysicalMemory": @"totalPhysicalMemory", @"totalSwapSpace": @"totalSwapSpace" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"class", @"availablePhysicalMemory", @"availableSwapSpace", @"totalPhysicalMemory", @"totalSwapSpace"];
  return [optionalProperties containsObject:propertyName];
}

@end

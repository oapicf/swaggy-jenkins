#import "SWGHudsonMasterComputermonitorData.h"

@implementation SWGHudsonMasterComputermonitorData

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"hudsonNodeMonitorsSwapSpaceMonitor": @"hudson.node_monitors.SwapSpaceMonitor", @"hudsonNodeMonitorsTemporarySpaceMonitor": @"hudson.node_monitors.TemporarySpaceMonitor", @"hudsonNodeMonitorsDiskSpaceMonitor": @"hudson.node_monitors.DiskSpaceMonitor", @"hudsonNodeMonitorsArchitectureMonitor": @"hudson.node_monitors.ArchitectureMonitor", @"hudsonNodeMonitorsResponseTimeMonitor": @"hudson.node_monitors.ResponseTimeMonitor", @"hudsonNodeMonitorsClockMonitor": @"hudson.node_monitors.ClockMonitor", @"class": @"_class" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"hudsonNodeMonitorsSwapSpaceMonitor", @"hudsonNodeMonitorsTemporarySpaceMonitor", @"hudsonNodeMonitorsDiskSpaceMonitor", @"hudsonNodeMonitorsArchitectureMonitor", @"hudsonNodeMonitorsResponseTimeMonitor", @"hudsonNodeMonitorsClockMonitor", @"class"];
  return [optionalProperties containsObject:propertyName];
}

@end

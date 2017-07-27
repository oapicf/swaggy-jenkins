#import "SWGHudsonmodelHudsonMasterComputer.h"

@implementation SWGHudsonmodelHudsonMasterComputer

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"class": @"_class", @"displayName": @"displayName", @"executors": @"executors", @"icon": @"icon", @"iconClassName": @"iconClassName", @"idle": @"idle", @"jnlpAgent": @"jnlpAgent", @"launchSupported": @"launchSupported", @"loadStatistics": @"loadStatistics", @"manualLaunchAllowed": @"manualLaunchAllowed", @"monitorData": @"monitorData", @"numExecutors": @"numExecutors", @"offline": @"offline", @"offlineCause": @"offlineCause", @"offlineCauseReason": @"offlineCauseReason", @"temporarilyOffline": @"temporarilyOffline" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"class", @"displayName", @"executors", @"icon", @"iconClassName", @"idle", @"jnlpAgent", @"launchSupported", @"loadStatistics", @"manualLaunchAllowed", @"monitorData", @"numExecutors", @"offline", @"offlineCause", @"offlineCauseReason", @"temporarilyOffline"];
  return [optionalProperties containsObject:propertyName];
}

@end

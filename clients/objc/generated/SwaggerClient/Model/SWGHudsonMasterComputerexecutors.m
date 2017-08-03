#import "SWGHudsonMasterComputerexecutors.h"

@implementation SWGHudsonMasterComputerexecutors

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"currentExecutable": @"currentExecutable", @"idle": @"idle", @"likelyStuck": @"likelyStuck", @"number": @"number", @"progress": @"progress", @"class": @"_class" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"currentExecutable", @"idle", @"likelyStuck", @"number", @"progress", @"class"];
  return [optionalProperties containsObject:propertyName];
}

@end

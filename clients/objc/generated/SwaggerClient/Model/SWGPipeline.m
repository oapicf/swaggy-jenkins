#import "SWGPipeline.h"

@implementation SWGPipeline

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"class": @"_class", @"organization": @"organization", @"name": @"name", @"displayName": @"displayName", @"fullName": @"fullName", @"weatherScore": @"weatherScore", @"estimatedDurationInMillis": @"estimatedDurationInMillis", @"latestRun": @"latestRun" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"class", @"organization", @"name", @"displayName", @"fullName", @"weatherScore", @"estimatedDurationInMillis", @"latestRun"];
  return [optionalProperties containsObject:propertyName];
}

@end

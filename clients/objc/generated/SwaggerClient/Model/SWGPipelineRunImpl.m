#import "SWGPipelineRunImpl.h"

@implementation SWGPipelineRunImpl

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"class": @"_class", @"links": @"_links", @"durationInMillis": @"durationInMillis", @"enQueueTime": @"enQueueTime", @"endTime": @"endTime", @"estimatedDurationInMillis": @"estimatedDurationInMillis", @"_id": @"id", @"organization": @"organization", @"pipeline": @"pipeline", @"result": @"result", @"runSummary": @"runSummary", @"startTime": @"startTime", @"state": @"state", @"type": @"type", @"commitId": @"commitId" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"class", @"links", @"durationInMillis", @"enQueueTime", @"endTime", @"estimatedDurationInMillis", @"_id", @"organization", @"pipeline", @"result", @"runSummary", @"startTime", @"state", @"type", @"commitId"];
  return [optionalProperties containsObject:propertyName];
}

@end

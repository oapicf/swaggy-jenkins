#import "SWGHudsonmodelFreeStyleProject.h"

@implementation SWGHudsonmodelFreeStyleProject

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"class": @"_class", @"name": @"name", @"url": @"url", @"color": @"color", @"actions": @"actions", @"_description": @"description", @"displayName": @"displayName", @"displayNameOrNull": @"displayNameOrNull", @"fullDisplayName": @"fullDisplayName", @"fullName": @"fullName", @"buildable": @"buildable", @"builds": @"builds", @"firstBuild": @"firstBuild", @"healthReport": @"healthReport", @"inQueue": @"inQueue", @"keepDependencies": @"keepDependencies", @"lastBuild": @"lastBuild", @"lastCompletedBuild": @"lastCompletedBuild", @"lastFailedBuild": @"lastFailedBuild", @"lastStableBuild": @"lastStableBuild", @"lastSuccessfulBuild": @"lastSuccessfulBuild", @"lastUnstableBuild": @"lastUnstableBuild", @"lastUnsuccessfulBuild": @"lastUnsuccessfulBuild", @"nextBuildNumber": @"nextBuildNumber", @"queueItem": @"queueItem", @"concurrentBuild": @"concurrentBuild", @"scm": @"scm" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"class", @"name", @"url", @"color", @"actions", @"_description", @"displayName", @"displayNameOrNull", @"fullDisplayName", @"fullName", @"buildable", @"builds", @"firstBuild", @"healthReport", @"inQueue", @"keepDependencies", @"lastBuild", @"lastCompletedBuild", @"lastFailedBuild", @"lastStableBuild", @"lastSuccessfulBuild", @"lastUnstableBuild", @"lastUnsuccessfulBuild", @"nextBuildNumber", @"queueItem", @"concurrentBuild", @"scm"];
  return [optionalProperties containsObject:propertyName];
}

@end

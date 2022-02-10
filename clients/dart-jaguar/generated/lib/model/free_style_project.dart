import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/null_scm.dart';

import 'package:openapi/model/free_style_build.dart';

import 'package:openapi/model/free_style_projectactions.dart';

import 'package:openapi/model/free_style_projecthealth_report.dart';

part 'free_style_project.jser.dart';

class FreeStyleProject {
  
  @Alias('_class', isNullable: false,  )
  final String class_;
  
  @Alias('name', isNullable: false,  )
  final String name;
  
  @Alias('url', isNullable: false,  )
  final String url;
  
  @Alias('color', isNullable: false,  )
  final String color;
  
  @Alias('actions', isNullable: false,  )
  final List<FreeStyleProjectactions> actions;
  
  @Alias('description', isNullable: false,  )
  final String description;
  
  @Alias('displayName', isNullable: false,  )
  final String displayName;
  
  @Alias('displayNameOrNull', isNullable: false,  )
  final String displayNameOrNull;
  
  @Alias('fullDisplayName', isNullable: false,  )
  final String fullDisplayName;
  
  @Alias('fullName', isNullable: false,  )
  final String fullName;
  
  @Alias('buildable', isNullable: false,  )
  final bool buildable;
  
  @Alias('builds', isNullable: false,  )
  final List<FreeStyleBuild> builds;
  
  @Alias('firstBuild', isNullable: false,  )
  final FreeStyleBuild firstBuild;
  
  @Alias('healthReport', isNullable: false,  )
  final List<FreeStyleProjecthealthReport> healthReport;
  
  @Alias('inQueue', isNullable: false,  )
  final bool inQueue;
  
  @Alias('keepDependencies', isNullable: false,  )
  final bool keepDependencies;
  
  @Alias('lastBuild', isNullable: false,  )
  final FreeStyleBuild lastBuild;
  
  @Alias('lastCompletedBuild', isNullable: false,  )
  final FreeStyleBuild lastCompletedBuild;
  
  @Alias('lastFailedBuild', isNullable: false,  )
  final String lastFailedBuild;
  
  @Alias('lastStableBuild', isNullable: false,  )
  final FreeStyleBuild lastStableBuild;
  
  @Alias('lastSuccessfulBuild', isNullable: false,  )
  final FreeStyleBuild lastSuccessfulBuild;
  
  @Alias('lastUnstableBuild', isNullable: false,  )
  final String lastUnstableBuild;
  
  @Alias('lastUnsuccessfulBuild', isNullable: false,  )
  final String lastUnsuccessfulBuild;
  
  @Alias('nextBuildNumber', isNullable: false,  )
  final int nextBuildNumber;
  
  @Alias('queueItem', isNullable: false,  )
  final String queueItem;
  
  @Alias('concurrentBuild', isNullable: false,  )
  final bool concurrentBuild;
  
  @Alias('scm', isNullable: false,  )
  final NullSCM scm;
  

  FreeStyleProject(
      

{
     this.class_ = null,  
     this.name = null,  
     this.url = null,  
     this.color = null,  
     this.actions = const [],  
     this.description = null,  
     this.displayName = null,  
     this.displayNameOrNull = null,  
     this.fullDisplayName = null,  
     this.fullName = null,  
     this.buildable = null,  
     this.builds = const [],  
     this.firstBuild = null,  
     this.healthReport = const [],  
     this.inQueue = null,  
     this.keepDependencies = null,  
     this.lastBuild = null,  
     this.lastCompletedBuild = null,  
     this.lastFailedBuild = null,  
     this.lastStableBuild = null,  
     this.lastSuccessfulBuild = null,  
     this.lastUnstableBuild = null,  
     this.lastUnsuccessfulBuild = null,  
     this.nextBuildNumber = null,  
     this.queueItem = null,  
     this.concurrentBuild = null,  
     this.scm = null 
    
    }
  );

  @override
  String toString() {
    return 'FreeStyleProject[class_=$class_, name=$name, url=$url, color=$color, actions=$actions, description=$description, displayName=$displayName, displayNameOrNull=$displayNameOrNull, fullDisplayName=$fullDisplayName, fullName=$fullName, buildable=$buildable, builds=$builds, firstBuild=$firstBuild, healthReport=$healthReport, inQueue=$inQueue, keepDependencies=$keepDependencies, lastBuild=$lastBuild, lastCompletedBuild=$lastCompletedBuild, lastFailedBuild=$lastFailedBuild, lastStableBuild=$lastStableBuild, lastSuccessfulBuild=$lastSuccessfulBuild, lastUnstableBuild=$lastUnstableBuild, lastUnsuccessfulBuild=$lastUnsuccessfulBuild, nextBuildNumber=$nextBuildNumber, queueItem=$queueItem, concurrentBuild=$concurrentBuild, scm=$scm, ]';
  }
}

@GenSerializer(nullableFields: true)
class FreeStyleProjectSerializer extends Serializer<FreeStyleProject> with _$FreeStyleProjectSerializer {

}


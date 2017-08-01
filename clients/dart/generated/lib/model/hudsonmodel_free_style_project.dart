part of swagger.api;


@Entity()
class HudsonmodelFreeStyleProject {
  
  @Property(name: '_class')
  String _class = null;
  

  @Property(name: 'name')
  String name = null;
  

  @Property(name: 'url')
  String url = null;
  

  @Property(name: 'color')
  String color = null;
  

  @Property(name: 'actions')
  List<HudsonmodelFreeStyleProjectactions> actions = [];
  

  @Property(name: 'description')
  String description = null;
  

  @Property(name: 'displayName')
  String displayName = null;
  

  @Property(name: 'displayNameOrNull')
  String displayNameOrNull = null;
  

  @Property(name: 'fullDisplayName')
  String fullDisplayName = null;
  

  @Property(name: 'fullName')
  String fullName = null;
  

  @Property(name: 'buildable')
  bool buildable = null;
  

  @Property(name: 'builds')
  List<HudsonmodelFreeStyleBuild> builds = [];
  

  @Property(name: 'firstBuild')
  HudsonmodelFreeStyleBuild firstBuild = null;
  

  @Property(name: 'healthReport')
  List<HudsonmodelFreeStyleProjecthealthReport> healthReport = [];
  

  @Property(name: 'inQueue')
  bool inQueue = null;
  

  @Property(name: 'keepDependencies')
  bool keepDependencies = null;
  

  @Property(name: 'lastBuild')
  HudsonmodelFreeStyleBuild lastBuild = null;
  

  @Property(name: 'lastCompletedBuild')
  HudsonmodelFreeStyleBuild lastCompletedBuild = null;
  

  @Property(name: 'lastFailedBuild')
  String lastFailedBuild = null;
  

  @Property(name: 'lastStableBuild')
  HudsonmodelFreeStyleBuild lastStableBuild = null;
  

  @Property(name: 'lastSuccessfulBuild')
  HudsonmodelFreeStyleBuild lastSuccessfulBuild = null;
  

  @Property(name: 'lastUnstableBuild')
  String lastUnstableBuild = null;
  

  @Property(name: 'lastUnsuccessfulBuild')
  String lastUnsuccessfulBuild = null;
  

  @Property(name: 'nextBuildNumber')
  int nextBuildNumber = null;
  

  @Property(name: 'queueItem')
  String queueItem = null;
  

  @Property(name: 'concurrentBuild')
  bool concurrentBuild = null;
  

  @Property(name: 'scm')
  HudsonscmNullSCM scm = null;
  
  HudsonmodelFreeStyleProject();

  @override
  String toString()  {
    return 'HudsonmodelFreeStyleProject[_class=$_class, name=$name, url=$url, color=$color, actions=$actions, description=$description, displayName=$displayName, displayNameOrNull=$displayNameOrNull, fullDisplayName=$fullDisplayName, fullName=$fullName, buildable=$buildable, builds=$builds, firstBuild=$firstBuild, healthReport=$healthReport, inQueue=$inQueue, keepDependencies=$keepDependencies, lastBuild=$lastBuild, lastCompletedBuild=$lastCompletedBuild, lastFailedBuild=$lastFailedBuild, lastStableBuild=$lastStableBuild, lastSuccessfulBuild=$lastSuccessfulBuild, lastUnstableBuild=$lastUnstableBuild, lastUnsuccessfulBuild=$lastUnsuccessfulBuild, nextBuildNumber=$nextBuildNumber, queueItem=$queueItem, concurrentBuild=$concurrentBuild, scm=$scm, ]';
  }

}


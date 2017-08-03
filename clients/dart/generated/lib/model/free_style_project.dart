part of swagger.api;


@Entity()
class FreeStyleProject {
  
  @Property(name: '_class')
  String _class = null;
  

  @Property(name: 'name')
  String name = null;
  

  @Property(name: 'url')
  String url = null;
  

  @Property(name: 'color')
  String color = null;
  

  @Property(name: 'actions')
  List<FreeStyleProjectactions> actions = [];
  

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
  List<FreeStyleBuild> builds = [];
  

  @Property(name: 'firstBuild')
  FreeStyleBuild firstBuild = null;
  

  @Property(name: 'healthReport')
  List<FreeStyleProjecthealthReport> healthReport = [];
  

  @Property(name: 'inQueue')
  bool inQueue = null;
  

  @Property(name: 'keepDependencies')
  bool keepDependencies = null;
  

  @Property(name: 'lastBuild')
  FreeStyleBuild lastBuild = null;
  

  @Property(name: 'lastCompletedBuild')
  FreeStyleBuild lastCompletedBuild = null;
  

  @Property(name: 'lastFailedBuild')
  String lastFailedBuild = null;
  

  @Property(name: 'lastStableBuild')
  FreeStyleBuild lastStableBuild = null;
  

  @Property(name: 'lastSuccessfulBuild')
  FreeStyleBuild lastSuccessfulBuild = null;
  

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
  NullSCM scm = null;
  
  FreeStyleProject();

  @override
  String toString()  {
    return 'FreeStyleProject[_class=$_class, name=$name, url=$url, color=$color, actions=$actions, description=$description, displayName=$displayName, displayNameOrNull=$displayNameOrNull, fullDisplayName=$fullDisplayName, fullName=$fullName, buildable=$buildable, builds=$builds, firstBuild=$firstBuild, healthReport=$healthReport, inQueue=$inQueue, keepDependencies=$keepDependencies, lastBuild=$lastBuild, lastCompletedBuild=$lastCompletedBuild, lastFailedBuild=$lastFailedBuild, lastStableBuild=$lastStableBuild, lastSuccessfulBuild=$lastSuccessfulBuild, lastUnstableBuild=$lastUnstableBuild, lastUnsuccessfulBuild=$lastUnsuccessfulBuild, nextBuildNumber=$nextBuildNumber, queueItem=$queueItem, concurrentBuild=$concurrentBuild, scm=$scm, ]';
  }

}


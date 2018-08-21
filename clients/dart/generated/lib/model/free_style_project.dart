part of openapi.api;

class FreeStyleProject {
  
  String class_ = null;
  
  String name = null;
  
  String url = null;
  
  String color = null;
  
  List<FreeStyleProjectactions> actions = [];
  
  String description = null;
  
  String displayName = null;
  
  String displayNameOrNull = null;
  
  String fullDisplayName = null;
  
  String fullName = null;
  
  bool buildable = null;
  
  List<FreeStyleBuild> builds = [];
  
  FreeStyleBuild firstBuild = null;
  
  List<FreeStyleProjecthealthReport> healthReport = [];
  
  bool inQueue = null;
  
  bool keepDependencies = null;
  
  FreeStyleBuild lastBuild = null;
  
  FreeStyleBuild lastCompletedBuild = null;
  
  String lastFailedBuild = null;
  
  FreeStyleBuild lastStableBuild = null;
  
  FreeStyleBuild lastSuccessfulBuild = null;
  
  String lastUnstableBuild = null;
  
  String lastUnsuccessfulBuild = null;
  
  int nextBuildNumber = null;
  
  String queueItem = null;
  
  bool concurrentBuild = null;
  
  NullSCM scm = null;
  FreeStyleProject();

  @override
  String toString() {
    return 'FreeStyleProject[class_=$class_, name=$name, url=$url, color=$color, actions=$actions, description=$description, displayName=$displayName, displayNameOrNull=$displayNameOrNull, fullDisplayName=$fullDisplayName, fullName=$fullName, buildable=$buildable, builds=$builds, firstBuild=$firstBuild, healthReport=$healthReport, inQueue=$inQueue, keepDependencies=$keepDependencies, lastBuild=$lastBuild, lastCompletedBuild=$lastCompletedBuild, lastFailedBuild=$lastFailedBuild, lastStableBuild=$lastStableBuild, lastSuccessfulBuild=$lastSuccessfulBuild, lastUnstableBuild=$lastUnstableBuild, lastUnsuccessfulBuild=$lastUnsuccessfulBuild, nextBuildNumber=$nextBuildNumber, queueItem=$queueItem, concurrentBuild=$concurrentBuild, scm=$scm, ]';
  }

  FreeStyleProject.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    class_ = json['_class'];
    name = json['name'];
    url = json['url'];
    color = json['color'];
    actions = FreeStyleProjectactions.listFromJson(json['actions']);
    description = json['description'];
    displayName = json['displayName'];
    displayNameOrNull = json['displayNameOrNull'];
    fullDisplayName = json['fullDisplayName'];
    fullName = json['fullName'];
    buildable = json['buildable'];
    builds = FreeStyleBuild.listFromJson(json['builds']);
    firstBuild = new FreeStyleBuild.fromJson(json['firstBuild']);
    healthReport = FreeStyleProjecthealthReport.listFromJson(json['healthReport']);
    inQueue = json['inQueue'];
    keepDependencies = json['keepDependencies'];
    lastBuild = new FreeStyleBuild.fromJson(json['lastBuild']);
    lastCompletedBuild = new FreeStyleBuild.fromJson(json['lastCompletedBuild']);
    lastFailedBuild = json['lastFailedBuild'];
    lastStableBuild = new FreeStyleBuild.fromJson(json['lastStableBuild']);
    lastSuccessfulBuild = new FreeStyleBuild.fromJson(json['lastSuccessfulBuild']);
    lastUnstableBuild = json['lastUnstableBuild'];
    lastUnsuccessfulBuild = json['lastUnsuccessfulBuild'];
    nextBuildNumber = json['nextBuildNumber'];
    queueItem = json['queueItem'];
    concurrentBuild = json['concurrentBuild'];
    scm = new NullSCM.fromJson(json['scm']);
  }

  Map<String, dynamic> toJson() {
    return {
      '_class': class_,
      'name': name,
      'url': url,
      'color': color,
      'actions': actions,
      'description': description,
      'displayName': displayName,
      'displayNameOrNull': displayNameOrNull,
      'fullDisplayName': fullDisplayName,
      'fullName': fullName,
      'buildable': buildable,
      'builds': builds,
      'firstBuild': firstBuild,
      'healthReport': healthReport,
      'inQueue': inQueue,
      'keepDependencies': keepDependencies,
      'lastBuild': lastBuild,
      'lastCompletedBuild': lastCompletedBuild,
      'lastFailedBuild': lastFailedBuild,
      'lastStableBuild': lastStableBuild,
      'lastSuccessfulBuild': lastSuccessfulBuild,
      'lastUnstableBuild': lastUnstableBuild,
      'lastUnsuccessfulBuild': lastUnsuccessfulBuild,
      'nextBuildNumber': nextBuildNumber,
      'queueItem': queueItem,
      'concurrentBuild': concurrentBuild,
      'scm': scm
    };
  }

  static List<FreeStyleProject> listFromJson(List<dynamic> json) {
    return json == null ? new List<FreeStyleProject>() : json.map((value) => new FreeStyleProject.fromJson(value)).toList();
  }

  static Map<String, FreeStyleProject> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, FreeStyleProject>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new FreeStyleProject.fromJson(value));
    }
    return map;
  }
}


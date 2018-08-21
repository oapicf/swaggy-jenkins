part of openapi.api;

class MultibranchPipeline {
  
  String displayName = null;
  
  int estimatedDurationInMillis = null;
  
  String latestRun = null;
  
  String name = null;
  
  String organization = null;
  
  int weatherScore = null;
  
  List<String> branchNames = [];
  
  int numberOfFailingBranches = null;
  
  int numberOfFailingPullRequests = null;
  
  int numberOfSuccessfulBranches = null;
  
  int numberOfSuccessfulPullRequests = null;
  
  int totalNumberOfBranches = null;
  
  int totalNumberOfPullRequests = null;
  
  String class_ = null;
  MultibranchPipeline();

  @override
  String toString() {
    return 'MultibranchPipeline[displayName=$displayName, estimatedDurationInMillis=$estimatedDurationInMillis, latestRun=$latestRun, name=$name, organization=$organization, weatherScore=$weatherScore, branchNames=$branchNames, numberOfFailingBranches=$numberOfFailingBranches, numberOfFailingPullRequests=$numberOfFailingPullRequests, numberOfSuccessfulBranches=$numberOfSuccessfulBranches, numberOfSuccessfulPullRequests=$numberOfSuccessfulPullRequests, totalNumberOfBranches=$totalNumberOfBranches, totalNumberOfPullRequests=$totalNumberOfPullRequests, class_=$class_, ]';
  }

  MultibranchPipeline.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    displayName = json['displayName'];
    estimatedDurationInMillis = json['estimatedDurationInMillis'];
    latestRun = json['latestRun'];
    name = json['name'];
    organization = json['organization'];
    weatherScore = json['weatherScore'];
    branchNames = (json['branchNames'] as List).map((item) => item as String).toList();
    numberOfFailingBranches = json['numberOfFailingBranches'];
    numberOfFailingPullRequests = json['numberOfFailingPullRequests'];
    numberOfSuccessfulBranches = json['numberOfSuccessfulBranches'];
    numberOfSuccessfulPullRequests = json['numberOfSuccessfulPullRequests'];
    totalNumberOfBranches = json['totalNumberOfBranches'];
    totalNumberOfPullRequests = json['totalNumberOfPullRequests'];
    class_ = json['_class'];
  }

  Map<String, dynamic> toJson() {
    return {
      'displayName': displayName,
      'estimatedDurationInMillis': estimatedDurationInMillis,
      'latestRun': latestRun,
      'name': name,
      'organization': organization,
      'weatherScore': weatherScore,
      'branchNames': branchNames,
      'numberOfFailingBranches': numberOfFailingBranches,
      'numberOfFailingPullRequests': numberOfFailingPullRequests,
      'numberOfSuccessfulBranches': numberOfSuccessfulBranches,
      'numberOfSuccessfulPullRequests': numberOfSuccessfulPullRequests,
      'totalNumberOfBranches': totalNumberOfBranches,
      'totalNumberOfPullRequests': totalNumberOfPullRequests,
      '_class': class_
    };
  }

  static List<MultibranchPipeline> listFromJson(List<dynamic> json) {
    return json == null ? new List<MultibranchPipeline>() : json.map((value) => new MultibranchPipeline.fromJson(value)).toList();
  }

  static Map<String, MultibranchPipeline> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, MultibranchPipeline>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new MultibranchPipeline.fromJson(value));
    }
    return map;
  }
}


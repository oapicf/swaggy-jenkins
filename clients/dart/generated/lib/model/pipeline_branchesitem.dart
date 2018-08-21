part of openapi.api;

class PipelineBranchesitem {
  
  String displayName = null;
  
  int estimatedDurationInMillis = null;
  
  String name = null;
  
  int weatherScore = null;
  
  PipelineBranchesitemlatestRun latestRun = null;
  
  String organization = null;
  
  PipelineBranchesitempullRequest pullRequest = null;
  
  int totalNumberOfPullRequests = null;
  
  String class_ = null;
  PipelineBranchesitem();

  @override
  String toString() {
    return 'PipelineBranchesitem[displayName=$displayName, estimatedDurationInMillis=$estimatedDurationInMillis, name=$name, weatherScore=$weatherScore, latestRun=$latestRun, organization=$organization, pullRequest=$pullRequest, totalNumberOfPullRequests=$totalNumberOfPullRequests, class_=$class_, ]';
  }

  PipelineBranchesitem.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    displayName = json['displayName'];
    estimatedDurationInMillis = json['estimatedDurationInMillis'];
    name = json['name'];
    weatherScore = json['weatherScore'];
    latestRun = new PipelineBranchesitemlatestRun.fromJson(json['latestRun']);
    organization = json['organization'];
    pullRequest = new PipelineBranchesitempullRequest.fromJson(json['pullRequest']);
    totalNumberOfPullRequests = json['totalNumberOfPullRequests'];
    class_ = json['_class'];
  }

  Map<String, dynamic> toJson() {
    return {
      'displayName': displayName,
      'estimatedDurationInMillis': estimatedDurationInMillis,
      'name': name,
      'weatherScore': weatherScore,
      'latestRun': latestRun,
      'organization': organization,
      'pullRequest': pullRequest,
      'totalNumberOfPullRequests': totalNumberOfPullRequests,
      '_class': class_
    };
  }

  static List<PipelineBranchesitem> listFromJson(List<dynamic> json) {
    return json == null ? new List<PipelineBranchesitem>() : json.map((value) => new PipelineBranchesitem.fromJson(value)).toList();
  }

  static Map<String, PipelineBranchesitem> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PipelineBranchesitem>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PipelineBranchesitem.fromJson(value));
    }
    return map;
  }
}


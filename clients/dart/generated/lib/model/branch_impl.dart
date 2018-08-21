part of openapi.api;

class BranchImpl {
  
  String class_ = null;
  
  String displayName = null;
  
  int estimatedDurationInMillis = null;
  
  String fullDisplayName = null;
  
  String fullName = null;
  
  String name = null;
  
  String organization = null;
  
  List<StringParameterDefinition> parameters = [];
  
  BranchImplpermissions permissions = null;
  
  int weatherScore = null;
  
  String pullRequest = null;
  
  BranchImpllinks links = null;
  
  PipelineRunImpl latestRun = null;
  BranchImpl();

  @override
  String toString() {
    return 'BranchImpl[class_=$class_, displayName=$displayName, estimatedDurationInMillis=$estimatedDurationInMillis, fullDisplayName=$fullDisplayName, fullName=$fullName, name=$name, organization=$organization, parameters=$parameters, permissions=$permissions, weatherScore=$weatherScore, pullRequest=$pullRequest, links=$links, latestRun=$latestRun, ]';
  }

  BranchImpl.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    class_ = json['_class'];
    displayName = json['displayName'];
    estimatedDurationInMillis = json['estimatedDurationInMillis'];
    fullDisplayName = json['fullDisplayName'];
    fullName = json['fullName'];
    name = json['name'];
    organization = json['organization'];
    parameters = StringParameterDefinition.listFromJson(json['parameters']);
    permissions = new BranchImplpermissions.fromJson(json['permissions']);
    weatherScore = json['weatherScore'];
    pullRequest = json['pullRequest'];
    links = new BranchImpllinks.fromJson(json['_links']);
    latestRun = new PipelineRunImpl.fromJson(json['latestRun']);
  }

  Map<String, dynamic> toJson() {
    return {
      '_class': class_,
      'displayName': displayName,
      'estimatedDurationInMillis': estimatedDurationInMillis,
      'fullDisplayName': fullDisplayName,
      'fullName': fullName,
      'name': name,
      'organization': organization,
      'parameters': parameters,
      'permissions': permissions,
      'weatherScore': weatherScore,
      'pullRequest': pullRequest,
      '_links': links,
      'latestRun': latestRun
    };
  }

  static List<BranchImpl> listFromJson(List<dynamic> json) {
    return json == null ? new List<BranchImpl>() : json.map((value) => new BranchImpl.fromJson(value)).toList();
  }

  static Map<String, BranchImpl> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, BranchImpl>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new BranchImpl.fromJson(value));
    }
    return map;
  }
}


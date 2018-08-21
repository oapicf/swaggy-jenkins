part of openapi.api;

class PipelineImpl {
  
  String class_ = null;
  
  String displayName = null;
  
  int estimatedDurationInMillis = null;
  
  String fullName = null;
  
  String latestRun = null;
  
  String name = null;
  
  String organization = null;
  
  int weatherScore = null;
  
  PipelineImpllinks links = null;
  PipelineImpl();

  @override
  String toString() {
    return 'PipelineImpl[class_=$class_, displayName=$displayName, estimatedDurationInMillis=$estimatedDurationInMillis, fullName=$fullName, latestRun=$latestRun, name=$name, organization=$organization, weatherScore=$weatherScore, links=$links, ]';
  }

  PipelineImpl.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    class_ = json['_class'];
    displayName = json['displayName'];
    estimatedDurationInMillis = json['estimatedDurationInMillis'];
    fullName = json['fullName'];
    latestRun = json['latestRun'];
    name = json['name'];
    organization = json['organization'];
    weatherScore = json['weatherScore'];
    links = new PipelineImpllinks.fromJson(json['_links']);
  }

  Map<String, dynamic> toJson() {
    return {
      '_class': class_,
      'displayName': displayName,
      'estimatedDurationInMillis': estimatedDurationInMillis,
      'fullName': fullName,
      'latestRun': latestRun,
      'name': name,
      'organization': organization,
      'weatherScore': weatherScore,
      '_links': links
    };
  }

  static List<PipelineImpl> listFromJson(List<dynamic> json) {
    return json == null ? new List<PipelineImpl>() : json.map((value) => new PipelineImpl.fromJson(value)).toList();
  }

  static Map<String, PipelineImpl> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PipelineImpl>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PipelineImpl.fromJson(value));
    }
    return map;
  }
}


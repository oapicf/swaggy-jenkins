part of openapi.api;

class Pipeline {
  
  String class_ = null;
  
  String organization = null;
  
  String name = null;
  
  String displayName = null;
  
  String fullName = null;
  
  int weatherScore = null;
  
  int estimatedDurationInMillis = null;
  
  PipelinelatestRun latestRun = null;
  Pipeline();

  @override
  String toString() {
    return 'Pipeline[class_=$class_, organization=$organization, name=$name, displayName=$displayName, fullName=$fullName, weatherScore=$weatherScore, estimatedDurationInMillis=$estimatedDurationInMillis, latestRun=$latestRun, ]';
  }

  Pipeline.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    class_ = json['_class'];
    organization = json['organization'];
    name = json['name'];
    displayName = json['displayName'];
    fullName = json['fullName'];
    weatherScore = json['weatherScore'];
    estimatedDurationInMillis = json['estimatedDurationInMillis'];
    latestRun = new PipelinelatestRun.fromJson(json['latestRun']);
  }

  Map<String, dynamic> toJson() {
    return {
      '_class': class_,
      'organization': organization,
      'name': name,
      'displayName': displayName,
      'fullName': fullName,
      'weatherScore': weatherScore,
      'estimatedDurationInMillis': estimatedDurationInMillis,
      'latestRun': latestRun
    };
  }

  static List<Pipeline> listFromJson(List<dynamic> json) {
    return json == null ? new List<Pipeline>() : json.map((value) => new Pipeline.fromJson(value)).toList();
  }

  static Map<String, Pipeline> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Pipeline>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Pipeline.fromJson(value));
    }
    return map;
  }
}


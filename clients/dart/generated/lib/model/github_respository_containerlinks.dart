part of openapi.api;

class GithubRespositoryContainerlinks {
  
  Link self = null;
  
  String class_ = null;
  GithubRespositoryContainerlinks();

  @override
  String toString() {
    return 'GithubRespositoryContainerlinks[self=$self, class_=$class_, ]';
  }

  GithubRespositoryContainerlinks.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    self = new Link.fromJson(json['self']);
    class_ = json['_class'];
  }

  Map<String, dynamic> toJson() {
    return {
      'self': self,
      '_class': class_
    };
  }

  static List<GithubRespositoryContainerlinks> listFromJson(List<dynamic> json) {
    return json == null ? new List<GithubRespositoryContainerlinks>() : json.map((value) => new GithubRespositoryContainerlinks.fromJson(value)).toList();
  }

  static Map<String, GithubRespositoryContainerlinks> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GithubRespositoryContainerlinks>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GithubRespositoryContainerlinks.fromJson(value));
    }
    return map;
  }
}


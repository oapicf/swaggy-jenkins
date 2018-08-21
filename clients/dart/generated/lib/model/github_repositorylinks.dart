part of openapi.api;

class GithubRepositorylinks {
  
  Link self = null;
  
  String class_ = null;
  GithubRepositorylinks();

  @override
  String toString() {
    return 'GithubRepositorylinks[self=$self, class_=$class_, ]';
  }

  GithubRepositorylinks.fromJson(Map<String, dynamic> json) {
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

  static List<GithubRepositorylinks> listFromJson(List<dynamic> json) {
    return json == null ? new List<GithubRepositorylinks>() : json.map((value) => new GithubRepositorylinks.fromJson(value)).toList();
  }

  static Map<String, GithubRepositorylinks> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GithubRepositorylinks>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GithubRepositorylinks.fromJson(value));
    }
    return map;
  }
}


part of openapi.api;

class GithubRepositorieslinks {
  
  Link self = null;
  
  String class_ = null;
  GithubRepositorieslinks();

  @override
  String toString() {
    return 'GithubRepositorieslinks[self=$self, class_=$class_, ]';
  }

  GithubRepositorieslinks.fromJson(Map<String, dynamic> json) {
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

  static List<GithubRepositorieslinks> listFromJson(List<dynamic> json) {
    return json == null ? new List<GithubRepositorieslinks>() : json.map((value) => new GithubRepositorieslinks.fromJson(value)).toList();
  }

  static Map<String, GithubRepositorieslinks> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GithubRepositorieslinks>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GithubRepositorieslinks.fromJson(value));
    }
    return map;
  }
}


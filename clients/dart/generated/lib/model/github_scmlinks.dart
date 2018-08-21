part of openapi.api;

class GithubScmlinks {
  
  Link self = null;
  
  String class_ = null;
  GithubScmlinks();

  @override
  String toString() {
    return 'GithubScmlinks[self=$self, class_=$class_, ]';
  }

  GithubScmlinks.fromJson(Map<String, dynamic> json) {
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

  static List<GithubScmlinks> listFromJson(List<dynamic> json) {
    return json == null ? new List<GithubScmlinks>() : json.map((value) => new GithubScmlinks.fromJson(value)).toList();
  }

  static Map<String, GithubScmlinks> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GithubScmlinks>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GithubScmlinks.fromJson(value));
    }
    return map;
  }
}


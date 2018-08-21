part of openapi.api;

class GithubOrganizationlinks {
  
  Link repositories = null;
  
  Link self = null;
  
  String class_ = null;
  GithubOrganizationlinks();

  @override
  String toString() {
    return 'GithubOrganizationlinks[repositories=$repositories, self=$self, class_=$class_, ]';
  }

  GithubOrganizationlinks.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    repositories = new Link.fromJson(json['repositories']);
    self = new Link.fromJson(json['self']);
    class_ = json['_class'];
  }

  Map<String, dynamic> toJson() {
    return {
      'repositories': repositories,
      'self': self,
      '_class': class_
    };
  }

  static List<GithubOrganizationlinks> listFromJson(List<dynamic> json) {
    return json == null ? new List<GithubOrganizationlinks>() : json.map((value) => new GithubOrganizationlinks.fromJson(value)).toList();
  }

  static Map<String, GithubOrganizationlinks> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GithubOrganizationlinks>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GithubOrganizationlinks.fromJson(value));
    }
    return map;
  }
}


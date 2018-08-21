part of openapi.api;

class GithubOrganization {
  
  String class_ = null;
  
  GithubOrganizationlinks links = null;
  
  bool jenkinsOrganizationPipeline = null;
  
  String name = null;
  GithubOrganization();

  @override
  String toString() {
    return 'GithubOrganization[class_=$class_, links=$links, jenkinsOrganizationPipeline=$jenkinsOrganizationPipeline, name=$name, ]';
  }

  GithubOrganization.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    class_ = json['_class'];
    links = new GithubOrganizationlinks.fromJson(json['_links']);
    jenkinsOrganizationPipeline = json['jenkinsOrganizationPipeline'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    return {
      '_class': class_,
      '_links': links,
      'jenkinsOrganizationPipeline': jenkinsOrganizationPipeline,
      'name': name
    };
  }

  static List<GithubOrganization> listFromJson(List<dynamic> json) {
    return json == null ? new List<GithubOrganization>() : json.map((value) => new GithubOrganization.fromJson(value)).toList();
  }

  static Map<String, GithubOrganization> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GithubOrganization>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GithubOrganization.fromJson(value));
    }
    return map;
  }
}


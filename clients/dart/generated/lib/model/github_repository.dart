part of openapi.api;

class GithubRepository {
  
  String class_ = null;
  
  GithubRepositorylinks links = null;
  
  String defaultBranch = null;
  
  String description = null;
  
  String name = null;
  
  GithubRepositorypermissions permissions = null;
  
  bool private = null;
  
  String fullName = null;
  GithubRepository();

  @override
  String toString() {
    return 'GithubRepository[class_=$class_, links=$links, defaultBranch=$defaultBranch, description=$description, name=$name, permissions=$permissions, private=$private, fullName=$fullName, ]';
  }

  GithubRepository.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    class_ = json['_class'];
    links = new GithubRepositorylinks.fromJson(json['_links']);
    defaultBranch = json['defaultBranch'];
    description = json['description'];
    name = json['name'];
    permissions = new GithubRepositorypermissions.fromJson(json['permissions']);
    private = json['private'];
    fullName = json['fullName'];
  }

  Map<String, dynamic> toJson() {
    return {
      '_class': class_,
      '_links': links,
      'defaultBranch': defaultBranch,
      'description': description,
      'name': name,
      'permissions': permissions,
      'private': private,
      'fullName': fullName
    };
  }

  static List<GithubRepository> listFromJson(List<dynamic> json) {
    return json == null ? new List<GithubRepository>() : json.map((value) => new GithubRepository.fromJson(value)).toList();
  }

  static Map<String, GithubRepository> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GithubRepository>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GithubRepository.fromJson(value));
    }
    return map;
  }
}


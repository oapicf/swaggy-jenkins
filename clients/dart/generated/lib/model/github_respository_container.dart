part of openapi.api;

class GithubRespositoryContainer {
  
  String class_ = null;
  
  GithubRespositoryContainerlinks links = null;
  
  GithubRepositories repositories = null;
  GithubRespositoryContainer();

  @override
  String toString() {
    return 'GithubRespositoryContainer[class_=$class_, links=$links, repositories=$repositories, ]';
  }

  GithubRespositoryContainer.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    class_ = json['_class'];
    links = new GithubRespositoryContainerlinks.fromJson(json['_links']);
    repositories = new GithubRepositories.fromJson(json['repositories']);
  }

  Map<String, dynamic> toJson() {
    return {
      '_class': class_,
      '_links': links,
      'repositories': repositories
    };
  }

  static List<GithubRespositoryContainer> listFromJson(List<dynamic> json) {
    return json == null ? new List<GithubRespositoryContainer>() : json.map((value) => new GithubRespositoryContainer.fromJson(value)).toList();
  }

  static Map<String, GithubRespositoryContainer> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GithubRespositoryContainer>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GithubRespositoryContainer.fromJson(value));
    }
    return map;
  }
}


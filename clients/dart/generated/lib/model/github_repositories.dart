part of openapi.api;

class GithubRepositories {
  
  String class_ = null;
  
  GithubRepositorieslinks links = null;
  
  List<GithubRepository> items = [];
  
  int lastPage = null;
  
  int nextPage = null;
  
  int pageSize = null;
  GithubRepositories();

  @override
  String toString() {
    return 'GithubRepositories[class_=$class_, links=$links, items=$items, lastPage=$lastPage, nextPage=$nextPage, pageSize=$pageSize, ]';
  }

  GithubRepositories.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    class_ = json['_class'];
    links = new GithubRepositorieslinks.fromJson(json['_links']);
    items = GithubRepository.listFromJson(json['items']);
    lastPage = json['lastPage'];
    nextPage = json['nextPage'];
    pageSize = json['pageSize'];
  }

  Map<String, dynamic> toJson() {
    return {
      '_class': class_,
      '_links': links,
      'items': items,
      'lastPage': lastPage,
      'nextPage': nextPage,
      'pageSize': pageSize
    };
  }

  static List<GithubRepositories> listFromJson(List<dynamic> json) {
    return json == null ? new List<GithubRepositories>() : json.map((value) => new GithubRepositories.fromJson(value)).toList();
  }

  static Map<String, GithubRepositories> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GithubRepositories>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GithubRepositories.fromJson(value));
    }
    return map;
  }
}


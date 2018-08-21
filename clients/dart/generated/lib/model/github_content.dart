part of openapi.api;

class GithubContent {
  
  String name = null;
  
  String sha = null;
  
  String class_ = null;
  
  String repo = null;
  
  int size = null;
  
  String owner = null;
  
  String path = null;
  
  String base64Data = null;
  GithubContent();

  @override
  String toString() {
    return 'GithubContent[name=$name, sha=$sha, class_=$class_, repo=$repo, size=$size, owner=$owner, path=$path, base64Data=$base64Data, ]';
  }

  GithubContent.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
    sha = json['sha'];
    class_ = json['_class'];
    repo = json['repo'];
    size = json['size'];
    owner = json['owner'];
    path = json['path'];
    base64Data = json['base64Data'];
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'sha': sha,
      '_class': class_,
      'repo': repo,
      'size': size,
      'owner': owner,
      'path': path,
      'base64Data': base64Data
    };
  }

  static List<GithubContent> listFromJson(List<dynamic> json) {
    return json == null ? new List<GithubContent>() : json.map((value) => new GithubContent.fromJson(value)).toList();
  }

  static Map<String, GithubContent> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GithubContent>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GithubContent.fromJson(value));
    }
    return map;
  }
}


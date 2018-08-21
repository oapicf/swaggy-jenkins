part of openapi.api;

class GithubFile {
  
  GithubContent content = null;
  
  String class_ = null;
  GithubFile();

  @override
  String toString() {
    return 'GithubFile[content=$content, class_=$class_, ]';
  }

  GithubFile.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    content = new GithubContent.fromJson(json['content']);
    class_ = json['_class'];
  }

  Map<String, dynamic> toJson() {
    return {
      'content': content,
      '_class': class_
    };
  }

  static List<GithubFile> listFromJson(List<dynamic> json) {
    return json == null ? new List<GithubFile>() : json.map((value) => new GithubFile.fromJson(value)).toList();
  }

  static Map<String, GithubFile> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GithubFile>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GithubFile.fromJson(value));
    }
    return map;
  }
}


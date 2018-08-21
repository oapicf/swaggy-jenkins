part of openapi.api;

class PipelineBranchesitempullRequest {
  
  PipelineBranchesitempullRequestlinks links = null;
  
  String author = null;
  
  String id = null;
  
  String title = null;
  
  String url = null;
  
  String class_ = null;
  PipelineBranchesitempullRequest();

  @override
  String toString() {
    return 'PipelineBranchesitempullRequest[links=$links, author=$author, id=$id, title=$title, url=$url, class_=$class_, ]';
  }

  PipelineBranchesitempullRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    links = new PipelineBranchesitempullRequestlinks.fromJson(json['_links']);
    author = json['author'];
    id = json['id'];
    title = json['title'];
    url = json['url'];
    class_ = json['_class'];
  }

  Map<String, dynamic> toJson() {
    return {
      '_links': links,
      'author': author,
      'id': id,
      'title': title,
      'url': url,
      '_class': class_
    };
  }

  static List<PipelineBranchesitempullRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<PipelineBranchesitempullRequest>() : json.map((value) => new PipelineBranchesitempullRequest.fromJson(value)).toList();
  }

  static Map<String, PipelineBranchesitempullRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PipelineBranchesitempullRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PipelineBranchesitempullRequest.fromJson(value));
    }
    return map;
  }
}


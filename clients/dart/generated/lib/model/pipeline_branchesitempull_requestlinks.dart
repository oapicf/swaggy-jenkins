part of openapi.api;

class PipelineBranchesitempullRequestlinks {
  
  String self = null;
  
  String class_ = null;
  PipelineBranchesitempullRequestlinks();

  @override
  String toString() {
    return 'PipelineBranchesitempullRequestlinks[self=$self, class_=$class_, ]';
  }

  PipelineBranchesitempullRequestlinks.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    self = json['self'];
    class_ = json['_class'];
  }

  Map<String, dynamic> toJson() {
    return {
      'self': self,
      '_class': class_
    };
  }

  static List<PipelineBranchesitempullRequestlinks> listFromJson(List<dynamic> json) {
    return json == null ? new List<PipelineBranchesitempullRequestlinks>() : json.map((value) => new PipelineBranchesitempullRequestlinks.fromJson(value)).toList();
  }

  static Map<String, PipelineBranchesitempullRequestlinks> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PipelineBranchesitempullRequestlinks>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PipelineBranchesitempullRequestlinks.fromJson(value));
    }
    return map;
  }
}


part of openapi.api;

class PipelineBranches {
  PipelineBranches();

  @override
  String toString() {
    return 'PipelineBranches[]';
  }

  PipelineBranches.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
    };
  }

  static List<PipelineBranches> listFromJson(List<dynamic> json) {
    return json == null ? new List<PipelineBranches>() : json.map((value) => new PipelineBranches.fromJson(value)).toList();
  }

  static Map<String, PipelineBranches> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PipelineBranches>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PipelineBranches.fromJson(value));
    }
    return map;
  }
}


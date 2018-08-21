part of openapi.api;

class PipelineRunNodes {
  PipelineRunNodes();

  @override
  String toString() {
    return 'PipelineRunNodes[]';
  }

  PipelineRunNodes.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
    };
  }

  static List<PipelineRunNodes> listFromJson(List<dynamic> json) {
    return json == null ? new List<PipelineRunNodes>() : json.map((value) => new PipelineRunNodes.fromJson(value)).toList();
  }

  static Map<String, PipelineRunNodes> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PipelineRunNodes>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PipelineRunNodes.fromJson(value));
    }
    return map;
  }
}

